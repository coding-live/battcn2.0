/*
Navicat MySQL Data Transfer

Source Server         : localhost-3306
Source Server Version : 50171
Source Host           : localhost:3306
Source Database       : battcn2

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2016-10-21 13:19:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sina_weibo
-- ----------------------------
DROP TABLE IF EXISTS `t_sina_weibo`;
CREATE TABLE `t_sina_weibo` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `blog` varchar(50) NOT NULL COMMENT '博主',
  `title` varchar(256) NOT NULL COMMENT '标题',
  `comment_id` varchar(56) DEFAULT NULL COMMENT '公共的微博ID',
  `comment_url` varchar(256) DEFAULT NULL COMMENT '用户微博地址',
  `user_card` varchar(56) DEFAULT NULL COMMENT ' 用户标示',
  `image` varchar(128) DEFAULT NULL COMMENT '微博用户的头像',
  `comment` varchar(2000) DEFAULT NULL COMMENT ' 微博用户的留言',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18814 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sina_weibo
-- ----------------------------
INSERT INTO `t_sina_weibo` VALUES ('1', '邓超', '从你的全世界路过', '4030167149657618', 'http://weibo.com/5750139296', 'id=5750139296', 'http://tva1.sinaimg.cn/crop.0.0.511.511.50/006h8ZUcjw8exqcqq3wofj30e70e8wej.jpg', '昏昏欲睡睡睡睡睡：对不起，不约', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('2', '邓超', '从你的全世界路过', '4030167523589907', 'http://weibo.com/5223714308', 'id=5223714308', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/005HwaIAjw8f7qn9fisj1j30yi0yi0vm.jpg', '带你賺票票的泽欧尼：先把上次的膜贴了再说翻翻我的微博 二十多岁是脱贫的不是脱单的', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('3', '邓超', '从你的全世界路过', '4030167338802669', 'http://weibo.com/5514880440', 'id=5514880440', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/0061dSkwjw8f7c4437fhbj30yi0yijw8.jpg', '真的是女儿不是儿子ii：评论蹭蹭的涨  看来热门又没戏了', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('4', '邓超', '从你的全世界路过', '4030167040591255', 'http://weibo.com/1914454263', 'id=1914454263', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/721c40f7jw8f73u55lsdrj20ku0ku3zr.jpg', '采咕咕的仙女姨母：滚', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('5', '邓超', '从你的全世界路过', '4030181838900565', 'http://weibo.com/dengchao', 'id=5187664653', 'http://tva4.sinaimg.cn/crop.0.0.638.638.50/005F4Uyxgw1ehlsromhx8j30hs0hs0w3.jpg', '邓超：为啥都要打我', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('6', '邓超', '从你的全世界路过', '4030167456359355', 'http://weibo.com/2283641825', 'id=2283641825', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/881d9be1jw8f7uavzj46sj20ku0kujsr.jpg', '睡不到杨幂人生还有什么意义：妖妖灵么，邓超叔叔又来骗人了', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('7', '邓超', '从你的全世界路过', '4030167481546905', 'http://weibo.com/2059777925', 'id=2059777925', 'http://tva1.sinaimg.cn/crop.0.0.512.512.50/7ac5b785jw8f3tya42pzhj20e80e8jrn.jpg', '林大状-：我可以帮你看会摊子', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('8', '邓超', '从你的全世界路过', '4030167137543171', 'http://weibo.com/3227895415', 'id=3227895415', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/c065c677jw8f7me9j446jj20ig0igmy5.jpg', '超ed哥：全世界只想你来爱我有一个小目标：我是一个不知名的群众演员，我很热爱演戏，但是能力有限，没有宣传团队，没有经纪人，如果有缘看到，能否给我几分钟，给我点个赞，顶顶我，我会努力的，谢谢大家 ！愿你温暖如初，深情永不被辜负', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('9', '邓超', '从你的全世界路过', '4030167078519661', 'http://weibo.com/5721207558', 'id=5721207558', 'http://tva1.sinaimg.cn/crop.2.0.1238.1238.50/006fbBrgjw8f6zxakk18kj30yi0yeju3.jpg', '科科的小迷妹MMMMM：超哥是脑残，同意赞我', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('10', '邓超', '从你的全世界路过', '4030167028140580', 'http://weibo.com/5234819861', 'id=5234819861', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/005IgLMpjw8f87eggitzwj30ro0rodha.jpg', '-李易埄：我坐好了 送我上去 谢谢', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('11', '邓超', '从你的全世界路过', '4031560472850112', 'http://weibo.com/1916184464', 'id=1916184464', 'http://tva2.sinaimg.cn/crop.0.1.510.510.50/7236a790jw8ev99jc7lqmj20e60e8q3h.jpg', '演员睿默：买了两本原著，看了三次电影，从首映晚上，看到了室外汽车影院。', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('12', '邓超', '从你的全世界路过', '4031560296281245', 'http://weibo.com/2415565735', 'id=2415565735', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/8ffa9ba7jw8f5nsevf1v1j20yi0yi40i.jpg', '鲍小姐cherry：超哥，你什么时候变得这么帅气！', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('13', '邓超', '从你的全世界路过', '4031559378070107', 'http://weibo.com/1960998937', 'id=1960998937', 'http://tva4.sinaimg.cn/crop.20.21.113.113.50/74e27819gw1f7pz9y4u1xj204f04emx6.jpg', '哟好大一只熊：好希望你们三兄弟一起上真人秀，又超哥在，一定很好玩！', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('14', '邓超', '从你的全世界路过', '4031558623399525', 'http://weibo.com/5688610103', 'id=5688610103', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006cYPlRjw8f4egmvx5d7j30ku0kut9b.jpg', '妖精酒久：超！', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('15', '邓超', '从你的全世界路过', '4031558400172550', 'http://weibo.com/2952715932', 'id=2952715932', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/affede9cjw1e8qgp5bmzyj2050050aa8.jpg', '矮油3147：还有岳云鹏啊，你俩组合一起绝配，呵呵，估计能好看，看好~', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('16', '邓超', '从你的全世界路过', '4031558220999806', 'http://weibo.com/5536870897', 'id=5536870897', 'http://tva1.sinaimg.cn/crop.0.0.498.498.50/0062I93jjw8f3e06hi2g0j30du0duq38.jpg', '璇姐霸气：七亿里面有我六亿', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('17', '邓超', '从你的全世界路过', '4031557981378572', 'http://weibo.com/6013641373', 'id=6013641373', 'http://tva3.sinaimg.cn/crop.0.15.750.750.50/006yYCPHjw8f7q333w07vj30ku0lp3zo.jpg', '洋毛毛sunny：套路出牌……可以帮你答应杨洋的求婚！', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('18', '邓超', '从你的全世界路过', '4031557905162019', 'http://weibo.com/2936323927', 'id=2936323927', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/af04bf57jw8f3sx9ymg09j20e80e8gmb.jpg', 'Mr_Dog先生：超哥woaini', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('19', '邓超', '从你的全世界路过', '4031557892577034', 'http://weibo.com/5769566305', 'id=5769566305', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006isvL3jw8f7gpnwzqj0j30ig0igweq.jpg', '晴天有彩虹的天空：', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('20', '邓超', '从你的全世界路过', '4031556776964294', 'http://weibo.com/5920080833', 'id=5920080833', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '苍忠匙嚎帽：贝美东褒若桓学逊昌', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('21', '邓超', '从你的全世界路过', '4031556370859808', 'http://weibo.com/5963738044', 'id=5963738044', 'http://tva1.sinaimg.cn/crop.0.1.750.750.50/006vBeHijw8f5fjx8xiorj30ku0kw74z.jpg', '勇敢无敌一直很安静_918：骗人的', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('22', '邓超', '从你的全世界路过', '4031556366227623', 'http://weibo.com/6014261345', 'id=6014261345', 'http://tva1.sinaimg.cn/crop.0.0.100.100.50/006z1e7fjw1f7ewl8mr13j302s02st8m.jpg', '转丈0负承全：图片评论', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('23', '邓超', '从你的全世界路过', '4031556064773727', 'http://weibo.com/1968278463', 'id=1968278463', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/75518bbfjw8f8ujaxh6f5j20ig0ig0ti.jpg', '缺瑜_：套路', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('24', '邓超', '从你的全世界路过', '4031556026315407', 'http://weibo.com/5915245491', 'id=5915245491', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5915245491：一点都不好啊。', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('25', '邓超', '从你的全世界路过', '4031555539974659', 'http://weibo.com/5657819755', 'id=5657819755', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006aTDnljw8f8v7a29bhmj30ro0rpjtu.jpg', '三年不散陪伴终生89818：加油', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('26', '邓超', '从你的全世界路过', '4031555250232413', 'http://weibo.com/2622356855', 'id=2622356855', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/9c4dfd77jw8ew4b9w9ucfj20ku0kuwf8.jpg', 'lydia李瑶：和特别喜欢的人，但是感觉没有未来的人，看了从你的世界路过，哭了，很应景', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('27', '邓超', '从你的全世界路过', '4031555002723962', 'http://weibo.com/5517436328', 'id=5517436328', 'http://tva4.sinaimg.cn/crop.0.0.1010.1010.50/0061oBewjw8f668bbh3faj30s20s2abz.jpg', 'M_LU-含：我想当你儿媳妇', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('28', '邓超', '从你的全世界路过', '4031554478599535', 'http://weibo.com/3807647495', 'id=3807647495', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/e2f41707jw8f7qqexu2izj20ro0rpjwf.jpg', '我爱卍和平：看了U从你的全世界路过感觉超哥演技果然6，在最后我以为幺鸡不会出来了呢，干脆全都路过好了，结果居然还出来了。。。', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('29', '邓超', '从你的全世界路过', '4031554424063099', 'http://weibo.com/boneyxie1029', 'id=1272557830', 'http://tva4.sinaimg.cn/crop.0.5.1536.1536.50/4bd9b106jw8f8pdqrirudj216o16ywh4.jpg', '虫圭虫圭虫圭虫圭虫圭：超爱你', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('30', '邓超', '从你的全世界路过', '4031553786852278', 'http://weibo.com/5833569927', 'id=5833569927', 'http://tva3.sinaimg.cn/crop.0.0.1006.1006.50/006mN41xjw8f5sg31v3hjj30ry0rywgh.jpg', '我不在她心z：', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('31', '邓超', '从你的全世界路过', '4031552842767528', 'http://weibo.com/5141960457', 'id=5141960457', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/005BZ8O5jw8f8tapnfvj4j30ku0kvab0.jpg', '爺-走路带风：啥时候能抽取啊', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('32', '邓超', '从你的全世界路过', '4031552814120631', 'http://weibo.com/3247649453', 'id=3247649453', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/c19332adjw8euasavwpk1j20yi0yiwhj.jpg', '东莞市鼎轩三维科技有限公司：吓得以为中奖了', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('33', '邓超', '从你的全世界路过', '4031552712719086', 'http://weibo.com/5869424119', 'id=5869424119', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006pdvkXjw8f7wdq2ful1j30ig0igmxz.jpg', '拾忆7Dreams：我帮你找儿媳妇(我怎么样)@M鹿M', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('34', '邓超', '从你的全世界路过', '4031551454711010', 'http://weibo.com/1814108245', 'id=1814108245', 'http://tva3.sinaimg.cn/crop.0.55.1425.1425.50/6c211855jw8f8k1i2gg0rj213l16o423.jpg', '夏花溪0：什么时候抽？我要做你媳妇，你同意吗？', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('35', '邓超', '从你的全世界路过', '4031549902514597', 'http://weibo.com/1874932033', 'id=1874932033', 'http://tva4.sinaimg.cn/crop.0.0.1125.1125.50/6fc13141jw8f8nf04plcbj20v90v9abj.jpg', 'Adela云小朵：我我我！选我', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('36', '邓超', '从你的全世界路过', '4031549709973661', 'http://weibo.com/5938446195', 'id=5938446195', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006tT78fjw1f47s3dqup4j305k05kglz.jpg', '黑暗司寇芝：#我们的约会#', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('37', '邓超', '从你的全世界路过', '4031549412830558', 'http://weibo.com/1954332073', 'id=1954332073', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/747cbda9jw1f4fpsghyjbj2050050weh.jpg', '爺是八零後：逗比逗比@邓超', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('38', '邓超', '从你的全世界路过', '4031549214771122', 'http://weibo.com/5073870336', 'id=5073870336', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '張紀桀：看看我兄弟的电影', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('39', '邓超', '从你的全世界路过', '4031549164704988', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('40', '邓超', '从你的全世界路过', '4031549148319407', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('41', '邓超', '从你的全世界路过', '4031548930157373', 'http://weibo.com/5885264818', 'id=5885264818', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006qhYe6jw8f7mj1a97jfj30ig0ig75h.jpg', '咩咩丶柚子：我洋不更博了，十天了你快帮忙劝劝', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('42', '邓超', '从你的全世界路过', '4031547726103009', 'http://weibo.com/3179066034', 'id=3179066034', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/bd7cb2b2jw8elhxzr1db4j20k00k0gmx.jpg', '小肉肉bady：我什么也为你做不了，因为……所以……，哈哈，但是我会支持你，希望新片可以赚7亿，我相信，会的。用我的小小能量转发一下。@邓超', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('43', '邓超', '从你的全世界路过', '4031547319222132', 'http://weibo.com/6037014671', 'id=6037014671', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006AyHinjw8f8g136crzsj30ig0iggmj.jpg', '划风小拽10101：回复@邓超:我要求超哥穿比基尼跳阿拉丁舞', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('44', '邓超', '从你的全世界路过', '4031547084524055', 'http://weibo.com/6037014671', 'id=6037014671', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006AyHinjw8f8g136crzsj30ig0iggmj.jpg', '划风小拽10101：回复@邓超:选我', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('45', '邓超', '从你的全世界路过', '4031547067571437', 'http://weibo.com/5824701398', 'id=5824701398', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/006mbQUKjw8f3ro299fygj30hs0hsdgu.jpg', 'kiss甜韾：回复@邓超:其实你也可怜……祝破8万吧……', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('46', '邓超', '从你的全世界路过', '4031546572359911', 'http://weibo.com/5824701398', 'id=5824701398', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/006mbQUKjw8f3ro299fygj30hs0hsdgu.jpg', 'kiss甜韾：回复@邓超:没事，不逗逼就行了', '2016-10-17 13:33:30');
INSERT INTO `t_sina_weibo` VALUES ('47', '邓超', '从你的全世界路过', '4031546304365817', 'http://weibo.com/5805913854', 'id=5805913854', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006kV1pQjw8f8t86mmmnjj30ig0ig75u.jpg', '没道理的Shirley：超哥最近这几天咋不发微博了 我们都还等着了', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('48', '邓超', '从你的全世界路过', '4031545431543698', 'http://weibo.com/5976726389', 'id=5976726389', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006wtJyJjw8f5uxr0nru0j30ro0rogmu.jpg', '云的晗鹿：我不介意帮你照顾儿子@邓超', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('49', '邓超', '从你的全世界路过', '4031545192418429', 'http://weibo.com/6040118445', 'id=6040118445', 'http://tva2.sinaimg.cn/default/images/default_avatar_female_50.gif', '美娇阳1987：不错！', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('50', '邓超', '从你的全世界路过', '4031544190584772', 'http://weibo.com/5763564847', 'id=5763564847', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006i3kvljw8f8olpkotkpj30ro0rpdif.jpg', 'Oliver5488：回复@一疑已毅-:haha', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('51', '邓超', '从你的全世界路过', '4031543511127067', 'http://weibo.com/5867760335', 'id=5867760335', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006p6wvJjw8f8uawoeulyj30ro0rpjue.jpg', '顾柔儿GRE：回复@初浩然0:有点懵逼，不知道你在说啥，看来叔叔咱们不是一个年代的人', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('52', '邓超', '从你的全世界路过', '4031542907525191', 'http://weibo.com/5924003902', 'id=5924003902', 'http://tva1.sinaimg.cn/crop.0.0.200.200.50/006sUw22jw1f3npg81ivlj305k05k748.jpg', '花花的小可乐1：[懒得理你]', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('53', '邓超', '从你的全世界路过', '4031542227816977', 'http://weibo.com/monkeylovecat', 'id=2010991413', 'http://tva1.sinaimg.cn/crop.0.0.640.640.50/77dd4b35jw8eh960woll1j20hs0hst9p.jpg', '吹猫罗：猪头追燕子车那段看得人心里真难受…', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('54', '邓超', '从你的全世界路过', '4031541522839994', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('55', '邓超', '从你的全世界路过', '4031541493449019', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('56', '邓超', '从你的全世界路过', '4031541464685934', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('57', '邓超', '从你的全世界路过', '4031541434603353', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('58', '邓超', '从你的全世界路过', '4031541342560578', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('59', '邓超', '从你的全世界路过', '4031541309487797', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('60', '邓超', '从你的全世界路过', '4031541267337362', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('61', '邓超', '从你的全世界路过', '4031541229526353', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('62', '邓超', '从你的全世界路过', '4031541199504318', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('63', '邓超', '从你的全世界路过', '4031541102995305', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('64', '邓超', '从你的全世界路过', '4031540830545229', 'http://weibo.com/5888647531', 'id=5888647531', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '殷志豪41511：@邓超    老邓头   电台情歌没办法下载', '2016-10-17 13:33:31');
INSERT INTO `t_sina_weibo` VALUES ('65', '邓超', '从你的全世界路过', '4031540503326795', 'http://weibo.com/5802847441', 'id=5802847441', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006kI9Hzjw8f757oy9h1gj30ro0rowg9.jpg', '苻泽咛：社会我超哥！', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('66', '邓超', '从你的全世界路过', '4031540449438575', 'http://weibo.com/3743153627', 'id=3743153627', 'http://tva1.sinaimg.cn/crop.0.108.440.440.50/df1bfddbjw8e7z38t0ewqj20c80i8gm3.jpg', '阿喵的蝴蝶梦：看了评论心疼超哥三秒，虽然超哥平易近人，但是玩笑还是不要太过，不是不开玩笑，是别过，互相尊重换来和谐社会多好', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('67', '邓超', '从你的全世界路过', '4031540193389305', 'http://weibo.com/3743153627', 'id=3743153627', 'http://tva1.sinaimg.cn/crop.0.108.440.440.50/df1bfddbjw8e7z38t0ewqj20c80i8gm3.jpg', '阿喵的蝴蝶梦：去看了，超哥演的很棒！！影片中的实力演技担当喜欢超哥', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('68', '邓超', '从你的全世界路过', '4031539975052603', 'http://weibo.com/5606995679', 'id=5606995679', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/0067snIbjw8f3w7yo6ujoj30ig0ig74p.jpg', 'lemon0and：你都不为我们做点什么 让我们怎么给你做', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('69', '邓超', '从你的全世界路过', '4031539723745652', 'http://weibo.com/5798478801', 'id=5798478801', 'http://tva2.sinaimg.cn/crop.0.1.1242.1242.50/006kpPdDjw8f5zrgx9t3ej30yi0ykwhi.jpg', '刘锦娟：超哥', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('70', '邓超', '从你的全世界路过', '4031539546904822', 'http://weibo.com/2672683751', 'id=2672683751', 'http://tva1.sinaimg.cn/crop.1.0.637.637.50/9f4deae7jw8f8834p7x97j20hs0hpaas.jpg', 'AHuan杨：我超哥的电影', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('71', '邓超', '从你的全世界路过', '4031539471581691', 'http://weibo.com/2921937843', 'id=2921937843', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/ae293bb3jw8el1qbt7gjfj20e80e8t91.jpg', '一个陈钦：', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('72', '邓超', '从你的全世界路过', '4031538796177860', 'http://weibo.com/6048723857', 'id=6048723857', 'http://tva4.sinaimg.cn/crop.0.0.498.498.50/006BlPodjw8f8v1o8dkbjj30du0dujs2.jpg', '醉鈊轩殇：回复@初浩然0:，，，，，，，', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('73', '邓超', '从你的全世界路过', '4031538493958115', 'http://weibo.com/6040634272', 'id=6040634272', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006ANSV2jw8f8lbjqrh92j30ro0rp418.jpg', '丫头Baby8：@邓超 我都等了你好久了，怎么还不见抽奖啊！再不抽奖我要告诉娘娘了！', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('74', '邓超', '从你的全世界路过', '4031537617952020', 'http://weibo.com/5442528493', 'id=5442528493', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005WkihDjw8f4zpyoobrtj30ig0igmz9.jpg', '晨晨hjt：超哥我来看看你', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('75', '邓超', '从你的全世界路过', '4031537324783115', 'http://weibo.com/5362652663', 'id=5362652663', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/005QV8VNjw8f7v4htfgpzj30ro0ro3zu.jpg', '十七美a：马尾我只服邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('76', '邓超', '从你的全世界路过', '4031536644690914', 'http://weibo.com/2148490712', 'id=2148490712', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/800f5dd8jw8eywss2ijkyj20hs0hswfe.jpg', '沙道沟古天乐：带着幺鸡去看了幺鸡。真的很巧身边有个叫幺鸡的女孩子', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('77', '邓超', '从你的全世界路过', '4031535449534945', 'http://weibo.com/6048729679', 'id=6048729679', 'http://tva4.sinaimg.cn/crop.0.0.100.100.50/006BlQU7jw8f8v2wma9r5j302s02s0qr.jpg', '____绿魂：我是来看中奖奖什么东东的', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('78', '邓超', '从你的全世界路过', '4031534916434231', 'http://weibo.com/5618103063', 'id=5618103063', 'http://tva2.sinaimg.cn/crop.0.0.511.511.50/0068cZfxjw8ey1puz38evj30e70e8dgd.jpg', '茶不苦girl：邓超，偶像，你特么敢不敢回复一下@邓超 @邓超 @邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('79', '邓超', '从你的全世界路过', '4031534858351721', 'http://weibo.com/2894392143', 'id=2894392143', 'http://tva3.sinaimg.cn/crop.0.15.750.750.50/ac84eb4fjw8f8tdzwcyyzj20ku0lpjsr.jpg', '冬冬-谢丹丹：你滚@邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('80', '邓超', '从你的全世界路过', '4031534635674850', 'http://weibo.com/1256412530', 'id=1256412530', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/4ae35572jw1e8qgp5bmzyj2050050aa8.jpg', '圈圈727：看哭了的电影，听哭了的主题曲', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('81', '邓超', '从你的全世界路过', '4031534480158565', 'http://weibo.com/3686318853', 'id=3686318853', 'http://tva2.sinaimg.cn/crop.84.91.444.444.50/dbb8c305jw8f6wn3deaw2j20go0m8gou.jpg', '孟梓柯：不知道抽完没抽完，但还是手贱的转发一下，支持一下大超同学，那啥，我想娘娘了', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('82', '邓超', '从你的全世界路过', '4031533716956985', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱我的人', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('83', '邓超', '从你的全世界路过', '4031533700158910', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('84', '邓超', '从你的全世界路过', '4031533503574881', 'http://weibo.com/6021999482', 'id=6021999482', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/006zxH9Ujw8f7y4xhlwsjj30e80e8gmp.jpg', '污的人往往颜值很高：图片评论', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('85', '邓超', '从你的全世界路过', '4031533344477444', 'http://weibo.com/2399359103', 'id=2399359103', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/8f03507fjw1e8qgp5bmzyj2050050aa8.jpg', 'anyway-always：', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('86', '邓超', '从你的全世界路过', '4031533331391210', 'http://weibo.com/taotaoln', 'id=5156151811', 'http://tva1.sinaimg.cn/crop.45.112.550.550.50/005CWGCTjw1egtdwlhjmgj30gn0m80uq.jpg', 'LOVEJT江涛：杨洋特帅，特味道', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('87', '邓超', '从你的全世界路过', '4031533154831846', 'http://weibo.com/5048437356', 'id=5048437356', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/005vEJaYjw8f8g9bjl6ztj30ro0rpwir.jpg', '雨晴jia：超哥，我炒鸡炒鸡黑凤梨，送我一张签名照可好@邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('88', '邓超', '从你的全世界路过', '4031532647726674', 'http://weibo.com/xiaonanwb', 'id=1660489633', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/62f90fa1jw8evpce8bpk9j20yi0yi0u8.jpg', '大楠同学：喜欢请点赞，抽一人送漫画', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('89', '邓超', '从你的全世界路过', '4031531489688067', 'http://weibo.com/5491622292', 'id=5491622292', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/005ZEhP6jw8f7m8jo7rkej30hs0hsabs.jpg', '你是我的世界i：点赞中随机抽取七人做邓超爸爸', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('90', '邓超', '从你的全世界路过', '4031531292728607', 'http://weibo.com/3850750181', 'id=3850750181', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/e585c8e5jw8f5lqcc4om1j20ku0kudhd.jpg', 'ai_老板娘：超哥超哥超哥 我可以给你看牙@邓超 @邓超 @邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('91', '邓超', '从你的全世界路过', '4031531091891237', 'http://weibo.com/5991552932', 'id=5991552932', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006xtWCwjw8f8t3idw0i9j30ig0igwgx.jpg', '丸子小旋风-：超哥我一直有个问题想问你你如果回复我我就问你', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('92', '邓超', '从你的全世界路过', '4031530789628352', 'http://weibo.com/1775027671', 'id=1775027671', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/69ccc5d7jw8f7d2bpiingj20ro0rpq72.jpg', '我教你呀：为你点赞', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('93', '邓超', '从你的全世界路过', '4031530705964130', 'http://weibo.com/2109753513', 'id=2109753513', 'http://tva1.sinaimg.cn/crop.0.0.512.512.50/7dc048a9jw8f8om2hj51wj20e80e80t0.jpg', '刘醒醒的早晨：#邓超# U从你的全世界路过 @邓超 我只想让超哥赞我 顺便说陈沫也就超哥能演的出神入化了', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('94', '邓超', '从你的全世界路过', '4031529959560059', 'http://weibo.com/5635703788', 'id=5635703788', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/0069oQ0cjw8f6ccxdiawgj30e80e8aac.jpg', '曦夕豆豆：你能不能看到我的微博@邓超', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('95', '邓超', '从你的全世界路过', '4031529820857437', 'http://weibo.com/5635703788', 'id=5635703788', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/0069oQ0cjw8f6ccxdiawgj30e80e8aac.jpg', '曦夕豆豆：更博', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('96', '邓超', '从你的全世界路过', '4031529275805817', 'http://weibo.com/5868229894', 'id=5868229894', 'http://tva4.sinaimg.cn/crop.0.0.512.512.50/006p8uFgjw8f7wl4omriqj30e80e8gm0.jpg', '柯南-兰：嗯哒', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('97', '邓超', '从你的全世界路过', '4031527685936911', 'http://weibo.com/6026602000', 'id=6026602000', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006zR0u4jw8f83rbow19cj30ro0rotc6.jpg', '多情少年郎1984：你骗人超哥', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('98', '邓超', '从你的全世界路过', '4031526348125717', 'http://weibo.com/1282774500', 'id=1282774500', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/4c7595e4jw1e8qgp5bmzyj2050050aa8.jpg', '珊迷姐：转发微博', '2016-10-17 13:33:32');
INSERT INTO `t_sina_weibo` VALUES ('99', '邓超', '从你的全世界路过', '4031525282792246', 'http://weibo.com/2276977691', 'id=2276977691', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/87b7ec1bjw8f19iovmv83j20ig0ig0t7.jpg', '魏巍vickw：今天你路过了谁！', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('100', '邓超', '从你的全世界路过', '4031525144438642', 'http://weibo.com/2812283683', 'id=2812283683', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/a7a00b23jw8f8v0qhonajj20ro0rpq4r.jpg', '宋哲-9：邓老师请问您那还需要经纪人吗？', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('101', '邓超', '从你的全世界路过', '4031524804734149', 'http://weibo.com/5978204456', 'id=5978204456', 'http://tva1.sinaimg.cn/crop.0.16.750.750.50/006wzW4wjw8f8ipwjchvuj30ku0lqmz6.jpg', '中午吃什麼：哇', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('102', '邓超', '从你的全世界路过', '4031524393190533', 'http://weibo.com/3596017950', 'id=3596017950', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/d656e11ejw8f8u7p0c2r9j20ku0ku3zo.jpg', 'Alisa_baby么么哒：超哥。。《从你的全世界路过》什么时候下线。想跟要分手的男朋友在去看一遍', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('103', '邓超', '从你的全世界路过', '4031524305392381', 'http://weibo.com/5736278689', 'id=5736278689', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '小王子198402：图片评论', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('104', '邓超', '从你的全世界路过', '4031523906901230', 'http://weibo.com/5284191823', 'id=5284191823', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/005LBVGnjw8f33j8oxg4ij30ig0igjso.jpg', '小班呀嘛小花啊：可以有', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('105', '邓超', '从你的全世界路过', '4031523169092671', 'http://weibo.com/5346392156', 'id=5346392156', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/005POUPyjw8f6vothj7g6j30ro0rpmz3.jpg', '一介庸人_：老司机选我选我选我', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('106', '邓超', '从你的全世界路过', '4031522589433818', 'http://weibo.com/5625058322', 'id=5625058322', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/0068GaD8jw8f887h0qs7oj30ro0ron00.jpg', '子-争朝夕：超哥加油！', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('107', '邓超', '从你的全世界路过', '4031522044629117', 'http://weibo.com/5793183036', 'id=5793183036', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '龙哥93096：抽我吗', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('108', '邓超', '从你的全世界路过', '4031521591797283', 'http://weibo.com/5976943223', 'id=5976943223', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006wuDY3jw8f7ysoy4z8rj30ro0rpq60.jpg', '倒立的兔子是流氓：超哥，我爱你，好好照顾好自己哦', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('109', '邓超', '从你的全世界路过', '4031521381310539', 'http://weibo.com/5520028284', 'id=5520028284', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/0061ztwgjw8ezzz8kwmx2j30e80e8jrq.jpg', '爱搞事的吴少爷：拜拜', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('110', '邓超', '从你的全世界路过', '4031520521748358', 'http://weibo.com/5866376109', 'id=5866376109', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006p0Ipvjw8f6gl76147fj30ro0rpdi7.jpg', '初浩然0：回复@顾柔儿GRE:突然间恍然大悟，发现新大陆了', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('111', '邓超', '从你的全世界路过', '4031520395731411', 'http://weibo.com/3181698754', 'id=3181698754', 'http://tva4.sinaimg.cn/crop.10.15.181.181.50/bda4dec2jw8ew4bo3dqmhj205h05hjra.jpg', '大牙掉了啊啊v：超哥好久不更博了呢', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('112', '邓超', '从你的全世界路过', '4031520349632041', 'http://weibo.com/5866376109', 'id=5866376109', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006p0Ipvjw8f6gl76147fj30ro0rpdi7.jpg', '初浩然0：回复@醉鈊轩昂殇16850:是我弱爆了', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('113', '邓超', '从你的全世界路过', '4031519892912053', 'http://weibo.com/5246093826', 'id=5246093826', 'http://tva1.sinaimg.cn/crop.0.0.1152.1152.50/005J24Eyjw8ew68yyf2esj30w00w00w9.jpg', '没落1ng熊：图片评论', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('114', '邓超', '从你的全世界路过', '4031519577693556', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('115', '邓超', '从你的全世界路过', '4031519565108186', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('116', '邓超', '从你的全世界路过', '4031518290699808', 'http://weibo.com/2144143890', 'id=2144143890', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/7fcd0a12jw8f8sx4ovj4pj20ro0rp407.jpg', '浴霸鹿晗：帮你陪儿子', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('117', '邓超', '从你的全世界路过', '4031517946310792', 'http://weibo.com/5821013351', 'id=5821013351', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/006lWnu7jw8f3kpi13a8xj30yi0yidi5.jpg', '宁宁-n：  定居 韩国，微信采购直播', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('118', '邓超', '从你的全世界路过', '4031517556956666', 'http://weibo.com/5993339332', 'id=5993339332', 'http://tva3.sinaimg.cn/crop.0.0.1006.1006.50/006xBrlqjw8f8sltvms6pj30ry0ry787.jpg', '兔子先生的幸福时光：有邓超的地方就是票房', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('119', '邓超', '从你的全世界路过', '4031517250293527', 'http://weibo.com/3971990182', 'id=3971990182', 'http://tva2.sinaimg.cn/crop.0.0.512.512.50/ecbfc2a6jw8f8bkbkbd2kj20e80e80tg.jpg', 'Alvin爻：不', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('120', '邓超', '从你的全世界路过', '4031517036011771', 'http://weibo.com/1627628605', 'id=1627628605', 'http://tva1.sinaimg.cn/crop.0.0.512.512.50/6103a43djw8f455qqs1bxj20e80e8gm9.jpg', '爱生活的大样样小Rita：男神男神～', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('121', '邓超', '从你的全世界路过', '4031516700848043', 'http://weibo.com/3654894115', 'id=3654894115', 'http://tva2.sinaimg.cn/crop.0.0.712.712.50/d9d94223jw8f87ttb78t7j20js0jst93.jpg', '6xyUuU：你咋不更博了', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('122', '邓超', '从你的全世界路过', '4031516486461720', 'http://weibo.com/5381634100', 'id=5381634100', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/005ScMS0jw8ev4vxuywcyj30hs0hsjs8.jpg', '5i5j张晓伟：', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('123', '邓超', '从你的全世界路过', '4031516243798188', 'http://weibo.com/5648439096', 'id=5648439096', 'http://tva2.sinaimg.cn/crop.0.14.751.751.50/006agh2ojw8f8c2f7y3l1j30kv0lodgx.jpg', '俪俪我爱你：爱你', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('124', '邓超', '从你的全世界路过', '4031515781957094', 'http://weibo.com/5537770137', 'id=5537770137', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/0062LUZbjw8f8uxhr9wdaj30ro0rptbh.jpg', '1982诗言诗语：大家好，我是邓超，演技超群的邓，票房无敌的超', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('125', '邓超', '从你的全世界路过', '4031515258044100', 'http://weibo.com/5215829700', 'id=5215829700', 'http://tva4.sinaimg.cn/crop.0.0.1328.1328.50/005GZ5zujw8f7j2erwubxj310w10wjxm.jpg', '嗳顾盼生姿：没谁了', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('126', '邓超', '从你的全世界路过', '4031514570869543', 'http://weibo.com/1617131974', 'id=1617131974', 'http://tva2.sinaimg.cn/crop.0.1.1242.1242.50/606379c6jw8eoxl2i8uuuj20yi0yldin.jpg', '不忘初心滚滚：', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('127', '邓超', '从你的全世界路过', '4031513793774417', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@琳琳琳琳琳美琳:你真的可以原地爆炸', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('128', '邓超', '从你的全世界路过', '4031513500601467', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@SayHelloToTomorrow:图片评论', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('129', '邓超', '从你的全世界路过', '4031513256811703', 'http://weibo.com/5482365806', 'id=5482365806', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/005Z1rMWjw8f8v1ze7bg6j30ro0rp41f.jpg', '黄思凯丶：不好意思 我是七位中一位', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('130', '邓超', '从你的全世界路过', '4031513248422416', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@SayHelloToTomorrow:八卦新闻你也信?', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('131', '邓超', '从你的全世界路过', '4031512603516052', 'http://weibo.com/3123417645', 'id=3123417645', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/ba2b922djw8embfdujl11j20k00k00tk.jpg', '文不博古：回复@亞美同學阿:心疼票钱吧，可惜了（liao）', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('132', '邓超', '从你的全世界路过', '4031512540519842', 'http://weibo.com/6048723857', 'id=6048723857', 'http://tva4.sinaimg.cn/crop.0.0.498.498.50/006BlPodjw8f8v1o8dkbjj30du0dujs2.jpg', '醉鈊轩殇：回复@邓超:正常', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('133', '邓超', '从你的全世界路过', '4031512519519860', 'http://weibo.com/2144958532', 'id=2144958532', 'http://tva4.sinaimg.cn/crop.0.0.100.100.50/7fd97844jw8ekax7no9nbj202s02smwz.jpg', '赵雅莉55039：图片评论', '2016-10-17 13:33:33');
INSERT INTO `t_sina_weibo` VALUES ('134', '邓超', '从你的全世界路过', '4031512439714785', 'http://weibo.com/6048723857', 'id=6048723857', 'http://tva4.sinaimg.cn/crop.0.0.498.498.50/006BlPodjw8f8v1o8dkbjj30du0dujs2.jpg', '醉鈊轩殇：回复@初浩然0:蓝瘦(难受)香菇(想哭)懂了？', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('135', '邓超', '从你的全世界路过', '4031511776238504', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@琳琳琳琳琳美琳:你说的会发生在你自己的身上', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('136', '邓超', '从你的全世界路过', '4031511466902804', 'http://weibo.com/3478802135', 'id=3478802135', 'http://tva3.sinaimg.cn/crop.0.7.1242.1242.50/cf5a4ed7jw8f7ufcdak2aj20yi0yxwgk.jpg', '丫丫的小宝小贝：我就问一句，抽！哪！里？', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('137', '邓超', '从你的全世界路过', '4031511215173241', 'http://weibo.com/5867760335', 'id=5867760335', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006p6wvJjw8f8uawoeulyj30ro0rpjue.jpg', '顾柔儿GRE：回复@初浩然0:香菇(想哭)蓝瘦(难受)', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('138', '邓超', '从你的全世界路过', '4031511109986543', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@用户6013656200:他们说的话你信吗？', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('139', '邓超', '从你的全世界路过', '4031510606724373', 'http://weibo.com/5866376109', 'id=5866376109', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006p0Ipvjw8f6gl76147fj30ro0rpdi7.jpg', '初浩然0：来，谁为我解释蓝瘦，香菇是什么意思', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('140', '邓超', '从你的全世界路过', '4031509931592356', 'http://weibo.com/rememberusHD', 'id=1224226417', 'http://tva3.sinaimg.cn/crop.1.0.747.747.50/48f83671jw8f75crx1fatj20ku0kr3zv.jpg', '劲爆小牛竟被占用：膜还没给我贴呢？', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('141', '邓超', '从你的全世界路过', '4031509914791093', 'http://weibo.com/6028396915', 'id=6028396915', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006zYxqjjw1f7z0pbankej305k05kgli.jpg', '贺璃锋贺：基曼齐努昂巩脉', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('142', '邓超', '从你的全世界路过', '4031509713275686', 'http://weibo.com/5850469842', 'id=5850469842', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006nVYsOjw8f5plwrjbsgj30ro0rpwjk.jpg', '情殇到天亮：哒哒哒', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('143', '邓超', '从你的全世界路过', '4031509407385663', 'http://weibo.com/jo595635008', 'id=2505102792', 'http://tva3.sinaimg.cn/crop.0.0.250.250.50/9550d5c8jw8f8n9zeex7oj206y06y74b.jpg', '周家荣：图片评论超哥，这蜡像是你吗？@邓超', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('144', '邓超', '从你的全世界路过', '4031509171856251', 'http://weibo.com/5463664971', 'id=5463664971', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/005XKYQzjw8f7burevlcdj30ro0rp41n.jpg', '亞美同學阿：这部电影确实好看，看哭了', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('145', '邓超', '从你的全世界路过', '4031508299644325', 'http://weibo.com/5487778701', 'id=5487778701', 'http://tva2.sinaimg.cn/crop.0.0.100.100.50/005Zo9VHjw8epg2yixpevj302s02sa9x.jpg', '夏天61383：鸡模特', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('146', '邓超', '从你的全世界路过', '4031508257661810', 'http://weibo.com/6025944370', 'id=6025944370', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006zOfp8jw1f7yygzstxej305k05kweh.jpg', '陆推肚陆矮：倌维滕诞施培光', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('147', '邓超', '从你的全世界路过', '4031507406917340', 'http://weibo.com/5844503878', 'id=5844503878', 'http://tva3.sinaimg.cn/crop.9.0.493.493.50/006nwWrAjw8f8lxl7spm7j30e80dpgm5.jpg', '微笑是彩虹倒过来的弧度：哼', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('148', '邓超', '从你的全世界路过', '4031506839856097', 'http://weibo.com/vivacfj', 'id=1941209365', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/73b48115jw8f3cjl562kcj20ku0ku413.jpg', 'Taki_陳尛傢：超哥我只想问问你啥时候抽？@邓超', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('149', '邓超', '从你的全世界路过', '4031506643447836', 'http://weibo.com/5976886368', 'id=5976886368', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006wupb2jw1f5lbq24fa9j305k05kt8r.jpg', '整齐池刃苗：.', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('150', '邓超', '从你的全世界路过', '4031506441778988', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:34');
INSERT INTO `t_sina_weibo` VALUES ('167', '邓超', '从你的全世界路过', '4031495444634098', 'http://weibo.com/6011459631', 'id=6011459631', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '鲁练逮鲁：辨修尘涧咏之来修玉', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('168', '邓超', '从你的全世界路过', '4031495271818943', 'http://weibo.com/5012386935', 'id=5012386935', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005tdsOzjw8f6xrwfazkgj30ig0igdgm.jpg', '小葱花炒：超哥，你的电影破30亿没问题！因为里面有wuli杨洋', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('169', '邓超', '从你的全世界路过', '4031495201560858', 'http://weibo.com/6047556354', 'id=6047556354', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/006BgVFwjw8f8u1zvxw9qj30yi0yin06.jpg', '指尖上那淡淡的温柔：抽不中我。我就抽你', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('170', '邓超', '从你的全世界路过', '4031494550707438', 'http://weibo.com/5466607735', 'id=5466607735', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/005XXkovjw8f8cr3xkxzzj30ro0ro77z.jpg', '阿微小主：超哥哥希望你能来段舞蹈让我们查个是表达的哪个成语哇哈哈我这脑子', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('171', '邓超', '从你的全世界路过', '4031493891923827', 'http://weibo.com/5921945860', 'id=5921945860', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006sLSDOjw1f3nc78mko3j305k05k748.jpg', '柏桓垂孔诹：$', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('172', '邓超', '从你的全世界路过', '4031493817228527', 'http://weibo.com/miyamoli', 'id=2035897007', 'http://tva2.sinaimg.cn/crop.14.0.722.722.50/795952afjw8f88xetq1ivj20ku0k2dh8.jpg', '米牙魔力晶晶：我转了，因为你在我的世界住！', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('173', '邓超', '从你的全世界路过', '4031493624269514', 'http://weibo.com/5132858998', 'id=5132858998', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/005BmX6mjw8f899sqqyz5j30ig0igjsq.jpg', '1234w6c：超哥很久没更博了哟', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('174', '邓超', '从你的全世界路过', '4031492063157668', 'http://weibo.com/5767010515', 'id=5767010515', 'http://tva3.sinaimg.cn/crop.7.0.498.498.50/006ihMSDjw8f7yt3djjhjj30e80duq38.jpg', 'mm你的美让我陶醉：想学影视后期的私聊我', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('175', '邓超', '从你的全世界路过', '4031490214289189', 'http://weibo.com/5922946283', 'id=5922946283', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '施踊胺雌妆：]', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('176', '邓超', '从你的全世界路过', '4031489777451475', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱我们', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('177', '邓超', '从你的全世界路过', '4031488070702613', 'http://weibo.com/5185124825', 'id=5185124825', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/005EUfPzjw8f85nogrr8aj30yi0yidit.jpg', '斯小喵y柒：生日求祝福@邓超', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('178', '邓超', '从你的全世界路过', '4031487974831953', 'http://weibo.com/5815916708', 'id=5815916708', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006lAZCcjw8f8uyxnx08dj30ig0igmye.jpg', '涟漪黎夕：超哥我在天桥上拿着手机和膜等你', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('179', '邓超', '从你的全世界路过', '4031487710229836', 'http://weibo.com/3877041986', 'id=3877041986', 'http://tva1.sinaimg.cn/crop.0.0.1356.1356.50/e716f742jw8f7z9j709a7j211o11omz5.jpg', 'cowmomo：加油！', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('180', '邓超', '从你的全世界路过', '4031486653607659', 'http://weibo.com/5663963848', 'id=5663963848', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006bjpJCjw8f2sw8vcyj6j30ro0rpjry.jpg', '玩美小腰：哎呀。吓得我很快的取消了转发', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('181', '邓超', '从你的全世界路过', '4031485918606595', 'http://weibo.com/5922912781', 'id=5922912781', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '施倘疑氏兔：', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('182', '邓超', '从你的全世界路过', '4031485604373317', 'http://weibo.com/6013656200', 'id=6013656200', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户6013656200：超哥你说你赚了那么多钱 为什么慈善一分钱也不捐？', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('183', '邓超', '从你的全世界路过', '4031485378367371', 'http://weibo.com/5814308642', 'id=5814308642', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006lufhEjw8f8uz02pw0dj30ro0rpwfz.jpg', 'FEO啦啦啦：超哥我帮你贴膜如何？', '2016-10-17 13:33:35');
INSERT INTO `t_sina_weibo` VALUES ('184', '邓超', '从你的全世界路过', '4031484765707675', 'http://weibo.com/5921931590', 'id=5921931590', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006sLOVEjw8f5vn7q07dtj30ig0ig0tj.jpg', '嘟嘟小嘴丿乚：+', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('185', '邓超', '从你的全世界路过', '4031484450580214', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱在', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('186', '邓超', '从你的全世界路过', '4031484429346047', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱这个', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('187', '邓超', '从你的全世界路过', '4031484077456139', 'http://weibo.com/3584669922', 'id=3584669922', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/d5a9b8e2jw1e8qgp5bmzyj2050050aa8.jpg', '观一角天青色：图片评论', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('188', '邓超', '从你的全世界路过', '4031483948179903', 'http://weibo.com/6003374369', 'id=6003374369', 'http://tva4.sinaimg.cn/crop.0.0.100.100.50/006yhxURjw1f6va46rhkpj302s02sa9y.jpg', '拐伏肯krhgq：博衔征晖凝胤素', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('189', '邓超', '从你的全世界路过', '4031482710335288', 'http://weibo.com/5921916183', 'id=5921916183', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006sLKV9jw1f3n6n8bo3uj305k05k3yi.jpg', '骆吓凹械伟：[呵呵]#我们的约会#', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('190', '邓超', '从你的全世界路过', '4031481616096470', 'http://weibo.com/6004412857', 'id=6004412857', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006ylU4Fjw8f6wuriov0gj30ro0romzd.jpg', '陈溺深海陈陳沉：厉害了我的超哥～', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('191', '邓超', '从你的全世界路过', '4031480852192208', 'http://weibo.com/5448068665', 'id=5448068665', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005WHxxfjw8f8t6uf7ttfj30ig0ig3z8.jpg', '我会晕车：gay', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('192', '邓超', '从你的全世界路过', '4031480181626502', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('193', '邓超', '从你的全世界路过', '4031479840863229', 'http://weibo.com/5697719105', 'id=5697719105', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006dB31fjw8f4qjq7bkczj30ro0rpwi1.jpg', '安安5697719105：这是假的吗？', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('194', '邓超', '从你的全世界路过', '4031479358815814', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('195', '邓超', '从你的全世界路过', '4031478377552932', 'http://weibo.com/2637549505', 'id=2637549505', 'http://tva3.sinaimg.cn/crop.0.0.511.511.50/9d35cfc1jw8f5p2oz7vpej20e70e8gmu.jpg', '小肉鸽阿：只有我一个觉得是烂片嘛', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('196', '邓超', '从你的全世界路过', '4031474946169499', 'http://weibo.com/1354144915', 'id=1354144915', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/50b69c93jw1e8qgp5bmzyj2050050aa8.jpg', '一船星辉129：反正没我', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('197', '邓超', '从你的全世界路过', '4031474879050568', 'http://weibo.com/5832651544', 'id=5832651544', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006mJd6Ujw8f6xxahpmimj30ro0rpjt4.jpg', '我要瘦到88斤变成纸片人灯棒人：好喜欢你超哥', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('198', '邓超', '从你的全世界路过', '4031474787072706', 'http://weibo.com/3247692982', 'id=3247692982', 'http://tva4.sinaimg.cn/crop.0.0.1002.1002.50/c193dcb6jw8f8evz5e902j20ru0rumzw.jpg', '牧马人罢了：做爸爸？', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('199', '邓超', '从你的全世界路过', '4031472425590077', 'http://weibo.com/5811478003', 'id=5811478003', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006limUbjw8f3jn24pvrsj30ro0rp764.jpg', '晚风别停1995：看不出来呀，老邓头', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('200', '邓超', '从你的全世界路过', '4031471293562986', 'http://weibo.com/5683696383', 'id=5683696383', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006cEd4jjw8f6h1rsogs1j30ig0ig74z.jpg', '时光荒老了我们的青春yh：还没看就转发了，本来想保留神秘感，最后竟然被耍了', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('201', '邓超', '从你的全世界路过', '4031470647490428', 'http://weibo.com/1870113367', 'id=1870113367', 'http://tva2.sinaimg.cn/crop.0.0.749.749.50/6f77aa57jw8f45pkfjyygj20ku0kt3zq.jpg', '唐苏雨：昨天去看啦！好看', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('202', '邓超', '从你的全世界路过', '4031470072248496', 'http://weibo.com/5284084397', 'id=5284084397', 'http://tva2.sinaimg.cn/crop.0.0.480.480.50/005LBtJHjw8eumsj7onayj30dc0dc406.jpg', 'CC花开盛夏：喜欢艺术到为艺术献身是个了不起的过程', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('203', '邓超', '从你的全世界路过', '4031469606880596', 'http://weibo.com/5236616441', 'id=5236616441', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/005Ioj9vjw8ejzpkrubvpj30k00k0mxy.jpg', '阿阿阿阿阿阿阿阿阿嗨：111', '2016-10-17 13:33:36');
INSERT INTO `t_sina_weibo` VALUES ('204', '邓超', '从你的全世界路过', '4031468071983586', 'http://weibo.com/5977372562', 'id=5977372562', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006wwrESjw1f5lcq2xzk1j305k05k0sk.jpg', '闾丘落融何想搜：#我们的约会#[雪花]', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('205', '邓超', '从你的全世界路过', '4031467145222654', 'http://weibo.com/gingerzhou', 'id=2243814231', 'http://tva2.sinaimg.cn/crop.0.0.511.511.50/85bde357jw8eq7uymm1xsj20e70e80tz.jpg', '就如你原本的样子：反正我去看了', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('206', '邓超', '从你的全世界路过', '4031464893522225', 'http://weibo.com/6004844760', 'id=6004844760', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006ynIqQjw8f6wwancoljj30ro0rpjtj.jpg', '纯白色鞋带：看了，看哭……', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('207', '邓超', '从你的全世界路过', '4031463332488032', 'http://weibo.com/5601362583', 'id=5601362583', 'http://tva1.sinaimg.cn/crop.0.0.640.640.50/00674KhNjw8f4bar284xkj30hs0hsaa5.jpg', '南子ZLY：已做', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('208', '邓超', '从你的全世界路过', '4031461431988016', 'http://weibo.com/3568178715', 'id=3568178715', 'http://tva4.sinaimg.cn/crop.0.0.1002.1002.50/d4ae161bjw8f81fn03t9hj20ru0ru0t3.jpg', '有事没事多吃藕：来为你贴膜，现在成了名副其实贴膜小王子', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('209', '邓超', '从你的全世界路过', '4031456923169491', 'http://weibo.com/5861647423', 'id=5861647423', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006oGSgnjw1f13cgeo0bxj305k05kmx5.jpg', '蔚享耍蔚：#狼哥哥带你约#', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('210', '邓超', '从你的全世界路过', '4031456436582924', 'http://weibo.com/2239909831', 'id=2239909831', 'http://tva2.sinaimg.cn/crop.0.26.1242.1242.50/85824fc7jw8f8alnk2c1wj20yi0zytbx.jpg', 'Amy胡艺娟：，', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('211', '邓超', '从你的全世界路过', '4031455581223552', 'http://weibo.com/3269716281', 'id=3269716281', 'http://tva2.sinaimg.cn/default/images/default_avatar_female_50.gif', '手机用户3269716281：回复@邓超:超哥，还是帮你照顾儿子吧', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('212', '邓超', '从你的全世界路过', '4031455464044789', 'http://weibo.com/3269716281', 'id=3269716281', 'http://tva2.sinaimg.cn/default/images/default_avatar_female_50.gif', '手机用户3269716281：回复@我要做学爸:我也等了好久', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('213', '邓超', '从你的全世界路过', '4031455308782053', 'http://weibo.com/3269716281', 'id=3269716281', 'http://tva2.sinaimg.cn/default/images/default_avatar_female_50.gif', '手机用户3269716281：超哥，你不会骗人吧（半信半疑）', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('214', '邓超', '从你的全世界路过', '4031454503083637', 'http://weibo.com/5976886368', 'id=5976886368', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006wupb2jw1f5lbq24fa9j305k05kt8r.jpg', '整齐池刃苗：+[不要]', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('215', '邓超', '从你的全世界路过', '4031450988858046', 'http://weibo.com/5861633614', 'id=5861633614', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006oGOFEjw1f139k35ouaj305k05kt8o.jpg', '毕袄贺毕：$[懒得理你]', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('216', '邓超', '从你的全世界路过', '4031449449193993', 'http://weibo.com/1396854160', 'id=1396854160', 'http://tva2.sinaimg.cn/crop.0.1.509.509.50/53424d90jw8f71jsdy2znj20e50e8q3w.jpg', 'Sherry凤梨蛋黄酥：好看，邓超一如既往的给力@邓超', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('217', '邓超', '从你的全世界路过', '4031446337112040', 'http://weibo.com/2400479055', 'id=2400479055', 'http://tva2.sinaimg.cn/crop.0.15.750.750.50/8f14674fjw8f85x5umqy1j20ku0lpq3z.jpg', '小小钰爱太阳__：嘿…我昨晚上梦到你了……', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('218', '邓超', '从你的全世界路过', '4031445380507063', 'http://weibo.com/5938898851', 'id=5938898851', 'http://tva1.sinaimg.cn/crop.0.0.200.200.50/006tV0T9jw1f48dltg3jxj305k05k74i.jpg', '濮伞哗濮编：颢姵满佑席翔培替', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('219', '邓超', '从你的全世界路过', '4031445201114679', 'http://weibo.com/2935834992', 'id=2935834992', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/aefd4970jw8f03h1lyamyj20ro0ro75u.jpg', '丑丑的鱼儿520：', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('220', '邓超', '从你的全世界路过', '4031439475570488', 'http://weibo.com/5899774138', 'id=5899774138', 'http://tva3.sinaimg.cn/default/images/default_avatar_male_50.gif', 'zippo40922：当个好演员，不要当明星，少演一文不值的戏', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('221', '邓超', '从你的全世界路过', '4031431757385523', 'http://weibo.com/5927474586', 'id=5927474586', 'http://tva3.sinaimg.cn/default/images/default_avatar_male_50.gif', '巫富智侍灼：[打哈气]永牧剑霄霄铿封封', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('222', '邓超', '从你的全世界路过', '4031428717218912', 'http://weibo.com/5973443297', 'id=5973443297', 'http://tva2.sinaimg.cn/crop.0.0.857.857.50/006wfXtDgw1f7o306szo9j30nu0xcjvv.jpg', '那钻安擦客朵名：#狼哥哥带你约#', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('223', '邓超', '从你的全世界路过', '4031428364617289', 'http://weibo.com/3295231761', 'id=3295231761', 'http://tva4.sinaimg.cn/crop.0.1.640.640.50/c4693f11jw8f8ury25r0gj20hs0hvtau.jpg', '比仇恨更可怕的是冷漠撒：@邓超 超哥。我专门去重庆电影院看的从你的全世界路过', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('224', '邓超', '从你的全世界路过', '4031427882228868', 'http://weibo.com/3874026050', 'id=3874026050', 'http://tva3.sinaimg.cn/crop.48.73.111.111.50/e6e8f242jw8f8ufq2qgalj205k05kt8k.jpg', '笨笨的菠菜：看了这个  然后分手了 ╮(╯▽╰)╭ 谢了，挺治愈的。', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('225', '邓超', '从你的全世界路过', '4031422995889238', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱我们', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('226', '邓超', '从你的全世界路过', '4031422979312727', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱我的', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('227', '邓超', '从你的全世界路过', '4031421486220708', 'http://weibo.com/5370592187', 'id=5370592187', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/005RssmDjw8f8ur7bu8iej30ig0ig74s.jpg', '大川小姐：晚安', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('228', '邓超', '从你的全世界路过', '4031419733210035', 'http://weibo.com/5923167056', 'id=5923167056', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006sR0kwjw1f3n59oqypgj305k05ka9v.jpg', '钭蛹飞闲雍：#我们的约会#', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('229', '邓超', '从你的全世界路过', '4031419494211508', 'http://weibo.com/5982071247', 'id=5982071247', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/006wQa07jw8f8ur4vfl0pj30c60c6jrz.jpg', '爱你千玺86：欺骗我的感情', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('230', '邓超', '从你的全世界路过', '4031415898945837', 'http://weibo.com/2404883025', 'id=2404883025', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/8f579a51jw8en5xs6i7bmj20k00k0aap.jpg', '桂贤妹子：系统自动转发', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('231', '邓超', '从你的全世界路过', '4031406407276757', 'http://weibo.com/2035898283', 'id=2035898283', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/795957abjw8ev7sv1cx2bj20ku0ku75p.jpg', 'a_yuuu：做梦', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('232', '邓超', '从你的全世界路过', '4031403652333874', 'http://weibo.com/5256777895', 'id=5256777895', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005JKU4fjw8f8uitd00xgj30ro0rojte.jpg', 'Max北枭：我没仔细看一开始 以为杨洋是老薛', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('233', '邓超', '从你的全世界路过', '4031403475547846', 'http://weibo.com/6049125113', 'id=6049125113', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/006BnvM5jw8f8v4wiajeaj30yi0yi3ze.jpg', '小孩纸17445：帅超哥', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('234', '邓超', '从你的全世界路过', '4031402452288296', 'http://weibo.com/5616166409', 'id=5616166409', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/00684Rrbjw8f8urbpxrrjj30ku0kugm1.jpg', '王海洋-Sea：糙哥你别再私信我了 我一个学管理的人怎么知道如何治疗智障', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('235', '邓超', '从你的全世界路过', '4031401290713662', 'http://weibo.com/2785897783', 'id=2785897783', 'http://tva4.sinaimg.cn/crop.0.8.750.750.50/a60d6d37jw8f6m3u88351j20ku0la3zn.jpg', 'lin林友华：在吗？', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('236', '邓超', '从你的全世界路过', '4031392884747832', 'http://weibo.com/2961698844', 'id=2961698844', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/b087f01cjw8f8ngm2lvzdj20ku0ku3zg.jpg', 'L-JIa-Y-GD：哎，这样就没意思了', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('237', '邓超', '从你的全世界路过', '4031391874248144', 'http://weibo.com/2542848907', 'id=2542848907', 'http://tva1.sinaimg.cn/crop.0.0.180.180.50/9790cb8bjw8f2d2cpfvhij2050050wey.jpg', 'sc2Maru：顶你，加油', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('238', '邓超', '从你的全世界路过', '4031389395815985', 'http://weibo.com/3196247984', 'id=3196247984', 'http://tva3.sinaimg.cn/crop.0.80.480.480.50/be82dfb0jw8e7qpqo4b53j20dc0hs0tf.jpg', 'SNK48：超哥唱的电台情歌好听哦，情节演的也到位', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('239', '邓超', '从你的全世界路过', '4031389022654035', 'http://weibo.com/5953141940', 'id=5953141940', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006uSMaojw1f4twli8rj9j305k05k745.jpg', '融递顽融缝供_70694：[呵呵]巩仙香发仙宪巩怀贝', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('240', '邓超', '从你的全世界路过', '4031387113451043', 'http://weibo.com/3183884994', 'id=3183884994', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/bdc63ac2jw8f8spa7gcgkj20ro0roq42.jpg', 'XiaoH9_：哈哈哈哈哈你好坏', '2016-10-17 13:33:37');
INSERT INTO `t_sina_weibo` VALUES ('241', '邓超', '从你的全世界路过', '4031386211622574', 'http://weibo.com/2116953255', 'id=2116953255', 'http://tva4.sinaimg.cn/crop.0.0.0.0.50/7e2e24a7tw1ebuz8oxx09j20500500sp.jpg', '佳宝Qt-：星义春树清忠祥宗', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('242', '邓超', '从你的全世界路过', '4031385927034218', 'http://weibo.com/1526147551', 'id=1526147551', 'http://tva1.sinaimg.cn/crop.0.96.421.421.50/5af729dfgw1f8v37uox8jj20br0gg400.jpg', '荣耀勇士hero梦：顶你 ！ 学霸 ！', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('243', '邓超', '从你的全世界路过', '4031385700006444', 'http://weibo.com/1526147551', 'id=1526147551', 'http://tva1.sinaimg.cn/crop.0.96.421.421.50/5af729dfgw1f8v37uox8jj20br0gg400.jpg', '荣耀勇士hero梦：we are 伐木累！', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('244', '邓超', '从你的全世界路过', '4031383955469771', 'http://weibo.com/agao119', 'id=1621009533', 'http://tva1.sinaimg.cn/crop.0.1.640.640.50/609ea47djw8eke90pblnej20hs0huwfa.jpg', '焦糖阿啾：今天和男友一起去看了从你的全世界路过，超哥！太不得了了，我一会儿哭一会儿笑的，觉得大家都演的那么好！你演的超级好！！！', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('245', '邓超', '从你的全世界路过', '4031383095624555', 'http://weibo.com/2184713164', 'id=2184713164', 'http://tva4.sinaimg.cn/crop.0.1.510.510.50/823813ccjw8f076pegdzzj20e60e8gmf.jpg', '六尘不改悟空酱：做你的男人', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('246', '邓超', '从你的全世界路过', '4031382147059039', 'http://weibo.com/1555483671', 'id=1555483671', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/5cb6cc17jw1e8qgp5bmzyj2050050aa8.jpg', '开始警戒：昨晚竟然梦见我绑架你了，超，出门要注意安全呀！', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('247', '邓超', '从你的全世界路过', '4031382004996598', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('248', '邓超', '从你的全世界路过', '4031381992333967', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('249', '邓超', '从你的全世界路过', '4031381547590112', 'http://weibo.com/5821706723', 'id=5821706723', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006lZhRxjw8f4w8u0g2etj30ig0ig0tv.jpg', '小仙女开怡欧妮：我的天呐，我可是去电影院看了三遍 第一次全程哭到崩溃 第二次十八死的时候，打双闪的时候，陈末戴着面具在天台上哭的时候，还有荔枝的导航仪无法关机的时候哭到崩溃 第三次我就有笑的时候了 就比如陈末突然的一句蓝莲花吓死宝宝了@邓超', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('250', '邓超', '从你的全世界路过', '4031380575331147', 'http://weibo.com/5861329879', 'id=5861329879', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006oFxEHjw1f13a2njgz0j305k05kgln.jpg', '梁丘读狠：$', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('251', '邓超', '从你的全世界路过', '4031379828356337', 'http://weibo.com/5690453022', 'id=5690453022', 'http://tva3.sinaimg.cn/crop.0.0.641.641.50/006d6yMmjw8f2wpwjvvplj30ht0htaav.jpg', '少年An丶：超哥', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('252', '邓超', '从你的全世界路过', '4031377944668696', 'http://weibo.com/5976672441', 'id=5976672441', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006wtvwBjw1f5iyfkzda5j305k05kt9f.jpg', '左右剂墙盗：图片评论', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('253', '邓超', '从你的全世界路过', '4031377261712363', 'http://weibo.com/3517899617', 'id=3517899617', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/d1aee361jw8f2yzc9gmm5j20ig0igdh1.jpg', '菌撒：超', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('254', '邓超', '从你的全世界路过', '4031376896940053', 'http://weibo.com/5365938765', 'id=5365938765', 'http://tva2.sinaimg.cn/crop.151.44.408.408.50/005R8VNrjw8f89nathw79j30kf0eqdj6.jpg', '我们像一首美丽的歌曲i：77777777777777777777777777777777777777777777777777777777777777777777777777777', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('255', '邓超', '从你的全世界路过', '4031376384544568', 'http://weibo.com/3185364770', 'id=3185364770', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/bddccf22jw8f4kvd2d1krj20hs0hs751.jpg', 'monmonho：我', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('256', '邓超', '从你的全世界路过', '4031375357435880', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:38');
INSERT INTO `t_sina_weibo` VALUES ('257', '邓超', '从你的全世界路过', '4031373226536087', 'http://weibo.com/5679116015', 'id=5679116015', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006ckZvpjw8f7eznnbl1mj30ro0rp3zg.jpg', '姑凉不哭站起来撸l：我的生日', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('258', '邓超', '从你的全世界路过', '4031373121619659', 'http://weibo.com/5679116015', 'id=5679116015', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006ckZvpjw8f7eznnbl1mj30ro0rp3zg.jpg', '姑凉不哭站起来撸l：上映就是我的生日', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('259', '邓超', '从你的全世界路过', '4031372970312107', 'http://weibo.com/5923187930', 'id=5923187930', 'http://tva1.sinaimg.cn/crop.0.0.200.200.50/006sR5Lcjw1f3n8xhdjgqj305k05kdfp.jpg', '逄账仔痉腔：}', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('260', '邓超', '从你的全世界路过', '4031372773311063', 'http://weibo.com/2373996364', 'id=2373996364', 'http://tva4.sinaimg.cn/crop.0.0.1080.1080.50/8d804f4cjw8ejr7ihzejlj20u00u0why.jpg', 'BBBBelieber_LYJ__：把我介绍给你鹿儿子。', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('261', '邓超', '从你的全世界路过', '4031371594222118', 'http://weibo.com/5862128196', 'id=5862128196', 'http://tva2.sinaimg.cn/crop.8.0.495.495.50/006oITkMjw8f7nahdxprjj30e80drt8x.jpg', '1997年10月28日：(', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('262', '邓超', '从你的全世界路过', '4031371448610555', 'http://weibo.com/5628064600', 'id=5628064600', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/0068SMHujw8f467wfe5fcj30ro0rpwgo.jpg', '敲诈那天他说的爱情：从你的全世界路过 不回头的走下去', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('263', '邓超', '从你的全世界路过', '4031371301676156', 'http://weibo.com/5628064600', 'id=5628064600', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/0068SMHujw8f467wfe5fcj30ro0rpwgo.jpg', '敲诈那天他说的爱情：想评论突然忘记了这个电影叫什么名字子了', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('264', '邓超', '从你的全世界路过', '4031370873719183', 'http://weibo.com/2448394747', 'id=2448394747', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/91ef89fbjw1e8qgp5bmzyj2050050aa8.jpg', 'SayHelloToTomorrow：挺喜欢看你电影的，但是自从看了上次慈善捐款的情况，和搜到一些慈善的信息突然有种感觉，你人挺假的！希望感觉是错误的吧，真的感觉你做人好假！如果真的是这样，两年内你必定沉沦了，没有人是啥子', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('265', '邓超', '从你的全世界路过', '4031370432551041', 'http://weibo.com/5895851273', 'id=5895851273', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006r0ofnjw8f2rneslti4j30ig0ig3zb.jpg', '不愿意透露姓名的陶子墨：超哥，我知道你是一个温暖贴心并且看微博评论的人，其实我就是想说:能给一份电影里的插曲原声么。。。我带朋友去影院看了两次，特别喜欢那个钢琴的插曲原声……@邓超', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('266', '邓超', '从你的全世界路过', '4031370399128351', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('267', '邓超', '从你的全世界路过', '4031370387345164', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('268', '邓超', '从你的全世界路过', '4031368470083036', 'http://weibo.com/3932689206', 'id=3932689206', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/ea681336jw8f89sstfevfj20hs0hsjs0.jpg', '二线城市某大学糙汉：caogewanan', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('269', '邓超', '从你的全世界路过', '4031368353114283', 'http://weibo.com/2818104242', 'id=2818104242', 'http://tva3.sinaimg.cn/crop.0.0.1006.1006.50/a7f8dbb2jw8f82fcinkaej20ry0rywgm.jpg', '阿尔法747：来来来', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('270', '邓超', '从你的全世界路过', '4031368122499377', 'http://weibo.com/6019738784', 'id=6019738784', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006zod32jw8f7rt8p6fuhj30ig0igt9d.jpg', '阿囡的囧时光：从雷雷到现在，都说你从男神变成了男神经，我知道，你一直没有变永远支持你，我的超超~', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('271', '邓超', '从你的全世界路过', '4031367744181795', 'http://weibo.com/1778614623', 'id=1778614623', 'http://tva2.sinaimg.cn/crop.0.0.438.438.50/6a03815fjw8f6qyuebdcxj20c60c6aaf.jpg', '听说傻狍子和奶包更配：粑粑，我负责把你儿砸带回家好不好', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('272', '邓超', '从你的全世界路过', '4031367555638748', 'http://weibo.com/2238735061', 'id=2238735061', 'http://tva2.sinaimg.cn/crop.14.0.722.722.50/857062d5jw8f7x2ygld7jj20ku0k2mym.jpg', '蒋程陈：从你的全世界路过', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('273', '邓超', '从你的全世界路过', '4031367462929013', 'http://weibo.com/5924359500', 'id=5924359500', 'http://tva4.sinaimg.cn/crop.0.0.40.40.50/006sW0xujw8f3ofh9jgqbj3014014741.jpg', 'kico80273：超哥什么时候再拍电视剧', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('274', '邓超', '从你的全世界路过', '4031367215937689', 'http://weibo.com/5186895725', 'id=5186895725', 'http://tva1.sinaimg.cn/crop.0.7.498.498.50/005F1Gwtjw8f8s3py84x9j30du0e83yr.jpg', 'Wapril-1：晚安', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('275', '邓超', '从你的全世界路过', '4031366457233375', 'http://weibo.com/5924359500', 'id=5924359500', 'http://tva4.sinaimg.cn/crop.0.0.40.40.50/006sW0xujw8f3ofh9jgqbj3014014741.jpg', 'kico80273：回复@琳琳琳琳琳美琳:你自己原地爆炸好了', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('276', '邓超', '从你的全世界路过', '4031365828163572', 'http://weibo.com/5923169965', 'id=5923169965', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/006sR15rjw8f5kridb4kqj30yi0yigo5.jpg', 'WWWW-tianz：#我们的约会#', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('277', '邓超', '从你的全世界路过', '4031364959850257', 'http://weibo.com/5569903324', 'id=5569903324', 'http://tva2.sinaimg.cn/crop.0.5.502.502.50/0064WKiojw8f8tjd702fhj30dy0e83zp.jpg', 'Davis等待：厉害了，我的歌', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('278', '邓超', '从你的全世界路过', '4031364879821068', 'http://weibo.com/3747331933', 'id=3747331933', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/df5bbf5djw8f8s979b6mwj20ro0rp76d.jpg', '烟囱里的麋鹿：看这个片子让我想起烈日灼心   是个专业的好演员  加油  希望你可以一直带来好的作品 加油！', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('279', '邓超', '从你的全世界路过', '4031364293091263', 'http://weibo.com/6048685545', 'id=6048685545', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '让一切随风而去1：超超喜欢你', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('280', '邓超', '从你的全世界路过', '4031363587418823', 'http://weibo.com/3247362435', 'id=3247362435', 'http://tva1.sinaimg.cn/crop.0.1.510.510.50/c18ed183jw8f8ae0s8u18j20e60e8t99.jpg', '周昭也行：票房大卖。', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('281', '邓超', '从你的全世界路过', '4031363558676353', 'http://weibo.com/5647511983', 'id=5647511983', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006acnQXjw8f8ulf1glanj30ig0ig754.jpg', '竹也仙：单纯的我再也不会被你骗到了', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('282', '邓超', '从你的全世界路过', '4031363374042834', 'http://weibo.com/5524337226', 'id=5524337226', 'http://tva1.sinaimg.cn/crop.0.15.750.750.50/0061Rytkjw8f8c198ow1rj30ku0lpgnd.jpg', 'RO完：雷雷～雷雷～', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('283', '邓超', '从你的全世界路过', '4031363243664979', 'http://weibo.com/chloebabehuang', 'id=1850381804', 'http://tva4.sinaimg.cn/crop.14.0.722.722.50/6e4a95ecjw8f6x5ls4so4j20ku0k2js6.jpg', '五彩斑斓的绵羊C：答应我 以后别再非要演喜剧了…', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('284', '邓超', '从你的全世界路过', '4031363239468887', 'http://weibo.com/6046090812', 'id=6046090812', 'http://tva4.sinaimg.cn/crop.0.15.750.750.50/006BaMpKjw8f8ujp9aohej30ku0lpgmm.jpg', '用户6046090812：超哥以后多多拍戏！好喜欢你的戏！你是我的偶像', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('285', '邓超', '从你的全世界路过', '4031362686175922', 'http://weibo.com/5923167056', 'id=5923167056', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006sR0kwjw1f3n59oqypgj305k05ka9v.jpg', '钭蛹飞闲雍：#我们的约会#', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('286', '邓超', '从你的全世界路过', '4031362505672195', 'http://weibo.com/6025643416', 'id=6025643416', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006zMZ72jw8f8l8wzcalxj30ku0kut8v.jpg', 'Mr_明哥吖：哎呀，我老喜欢你了。', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('287', '邓超', '从你的全世界路过', '4031360719411245', 'http://weibo.com/5262434446', 'id=5262434446', 'http://tva2.sinaimg.cn/crop.0.0.1080.1080.50/005K8DAWjw8ezl23pbzt4j30u00u0q4m.jpg', '年少多金A：不拍跑男了？', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('288', '邓超', '从你的全世界路过', '4031360718343189', 'http://weibo.com/xiaoyumao5', 'id=2160682891', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/80c9678bjw8f7wcmhljx8j20yi0yitde.jpg', 'xiao羽毛航行记：我的天！怎么还没抽', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('289', '邓超', '从你的全世界路过', '4031360295717674', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱你们都', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('290', '邓超', '从你的全世界路过', '4031360048191100', 'http://weibo.com/5596409357', 'id=5596409357', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/0066JXJ3jw8f5h4m0nk04j30ro0rpn1a.jpg', '喋喋瘫：我就这么静静的看着你', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('291', '邓超', '从你的全世界路过', '4031359519489353', 'http://weibo.com/5922167821', 'id=5922167821', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006sMOnPjw1f3n4ipn6lej305k05kwed.jpg', '郜断世谫池：#我们的约会#', '2016-10-17 13:33:39');
INSERT INTO `t_sina_weibo` VALUES ('292', '邓超', '从你的全世界路过', '4031359519489353', 'http://weibo.com/5922167821', 'id=5922167821', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006sMOnPjw1f3n4ipn6lej305k05kwed.jpg', '郜断世谫池：#我们的约会#', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('293', '邓超', '从你的全世界路过', '4031358877863746', 'http://weibo.com/5596679594', 'id=5596679594', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/0066L61Ijw8f8uk2pgwlnj30hs0hsdgy.jpg', 'Angelology：我要一个大大的爱@邓超', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('294', '邓超', '从你的全世界路过', '4031357954366521', 'http://weibo.com/5889086076', 'id=5889086076', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006qy0jijw8f4ay8irlm2j30ig0igab5.jpg', '天上无地下有：你从我们的全世界路过', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('295', '邓超', '从你的全世界路过', '4031357514759778', 'http://weibo.com/5274393263', 'id=5274393263', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/005KWOD5jw8f779d1rxfjj30ku0kugmq.jpg', '泡芙小姐女神级：很好看 喜欢里面的每一对情侣和剧情 简单的爱情 只想用最简单的方式去爱 特别推荐大家去看', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('296', '邓超', '从你的全世界路过', '4031356989881121', 'http://weibo.com/5453107985', 'id=5453107985', 'http://tva3.sinaimg.cn/crop.0.0.100.100.50/005X2GuBjw8enqjf3syk0j302s02s743.jpg', 'koanh-：为你作死', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('297', '邓超', '从你的全世界路过', '4031356922646905', 'http://weibo.com/5715034090', 'id=5715034090', 'http://tva1.sinaimg.cn/crop.0.0.1125.1125.50/006eLHrcjw8ezrk75oklvj30v90v9gma.jpg', '大王up：给你打电话叫你起床怎么样', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('298', '邓超', '从你的全世界路过', '4031356844036883', 'http://weibo.com/5973367226', 'id=5973367226', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006wfDGGjw8f8tzsw6pyaj30ku0kuq4h.jpg', '脏继离妹妹：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('299', '邓超', '从你的全世界路过', '4031356826413732', 'http://weibo.com/6046946650', 'id=6046946650', 'http://tva2.sinaimg.cn/crop.0.1.1242.1242.50/006Ben3Ajw8f8ujxl3ae2j30yi0ykjue.jpg', '文蜜Baby：超哥的每剧都追 我愿意为你免费去天桥贴膜', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('300', '邓超', '从你的全世界路过', '4031356633186124', 'http://weibo.com/6007053169', 'id=6007053169', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006ywYWljw8f7emp6yotjj30ig0ig769.jpg', '智秀呀：我只想问句，那个狗的表情哪儿来的', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('301', '邓超', '从你的全世界路过', '4031356436017512', 'http://weibo.com/5690145040', 'id=5690145040', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006d5gEUjw8f1dx8lxnn1j30ig0igab1.jpg', '薇薇呀15：一难过就想家', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('302', '邓超', '从你的全世界路过', '4031356311133074', 'http://weibo.com/3022158342', 'id=3022158342', 'http://tva1.sinaimg.cn/crop.0.0.500.500.50/b4227a06jw8f7qkfte296j20dw0kktbp.jpg', 'GAOYUE高跃跃：超哥要存钱拍戏，不能乱花', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('303', '邓超', '从你的全世界路过', '4031356297579273', 'http://weibo.com/5690145040', 'id=5690145040', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006d5gEUjw8f1dx8lxnn1j30ig0igab1.jpg', '薇薇呀15：好难过啊。难过的睡不着，想家，想回家', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('304', '邓超', '从你的全世界路过', '4031355924476167', 'http://weibo.com/5354573312', 'id=5354573312', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005Qnf7Gjw8f85y9j8ihpj30ro0rogn6.jpg', '要粉丝多多：在不发微博，不爱你了', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('305', '邓超', '从你的全世界路过', '4031355823794381', 'http://weibo.com/5764688604', 'id=5764688604', 'http://tva1.sinaimg.cn/crop.0.0.1536.1536.50/006i82Qsjw8ey65wuzv4wj316o16o441.jpg', '月夕花晨008：@邓超 我跑了170多公里就为看你电影，可我手机赔起', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('306', '邓超', '从你的全世界路过', '4031355530699545', 'http://weibo.com/5764688604', 'id=5764688604', 'http://tva1.sinaimg.cn/crop.0.0.1536.1536.50/006i82Qsjw8ey65wuzv4wj316o16o441.jpg', '月夕花晨008：回复@月夕花晨008:我哭', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('307', '邓超', '从你的全世界路过', '4031355526501819', 'http://weibo.com/3332541590', 'id=3332541590', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/c6a28c96jw8f63lbegvphj20ro0rpabi.jpg', '憧憬北极星的约定：俗话说：天涯何处无芳草，春风一吹绿油油。你这一绿起来呀，挡都挡不住', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('308', '邓超', '从你的全世界路过', '4031355391700389', 'http://weibo.com/5764688604', 'id=5764688604', 'http://tva1.sinaimg.cn/crop.0.0.1536.1536.50/006i82Qsjw8ey65wuzv4wj316o16o441.jpg', '月夕花晨008：回复@月夕花晨008:你知道吗？我为看你的电影要跑170多公里，赔钱。。', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('309', '邓超', '从你的全世界路过', '4031354880864578', 'http://weibo.com/1782228942', 'id=1782228942', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/6a3aa7cejw8f87c1a0spjj20ku0kv75n.jpg', '江江江--江小花：四岁的小屁孩从下午四点多等到晚上十点，就为了看你一眼（主要太迷跑男）结果哭瞎，乌漆吗黑被挤的啥都看不到', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('310', '邓超', '从你的全世界路过', '4031354628591048', 'http://weibo.com/3216743860', 'id=3216743860', 'http://tva3.sinaimg.cn/crop.0.4.750.750.50/bfbb9db4jw8f5li66slbhj20ku0l2t9k.jpg', '蓝莓酱妮：学霸，跟男朋友闹矛盾自己去看从你的全世界路过，哭的稀里哗啦的时候被你一句 蓝莲花啊啊啊逗笑…很喜欢你和娘娘，希望你们一直好好的，走进的世界不会路过。', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('311', '邓超', '从你的全世界路过', '4031353945228304', 'http://weibo.com/3738137810', 'id=3738137810', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/decf74d2jw8etm37ehgz0j20e80e8aao.jpg', '琳琳琳琳琳美琳：滚犊子不捐款，你俩太狗逼了，挣得钱留着给你儿子治绝症吧', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('312', '邓超', '从你的全世界路过', '4031353864939621', 'http://weibo.com/5827733005', 'id=5827733005', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006mozzDjw8f3m31rzbz4j30ig0iggo3.jpg', '岁月随心公馆186：解释一下为什么无厘头的把茅十八写死了吗', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('313', '邓超', '从你的全世界路过', '4031352556692205', 'http://weibo.com/2354365761', 'id=2354365761', 'http://tva2.sinaimg.cn/crop.0.1.1242.1242.50/8c54c541jw8evbrroj4r9j20yi0yldhy.jpg', '我是闪闪我会发光i：你若抽我，我便晴天。@邓超', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('314', '邓超', '从你的全世界路过', '4031352230049601', 'http://weibo.com/5891306759', 'id=5891306759', 'http://tva2.sinaimg.cn/crop.0.0.498.498.50/006qHk0Ljw8f8s6yxcn2uj30du0duq33.jpg', '小太阳鹿过心上：超哥，今天去看了你的电影，你演的非常棒，我非常喜欢这部电影，更非常喜欢你', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('315', '邓超', '从你的全世界路过', '4031352091669769', 'http://weibo.com/1897216055', 'id=1897216055', 'http://tva2.sinaimg.cn/crop.0.0.1241.1241.50/71153837jw8f7zg9raqm7j20yi0yhwhr.jpg', '1996228静：超哥我爱你，男人味十足', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('316', '邓超', '从你的全世界路过', '4031351835305991', 'http://weibo.com/2849497671', 'id=2849497671', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/a9d7e247jw8f8unzas5otj20ku0kugmt.jpg', '你是虞姬：帮你叫女儿跳舞！', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('317', '邓超', '从你的全世界路过', '4031351646645115', 'http://weibo.com/2063972277', 'id=2063972277', 'http://tva4.sinaimg.cn/crop.0.0.512.512.50/7b05b7b5jw8f8jdg4vnhvj20e80e8wew.jpg', '楊美云May_：我可以带你去路边贴膜', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('318', '邓超', '从你的全世界路过', '4031350945620174', 'http://weibo.com/wangxiaoxii', 'id=2825509352', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/a869d9e8jw8f5srgg5c7zj20ku0ku0u6.jpg', '王梦瑶Er：超哥如果可以回复我 我生吞五箱洗发水 抄全集新闻联播 徒手劈榴莲 胸口碎大石 脑门磕砖头 蹦极不带绳 外加空手接白刃 生吃帶皮橘子 手抄中华字典 成语词典 英汉词典 道德经 三字经 山海经 唐诗三百首 宋词五百首 一晚上写完所有卷子  别赞了', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('319', '邓超', '从你的全世界路过', '4031350820292437', 'http://weibo.com/5615727914', 'id=5615727914', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006831mGjw8f7xuq0ysrbj30ro0rp0wc.jpg', '草莓味的LOVE：为你做的就是好好支持你！', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('320', '邓超', '从你的全世界路过', '4031350362906146', 'http://weibo.com/6047521339', 'id=6047521339', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006BgMyLjw8f8udunrw4ej30ro0rp76l.jpg', '日落照空城：期待跑男', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('321', '邓超', '从你的全世界路过', '4031349986127043', 'http://weibo.com/3710822307', 'id=3710822307', 'http://tva2.sinaimg.cn/crop.0.0.512.512.50/dd2ea7a3jw8f8rk2l8b42j20e80e8wel.jpg', '江直樹同學我是F班的袁湘琴：我妈，我二姨，我小姨周六去看呀。组团去呀。 ¡查看图片', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('322', '邓超', '从你的全世界路过', '4031349343939332', 'http://weibo.com/5508817111', 'id=5508817111', 'http://tva4.sinaimg.cn/crop.0.0.438.438.50/0060OqYTjw8f8awvz26ykj30c60c6wek.jpg', '烊烊的花痴女友：', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('323', '邓超', '从你的全世界路过', '4031349310781924', 'http://weibo.com/6014407425', 'id=6014407425', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '你会做蛋炒饭么：回复@邓超:男神', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('324', '邓超', '从你的全世界路过', '4031349243419634', 'http://weibo.com/2356499762', 'id=2356499762', 'http://tva1.sinaimg.cn/crop.0.25.1242.1242.50/8c755532jw8f6ea6abrmpj20yi0zxdhr.jpg', '莫奈奈奈酱snidel：看过了', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('325', '邓超', '从你的全世界路过', '4031349151035733', 'http://weibo.com/2151229582', 'id=2151229582', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/8039288ejw1e8qgp5bmzyj2050050aa8.jpg', '张小姐狠桑心：一定要抽中我，超哥！看在我为了这部电影重新开启封号3年的份上', '2016-10-17 13:33:41');
INSERT INTO `t_sina_weibo` VALUES ('326', '邓超', '从你的全世界路过', '4031348886734005', 'http://weibo.com/1791917264', 'id=1791917264', 'http://tva3.sinaimg.cn/crop.0.0.180.180.50/6ace7cd0jw1e8qgp5bmzyj2050050aa8.jpg', 'Z叶清晨：刚看完从你的全世界路过，头一次觉得你好帅，朋友都说你的演技撑起了整个电影。', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('327', '邓超', '从你的全世界路过', '4031348719456181', 'http://weibo.com/5013588060', 'id=5013588060', 'http://tva1.sinaimg.cn/crop.0.0.480.480.50/005tivhyjw8ejxbre8p6tj30dc0dcaag.jpg', '刘亚南only：今晚看了，从你的全世界路过， 我超棒的无话可说  爱超永恒', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('328', '邓超', '从你的全世界路过', '4031348538445685', 'http://weibo.com/xunzhaoangel', 'id=1616500460', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/6059d6ecjw1e8qgp5bmzyj2050050aa8.jpg', '缘寻梦：你想做啥··随你··', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('329', '邓超', '从你的全世界路过', '4031348391722326', 'http://weibo.com/whn665905', 'id=2353371623', 'http://tva2.sinaimg.cn/crop.0.0.199.199.50/8c4599e7gw1efht6eq7woj205k05kjrk.jpg', '吴慧娜丶：@邓超 大帅 11月底的命运交给你', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('330', '邓超', '从你的全世界路过', '4031347968929000', 'http://weibo.com/1451163921', 'id=1451163921', 'http://tva1.sinaimg.cn/crop.0.15.640.640.50/567f0111jw8f8dkual7lbj20hs0inmym.jpg', '我和大头儿子的一天：哦，转发好多次了！超哥，幸运之神在哪？@邓超', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('331', '邓超', '从你的全世界路过', '4031347855451439', 'http://weibo.com/3807777317', 'id=3807777317', 'http://tva1.sinaimg.cn/crop.1.0.637.637.50/e2f61225jw8f4w6lfo37mj20hs0hp759.jpg', '傻子一般比较二：绝对的很好！', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('332', '邓超', '从你的全世界路过', '4031347783607207', 'http://weibo.com/5496278529', 'id=5496278529', 'http://tva4.sinaimg.cn/crop.0.1.510.510.50/005ZXP7Hjw8f1yhvxt1vcj30e60e80t3.jpg', '懒懒嗡：回复@一疑已毅-:哈哈哈哈哈', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('333', '邓超', '从你的全世界路过', '4031347729642764', 'http://weibo.com/3874143914', 'id=3874143914', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/e6eabeaajw8f8ger3jbcnj20ro0rptaf.jpg', '丽Jynhyd：骗子', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('334', '邓超', '从你的全世界路过', '4031346978726284', 'http://weibo.com/2540195754', 'id=2540195754', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/97684faajw8f55pl7i56dj20yi0yigp3.jpg', '井幽幽_小公举：我给差评。浪费了电影票钱。', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('335', '邓超', '从你的全世界路过', '4031346211084485', 'http://weibo.com/5696717391', 'id=5696717391', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006dwQqzjw8f1vob1c280j30ro0rpmzl.jpg', '吴小白520：我觉得看评论比正文好', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('336', '邓超', '从你的全世界路过', '4031345434768284', 'http://weibo.com/1964626745', 'id=1964626745', 'http://tva2.sinaimg.cn/crop.56.0.300.300.50/7519d339gw1elzhi87nyjj20cb08eab2.jpg', '韩泽枫：我是一个不知名的原创音乐人，我很热爱音乐，但是能力有限，仅此宣传，如果有缘看到，能否给我几分钟，听听我写的歌，我会努力的，谢谢大家，愿你的好梦也能被温柔对待', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('337', '邓超', '从你的全世界路过', '4031345133020247', 'http://weibo.com/5381259142', 'id=5381259142', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/005Sbdkijw8f8uimq7fqlj30ig0iggln.jpg', '九月璴：', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('338', '邓超', '从你的全世界路过', '4031344717903136', 'http://weibo.com/5977687160', 'id=5977687160', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006wxLv2jw1f5lcdaxlokj305k05kt93.jpg', '刘躲竿选稠扶：$', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('339', '邓超', '从你的全世界路过', '4031343803233082', 'http://weibo.com/5450825525', 'id=5450825525', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005WT6IJjw8f1r3mk4ahbj30ro0rpmyr.jpg', 'miss猫大爷：希望能有机会和你合个影，超哥', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('340', '邓超', '从你的全世界路过', '4031343560697692', 'http://weibo.com/2738864371', 'id=2738864371', 'http://tva1.sinaimg.cn/crop.0.0.0.0.50/a33fc0f3jw1eeryhny5vbj2050050wed.jpg', '食丶堂左转第六个窗口：超哥爱你~', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('341', '邓超', '从你的全世界路过', '4031343527071587', 'http://weibo.com/3104858665', 'id=3104858665', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/b9106229jw8f2tm7mkyjkj20ig0igq41.jpg', '往幸福的地方飞：超哥，我们强烈要求你带等等参加爸爸去哪儿@邓超', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('342', '邓超', '从你的全世界路过', '4031343522648885', 'http://weibo.com/5162295457', 'id=5162295457', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005DmsRXjw8f7ld5z20fjj30ro0rp0vp.jpg', '董成鹏家的二牛：我可以教你数学@邓超', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('343', '邓超', '从你的全世界路过', '4031342817865800', 'http://weibo.com/5199671705', 'id=5199671705', 'http://tva3.sinaimg.cn/crop.0.1.750.750.50/005FTi8Fjw8f6mq08pr7vj30ku0kwac0.jpg', 'Zy阴雨天：超哥下次拍这么这么好的电影叫上我呀，咸鱼也有梦想', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('344', '邓超', '从你的全世界路过', '4031342695601264', 'http://weibo.com/6019331906', 'id=6019331906', 'http://tva4.sinaimg.cn/crop.0.0.438.438.50/006zmvcujw8f89ob4ht8hj30c60c6aaf.jpg', '宝滢滢6019331906：那么多人，你能看到或感觉到我的存吗？', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('345', '邓超', '从你的全世界路过', '4031342658686895', 'http://weibo.com/5536980962', 'id=5536980962', 'http://tva2.sinaimg.cn/crop.0.0.512.512.50/0062IBGyjw8f6smh7ktfej30e80e8dg8.jpg', '微笑学习：茅十八', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('346', '邓超', '从你的全世界路过', '4031342519398161', 'http://weibo.com/5394607346', 'id=5394607346', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/005T5dNUjw8epqkwwmd05j30k00k0q3v.jpg', '123zd婷：看完电影 我想知道奔5什么时候开播，期待着呢！', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('347', '邓超', '从你的全世界路过', '4031342326842148', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱这个', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('348', '邓超', '从你的全世界路过', '4031342008518416', 'http://weibo.com/3891755300', 'id=3891755300', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/e7f77924jw8ep23qj0sp6j20hs0hsq43.jpg', '白浅上神NO1：我我', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('349', '邓超', '从你的全世界路过', '4031341475509618', 'http://weibo.com/lingpingxiaomi', 'id=1937681453', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/737eac2djw8f83w2pw0hmj20ro0rodi7.jpg', '卖面包的小米：最是人间留不住，朱颜辞镜花辞树。看完一整场下来，最是情深难赋', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('350', '邓超', '从你的全世界路过', '4031341437708856', 'http://weibo.com/3277601585', 'id=3277601585', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/c35c3b31jw8enhbgxbx4sj20u00u041h.jpg', 'xxy萧2013：真的吗真的吗', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('351', '邓超', '从你的全世界路过', '4031341382726786', 'http://weibo.com/5353719028', 'id=5353719028', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/005QjESUjw8f3486sywiwj30ku0kugm8.jpg', 'Allen-HDs：我昨天才看的，真心不错。好喜欢那个太子妃呀真美', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('352', '邓超', '从你的全世界路过', '4031341127411510', 'http://weibo.com/5231416074', 'id=5231416074', 'http://tva1.sinaimg.cn/crop.0.0.374.374.50/005I2uiCjw8ejr19f3yprj30ae0aejrq.jpg', '加油皮卡丘阿扎阿扎：已看', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('353', '邓超', '从你的全世界路过', '4031340619451529', 'http://weibo.com/futing38783', 'id=5012418524', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/005tdB24jw8f8ky3tu5mfj30ro0rp76l.jpg', 'Littlebabylou：今天刚去看的', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('354', '邓超', '从你的全世界路过', '4031340448107602', 'http://weibo.com/boneyxie1029', 'id=1272557830', 'http://tva4.sinaimg.cn/crop.0.5.1536.1536.50/4bd9b106jw8f8pdqrirudj216o16ywh4.jpg', '虫圭虫圭虫圭虫圭虫圭：导演，我躺哪？', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('355', '邓超', '从你的全世界路过', '4031340338363032', 'http://weibo.com/5720889680', 'id=5720889680', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5720889680：。。。。', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('356', '邓超', '从你的全世界路过', '4031340263996745', 'http://weibo.com/2594289573', 'id=2594289573', 'http://tva2.sinaimg.cn/crop.0.0.749.749.50/9aa1b7a5jw8ersmhrbr2bj20ku0ktta1.jpg', '小兰兰要减肥：稻城亚丁好美，想和心爱的人去。', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('357', '邓超', '从你的全世界路过', '4031340121052648', 'http://weibo.com/boneyxie1029', 'id=1272557830', 'http://tva4.sinaimg.cn/crop.0.5.1536.1536.50/4bd9b106jw8f8pdqrirudj216o16ywh4.jpg', '虫圭虫圭虫圭虫圭虫圭：我是七子之一么，偶像', '2016-10-17 13:33:42');
INSERT INTO `t_sina_weibo` VALUES ('358', '邓超', '从你的全世界路过', '4031334793684506', 'http://weibo.com/3178186964', 'id=3178186964', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/bd6f48d4jw8elwncv2x6ij20hs0hs3yv.jpg', '閆顺利：有我25', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('359', '邓超', '从你的全世界路过', '4031334492102763', 'http://weibo.com/5275035564', 'id=5275035564', 'http://tva4.sinaimg.cn/crop.0.12.488.488.50/005KZvIMjw8f8tc6j1numj30dk0e8dg0.jpg', '无辜不知所以然_：求大家帮我扩散一下相机在稻城被偷走了', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('360', '邓超', '从你的全世界路过', '4031334466571579', 'http://weibo.com/5632783239', 'id=5632783239', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/0069cAezjw8f6a4t3r245j30ro0rpac5.jpg', '呀雯几_vanilla：', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('361', '邓超', '从你的全世界路过', '4031334303563821', 'http://weibo.com/2675947581', 'id=2675947581', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/9f7fb83djw8ex8sow34wkj20ku0kugmm.jpg', '孙悟空再见吧：陈末，你好帅', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('362', '邓超', '从你的全世界路过', '4031334085488578', 'http://weibo.com/6042251639', 'id=6042251639', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006AUFFBjw8f8t6qbsyivj30ig0ig3zh.jpg', '陈羽蒙Cynthia：我帮你花钱', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('363', '邓超', '从你的全世界路过', '4031333947365776', 'http://weibo.com/5938290816', 'id=5938290816', 'http://tva4.sinaimg.cn/crop.0.0.179.179.50/006tSsI8jw1f4653l81r1j304z050dft.jpg', '习脖馅习：#我们的约会#', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('364', '邓超', '从你的全世界路过', '4031333313524321', 'http://weibo.com/5970289975', 'id=5970289975', 'http://tva4.sinaimg.cn/default/images/default_avatar_female_50.gif', '配角258489：从你的全世界路过刚上映的时候就去看了，看电影的过程中有哭过笑过，也感悟了好多。 不知道你会不会看到，我只是找个对你说出来我的真实感受', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('365', '邓超', '从你的全世界路过', '4031332994907762', 'http://weibo.com/6046488490', 'id=6046488490', 'http://tva3.sinaimg.cn/crop.0.0.498.498.50/006BcrRUjw8f8srhu2kscj30du0dujs9.jpg', '繁樱落寂：', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('366', '邓超', '从你的全世界路过', '4031332994093200', 'http://weibo.com/5720268083', 'id=5720268083', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006f7F2rjw8f5kc9lx3xgj30ro0rp0x8.jpg', '哈喽哈喽wow：回复@清澈明朗JW:嘻嘻，每次看都有不一样的感受。', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('367', '邓超', '从你的全世界路过', '4031332977490644', 'http://weibo.com/3211230097', 'id=3211230097', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/bf677b91jw8elmk14hwknj20k00k0myr.jpg', '小美人徐欢：帮我带娃一天，哈哈', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('368', '邓超', '从你的全世界路过', '4031332688854261', 'http://weibo.com/3989664858', 'id=3989664858', 'http://tva2.sinaimg.cn/crop.0.9.493.493.50/edcd745ajw8f59nj91z8gj20dp0e8dga.jpg', 'Monkeysunshine：超哥，你唱的电台情歌真的太好听了，刚听，泪就停不下来了今晚睡不着了', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('369', '邓超', '从你的全世界路过', '4031332206539145', 'http://weibo.com/1577992431', 'id=1577992431', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/5e0e40efjw8elc7qtr41vj20k00k0jsk.jpg', 'veek小薇：直播为我煮一碗面吧', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('370', '邓超', '从你的全世界路过', '4031332193504081', 'http://weibo.com/3659832093', 'id=3659832093', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/da249b1djw8evcel7lwjgj20hs0hsaag.jpg', 'jiaxiaomin3：我们已经散了，我知道！我还不死心，我知道！我不会去打扰你，我知道！从你的全世界路过已经很满足了，我知道！', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('371', '邓超', '从你的全世界路过', '4031332004239663', 'http://weibo.com/5785062586', 'id=5785062586', 'http://tva3.sinaimg.cn/default/images/default_avatar_female_50.gif', '季晓宇微博：好长时间没更博了，超哥', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('372', '邓超', '从你的全世界路过', '4031331987458064', 'http://weibo.com/5821036351', 'id=5821036351', 'http://tva4.sinaimg.cn/crop.0.9.640.640.50/006lWtt5jw8f8s9asb4g0j30hs0iawf3.jpg', 'XYCwBgYx：超哥，身边坐的可是薛之谦神似', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('373', '邓超', '从你的全世界路过', '4031331974871558', 'http://weibo.com/2950814900', 'id=2950814900', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/afe1dcb4jw8f0pwcxlkh4j20ku0ku402.jpg', '凌晨yeri：超哥 我终于看见你了', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('374', '邓超', '从你的全世界路过', '4031331639624476', 'http://weibo.com/5193283626', 'id=5193283626', 'http://tva2.sinaimg.cn/crop.89.0.1422.1422.50/005Fsuj8jw8ehqr3z1vq9j318g13ijtd.jpg', 'holdcss：不喜欢结局……', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('375', '邓超', '从你的全世界路过', '4031331509807706', 'http://weibo.com/3244646552', 'id=3244646552', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/c1656098jw8f8hoa2y72ej20ku0kuq4d.jpg', 'w你的孤独虽败犹荣w：任性了我的哥', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('376', '邓超', '从你的全世界路过', '4031331363029923', 'http://weibo.com/5651217674', 'id=5651217674', 'http://tva4.sinaimg.cn/crop.0.0.40.40.50/006arVSajw8eu06dtd1w6j30140140oc.jpg', '用户5651217674：为你贴个膜', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('377', '邓超', '从你的全世界路过', '4031330981195947', 'http://weibo.com/5213076628', 'id=5213076628', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005GNxn6jw8f8uh7ul0hhj30ig0igdh1.jpg', 'Xt情归旅途：我叫七七', '2016-10-17 13:33:44');
INSERT INTO `t_sina_weibo` VALUES ('378', '邓超', '从你的全世界路过', '4031330910263697', 'http://weibo.com/5330711280', 'id=5330711280', 'http://tva1.sinaimg.cn/crop.0.0.100.100.50/005OL7wcjw8elunne86q9j302s02sjr8.jpg', 'sjdbd_125：转发微博', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('379', '邓超', '从你的全世界路过', '4031330730037780', 'http://weibo.com/2610946825', 'id=2610946825', 'http://tva4.sinaimg.cn/crop.10.0.492.492.50/9b9fe309jw8f8iwvcc05lj20e80do3ze.jpg', '範二霖：今天还去看了', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('380', '邓超', '从你的全世界路过', '4031330662516462', 'http://weibo.com/1787322740', 'id=1787322740', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/6a886174jw8f3tiyed6z7j20hs0hsq4d.jpg', '韩夫人是太阳的二代后裔：献上我深情的一巴掌', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('381', '邓超', '从你的全世界路过', '4031330130267371', 'http://weibo.com/2929763182', 'id=2929763182', 'http://tva4.sinaimg.cn/crop.0.0.438.438.50/aea0a36ejw8f1v0atchd7j20c60c6q3c.jpg', 'Jacbert：@邓超 超，晚安。', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('382', '邓超', '从你的全世界路过', '4031330092015773', 'http://weibo.com/5756728885', 'id=5756728885', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5756728885：今晚刚去影院看了，特别喜欢，一如既往的你支持超哥', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('383', '邓超', '从你的全世界路过', '4031329786380738', 'http://weibo.com/5188804029', 'id=5188804029', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/005F9GXzjw8f897exkhnrj30yi0yiach.jpg', '执着于CPA的皮皮：抽我啊', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('384', '邓超', '从你的全世界路过', '4031329756055447', 'http://weibo.com/5869480903', 'id=5869480903', 'http://tva4.sinaimg.cn/crop.0.0.438.438.50/006pdK6Pjw8f1igx7hinzj30c60c6dgf.jpg', '清澈明朗JW：回复@哈喽哈喽wow:我也超爱《相爱十年》', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('385', '邓超', '从你的全世界路过', '4031329714102783', 'http://weibo.com/3659908504', 'id=3659908504', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/da25c598jw8f6gqcdxgtqj20ig0ig751.jpg', 'tianlurr：做你儿媳妇？', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('386', '邓超', '从你的全世界路过', '4031329702309083', 'http://weibo.com/zy3349', 'id=2895393460', 'http://tva4.sinaimg.cn/crop.122.24.360.360.50/ac9432b4gw1eyanwhh4h0j20go0b40ti.jpg', '南京战友国际旅行社：戴上这个帽子更帅哦', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('387', '邓超', '从你的全世界路过', '4031329647299190', 'http://weibo.com/5232672805', 'id=5232672805', 'http://tva1.sinaimg.cn/crop.0.0.480.480.50/005I7Letjw8exqsu1muh4j30dc0dcmxp.jpg', '费浩然ran：有点想吃面了，都怪你', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('388', '邓超', '从你的全世界路过', '4031329068822055', 'http://weibo.com/3174624214', 'id=3174624214', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/bd38ebd6jw8f6ea4zra4jj20ig0ig0tr.jpg', '_南风予篱_：为你做点什么？，嗯...我想想...陪你看雪看星星看月亮，从诗词歌赋谈到人生哲学？', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('389', '邓超', '从你的全世界路过', '4031328699695323', 'http://weibo.com/6045755789', 'id=6045755789', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006B9ng9jw8f8t73cl84fj30ig0ig0u2.jpg', '立夏几望：本来打算看从你的全世界路过的，可是晚点了，无奈看完了另一部烂片', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('390', '邓超', '从你的全世界路过', '4031328426849390', 'http://weibo.com/3848440194', 'id=3848440194', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/e5628982jw8f76elppmnjj20ro0rp3zl.jpg', '言之命至-挚：能给我快乐吗？', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('391', '邓超', '从你的全世界路过', '4031327957577564', 'http://weibo.com/2704215034', 'id=2704215034', 'http://tva3.sinaimg.cn/crop.0.9.640.640.50/a12f0bfajw8f8jxuzz3bgj20hs0ibq3k.jpg', '1Nine99：要等等可以吗', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('392', '邓超', '从你的全世界路过', '4031327688875239', 'http://weibo.com/5720268083', 'id=5720268083', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006f7F2rjw8f5kc9lx3xgj30ro0rp0x8.jpg', '哈喽哈喽wow：今天又重温了一遍《相爱十年》，太棒啦', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('393', '邓超', '从你的全世界路过', '4031327605408785', 'http://weibo.com/3928815246', 'id=3928815246', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/ea2cf68ejw8f640dnnm4kj20ig0ig0te.jpg', '罗莉不萝莉uu：呦呦切克闹，超哥智障我知道', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('394', '邓超', '从你的全世界路过', '4031327319103148', 'http://weibo.com/5308175937', 'id=5308175937', 'http://tva2.sinaimg.cn/crop.0.1.750.750.50/005Nez2Vjw8f5l2ehtlhej30ku0kxgmw.jpg', '丫梨5308175937：因为要准备考试，一直迟迟没去。今晚去看了，看到陈末开车撞向小容车的那一下，哭了。突然那下特别的心疼他！', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('395', '邓超', '从你的全世界路过', '4031327181850564', 'http://weibo.com/6026178333', 'id=6026178333', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006zPegJjw8f8t9pg6fe7j30ig0ig40j.jpg', '用户6026178333：超哥，什么时候出跑男噢？', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('396', '邓超', '从你的全世界路过', '4031326476674799', 'http://weibo.com/2198763560', 'id=2198763560', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/830e7828jw8f22jeg5niqj20ro0ron3p.jpg', '2017要去一次北海道：希望你能再次回归电视剧，期待ing', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('397', '邓超', '从你的全世界路过', '4031325755109700', 'http://weibo.com/6012513815', 'id=6012513815', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006yTTvhjw1f79g835fkhg305k05kwrd.gif', '慕蔽跑慕：', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('398', '邓超', '从你的全世界路过', '4031325705392628', 'http://weibo.com/5647429913', 'id=5647429913', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/006ac2vfjw8ey9tfmvr9zj30k00k0wgw.jpg', '妞别耍脾气14900：哇咔咔', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('399', '邓超', '从你的全世界路过', '4031325595861930', 'http://weibo.com/6045735825', 'id=6045735825', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/006B9i49jw8f8t2pdrp9gj30c60c6jrr.jpg', '微微微微凉love：我想要跑男的签名照', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('400', '邓超', '从你的全世界路过', '4031325579061181', 'http://weibo.com/5661350419', 'id=5661350419', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006b8rRxjw8f8sb5xc8zvj30ro0rpaew.jpg', 'za小虾米：好看', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('401', '邓超', '从你的全世界路过', '4031325570181236', 'http://weibo.com/5432184088', 'id=5432184088', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/005VCTeojw8exo33h30mjj30yi0yijv8.jpg', '爱唱歌的小苏苏：今天一个人去看了从你的全世界路过  国庆第一次去重庆  里面好多熟悉的镜头  想着跟你肯定有走过同样的地方 很奇妙的感觉  为什么长得好看又有文化的人都是明星呢。', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('402', '邓超', '从你的全世界路过', '4031325540814535', 'http://weibo.com/5385495959', 'id=5385495959', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005SsZw3jw8f7zzgjr1r1j30ig0igwgw.jpg', '二娇G7：帮你照顾你的鹿儿子', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('403', '邓超', '从你的全世界路过', '4031325348918370', 'http://weibo.com/5489795280', 'id=5489795280', 'http://tva1.sinaimg.cn/crop.0.0.100.100.50/005ZwCxajw8eppb2p6d5uj302s02smwz.jpg', '熊燕生89144：肯定抽不到我', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('404', '邓超', '从你的全世界路过', '4031325273520154', 'http://weibo.com/5122389863', 'id=5122389863', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5122389863：想超哥了、想跑男了。', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('405', '邓超', '从你的全世界路过', '4031325092772968', 'http://weibo.com/5896892484', 'id=5896892484', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5896892484：从你的全世界路过，却留在我心里', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('406', '邓超', '从你的全世界路过', '4031324903394990', 'http://weibo.com/3502320670', 'id=3502320670', 'http://tva3.sinaimg.cn/crop.14.0.1214.1214.50/d0c12c1ejw8f8t8va5h34j20yi0xqacm.jpg', '你是我淂小太阳：我要你陪我一起看', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('407', '邓超', '从你的全世界路过', '4031324824314418', 'http://weibo.com/6029678790', 'id=6029678790', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006A3UTIjw1f7zdwf8q81j305k05kt8m.jpg', '荆切滚荆妈镇：', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('408', '邓超', '从你的全世界路过', '4031324819906271', 'http://weibo.com/1958919380', 'id=1958919380', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/74c2bcd4jw8ey8iclkcxtj20k00k0js1.jpg', '朱丽sendy：转发微博', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('409', '邓超', '从你的全世界路过', '4031324722998277', 'http://weibo.com/2732907024', 'id=2732907024', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/a2e4da10jw8f2dy4q9drkj20ku0ku0td.jpg', '灿灿灿灿灿灿_：超哥 是你吗', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('410', '邓超', '从你的全世界路过', '4031324584697261', 'http://weibo.com/6041320004', 'id=6041320004', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/006AQLjejw8f8l7nykg22j30hs0hsgm9.jpg', '二宝是个马蛋儿：哈哈', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('411', '邓超', '从你的全世界路过', '4031324543282455', 'http://weibo.com/3756761605', 'id=3756761605', 'http://tva2.sinaimg.cn/crop.0.0.638.638.50/dfeba205jw8f1z3fxkd2lj20hq0hq773.jpg', '花开Sweety_：满满的套路', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('412', '邓超', '从你的全世界路过', '4031324542968497', 'http://weibo.com/3564204523', 'id=3564204523', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/d47171ebjw8f85y7n9fiaj20ig0igjsi.jpg', '薛之谦湿了的胖次：帮你把那种世俗的东西全花光...金钱的铜臭怎么能沾染你干净的身躯', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('413', '邓超', '从你的全世界路过', '4031324463695570', 'http://weibo.com/6026101080', 'id=6026101080', 'http://tva3.sinaimg.cn/crop.0.0.100.100.50/006zOUaIjw8f8091ta6kbj302s02s0sj.jpg', '一七集团鬼仆49375：我在苦等奔跑5 超哥 赶紧的吧！！！苦等  苦等 苦等 重要的事情说三遍', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('414', '邓超', '从你的全世界路过', '4031324241148962', 'http://weibo.com/5196894865', 'id=5196894865', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/005FHDKVjw8f889dv8lonj30e80e83yy.jpg', '流浪的摄影家的爱徒：小样儿 你先抽我再告诉你', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('415', '邓超', '从你的全世界路过', '4031324236951765', 'http://weibo.com/6026101080', 'id=6026101080', 'http://tva3.sinaimg.cn/crop.0.0.100.100.50/006zOUaIjw8f8091ta6kbj302s02s0sj.jpg', '一七集团鬼仆49375：我就想问下 超哥  咱大重庆的特色 面条 火锅味道怎么样', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('416', '邓超', '从你的全世界路过', '4031323042158165', 'http://weibo.com/2856559802', 'id=2856559802', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/aa43a4bajw8f8fhdoomlij20ro0rp76e.jpg', '科里昂土豆泥：帮你住你们家的大房子，开你们家的豪车，花你们家的钱。', '2016-10-17 13:33:45');
INSERT INTO `t_sina_weibo` VALUES ('417', '邓超', '从你的全世界路过', '4031322819003836', 'http://weibo.com/5541583120', 'id=5541583120', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/00631UUUjw8eydlc4kik0j30k00k0dhl.jpg', 'wymSUPER：已经为你做了', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('418', '邓超', '从你的全世界路过', '4031322471270047', 'http://weibo.com/5861988527', 'id=5861988527', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006oIj03jw1f14epjzezxj305k05kmx4.jpg', '国岭重国：#狼哥哥带你约#', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('419', '邓超', '从你的全世界路过', '4031322429493053', 'http://weibo.com/5892364121', 'id=5892364121', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/006qLL4Zjw8f3plmlygxuj30ku0kuwfi.jpg', '宀厸：厉害了我超', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('420', '邓超', '从你的全世界路过', '4031322299573727', 'http://weibo.com/scofield725', 'id=1668599603', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/6374cf33jw8f6eogdktrnj20ku0kugml.jpg', 'Liu-George：梦想还是要有的，万一实现了呢', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('421', '邓超', '从你的全世界路过', '4031322294468290', 'http://weibo.com/5665117400', 'id=5665117400', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006bofPijw8f86aqxj8qkj30ro0roq5e.jpg', '神经ing0：有点咸', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('422', '邓超', '从你的全世界路过', '4031321958847164', 'http://weibo.com/5656196162', 'id=5656196162', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006aMP0mjw8f2kx8gulgsj30ig0igjso.jpg', '漂泊的文艺小青年：路过', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('423', '邓超', '从你的全世界路过', '4031321862675436', 'http://weibo.com/sunchujiu', 'id=5240719248', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005IFwtOjw8f8ufdydwrpj30ig0igwg8.jpg', '梅花小街：为你免费贴膜喽', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('424', '邓超', '从你的全世界路过', '4031321619786576', 'http://weibo.com/5922197806', 'id=5922197806', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006sMWbsjw8f5voe1m64lj30ig0iggnn.jpg', 'jing色好美：#我们的约会#', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('425', '邓超', '从你的全世界路过', '4031321599213329', 'http://weibo.com/5560361821', 'id=5560361821', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/0064iI7bjw8eq8t65pjchj30k00k0gn9.jpg', '财财厚_509：垃圾夫妻', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('426', '邓超', '从你的全世界路过', '4031321170402882', 'http://weibo.com/5735221997', 'id=5735221997', 'http://tva1.sinaimg.cn/crop.0.0.80.80.50/006g8peBjw8ex938fz8mij3028028q2p.jpg', '物似人非1711：电影很不错，很开心欣赏一个好故事，', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('427', '邓超', '从你的全世界路过', '4031320998943572', 'http://weibo.com/5309369973', 'id=5309369973', 'http://tva3.sinaimg.cn/crop.0.0.100.100.50/005NjzFzjw8enxr1qn549j302s02swec.jpg', '陈烨83482：一直挺你', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('428', '邓超', '从你的全世界路过', '4031320671842377', 'http://weibo.com/5149681813', 'id=5149681813', 'http://tva4.sinaimg.cn/crop.0.0.720.720.50/005Cvxu5jw8es5az1rfkwj30k00k0wfk.jpg', '不会取名字的帅气小奠：厉害了我的哥，等着发10位', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('429', '邓超', '从你的全世界路过', '4031320424175572', 'http://weibo.com/5150230235', 'id=5150230235', 'http://tva1.sinaimg.cn/crop.0.15.750.750.50/005CxQ9Bjw8f6u0ukjtkkj30ku0lpjs9.jpg', '挎包哥：等中国男足赢了，我就跟你离婚”，他淡淡地说。 听完后，她心里暖暖的，她想，沒有比这更天长地久、海枯石烂的承诺了。 ——2016年度最佳微小说奖', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('430', '邓超', '从你的全世界路过', '4031320235871947', 'http://weibo.com/5857568098', 'id=5857568098', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006opL2Ojw8f8k180ccc1j30ro0rpwgv.jpg', '唐剑梅JM：', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('431', '邓超', '从你的全世界路过', '4031319924937654', 'http://weibo.com/5055114888', 'id=5055114888', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/005w6Kj6jw8f6wmus6z9yj30ro0roq50.jpg', '做个好学生king：反正我不信', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('432', '邓超', '从你的全世界路过', '4031319786613271', 'http://weibo.com/5950510274', 'id=5950510274', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006uHJyajw8f5k5g247psj30ro0roju0.jpg', '逻辑怪咖：好厉害，请吃饭', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('433', '邓超', '从你的全世界路过', '4031319450894737', 'http://weibo.com/5811498355', 'id=5811498355', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006liscrjw8f6ww4umyeij30ig0igjsi.jpg', '始于你的专属记忆：感觉邓超好逗，看过这部电影', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('434', '邓超', '从你的全世界路过', '4031319094280209', 'http://weibo.com/5325502131', 'id=5325502131', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/005OpgnFjw8f8t6ga2rryj30hs0hst9u.jpg', '嚼着炫迈去追梦的妹子：抽奖都是假的，欺骗我们感情', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('435', '邓超', '从你的全世界路过', '4031318901472483', 'http://weibo.com/5111522288', 'id=5111522288', 'http://tva2.sinaimg.cn/crop.10.0.492.492.50/005zVqrSjw8f73tn6r7qcj30e80doaaj.jpg', '梁大湿001：超哥 我想靠骂你上头条 你觉得妥吗？会不会被粉丝人肉', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('436', '邓超', '从你的全世界路过', '4031318788324023', 'http://weibo.com/5723382303', 'id=5723382303', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006fkJbNjw8f3ok361fzkj30ig0iggmo.jpg', '玉米老师_黄豪：超哥赞@邓超', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('437', '邓超', '从你的全世界路过', '4031318313963790', 'http://weibo.com/5997785819', 'id=5997785819', 'http://tva3.sinaimg.cn/crop.0.0.498.498.50/006xU64Xjw8f7vbnf3ybmj30du0dumxs.jpg', 'mofans毓薇：选人当你儿媳妇，不是我，是我选，可以吗，好的，成交', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('438', '邓超', '从你的全世界路过', '4031318293477447', 'http://weibo.com/5594389780', 'id=5594389780', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/0066Bulejw8ez52l2wyyqj30ig0ig0u4.jpg', '阿褚姐姐：必须支持    觉得看完电影人生升华了！！！', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('439', '邓超', '从你的全世界路过', '4031317618085801', 'http://weibo.com/6026224523', 'id=6026224523', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006zPqhJjw8f89dxrkuggj30ro0rowgj.jpg', '冬日暖阳bxj：生日当天帮转发，以为能有好运，结果没我份。无所谓，反正我是喜欢娘娘和你的节目。加油！', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('440', '邓超', '从你的全世界路过', '4031317399669371', 'http://weibo.com/5979125215', 'id=5979125215', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006wDNBtjw8f8jgwub318j30ig0igweq.jpg', '楚楚动人的云舒：超爸爸，你怎么不管我们了呢？', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('441', '邓超', '从你的全世界路过', '4031317220288300', 'http://weibo.com/mq6808', 'id=1672952390', 'http://tva2.sinaimg.cn/crop.0.0.1328.1328.50/63b73a46jw8f5j2e97jfkj210w10wgor.jpg', 'V奔腾宝宝V：(⊙o⊙)哇', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('442', '邓超', '从你的全世界路过', '4031317174312616', 'http://weibo.com/1046678222', 'id=1046678222', 'http://tva4.sinaimg.cn/crop.0.0.1080.1080.50/3e630acejw8esq4dyr0zgj20u00u03zt.jpg', '白眼狼：套鹿', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('443', '邓超', '从你的全世界路过', '4031317144364389', 'http://weibo.com/5189162630', 'id=5189162630', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/005Fbcfsjw8f8pwnrn7ivj30ro0rpdih.jpg', '小倩倩-ZXQ：超哥超爱你', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('444', '邓超', '从你的全世界路过', '4031316892617946', 'http://weibo.com/5638633530', 'id=5638633530', 'http://tva3.sinaimg.cn/crop.0.0.438.438.50/0069B8a6jw8ez2p0bxavtj30c60c6q39.jpg', '但偏偏风渐渐把距离吹到天边：看了这电影，迷上你了，超哥加油！', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('445', '邓超', '从你的全世界路过', '4031316494732651', 'http://weibo.com/5908898618', 'id=5908898618', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/006rT8sqjw8f39xk2m63zj30c60c6dg6.jpg', '超萌大王：看了！很好的旅游宣传片在申请年假去看看重庆', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('446', '邓超', '从你的全世界路过', '4031316267904118', 'http://weibo.com/5488222684', 'id=5488222684', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/005Zq1qIjw8f0ajq40i50j30ig0iggmc.jpg', '枕上蝶wwr：我希望遇到如你一般的人，如山间的清风，古城的月色', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('447', '邓超', '从你的全世界路过', '4031315948895369', 'http://weibo.com/3942245695', 'id=3942245695', 'http://tva2.sinaimg.cn/crop.6.0.1230.1230.50/eaf9e53fjw8f6vp43xdnzj20yi0y6myv.jpg', '唐校长：给超哥签个名。体验下超哥要签名的感受@邓超', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('448', '邓超', '从你的全世界路过', '4031315290973930', 'http://weibo.com/5872147692', 'id=5872147692', 'http://tva3.sinaimg.cn/crop.0.0.40.40.50/006poVRyjw8f1jsislxauj30140143y9.jpg', '勤劳的花匠72565：我只爱我的杨，呵呵哒', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('449', '邓超', '从你的全世界路过', '4031315261515932', 'http://weibo.com/2807931204', 'id=2807931204', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/a75da144jw8f6cww7mwdrj20yi0yitbc.jpg', '懒_official：一家四口', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('450', '邓超', '从你的全世界路过', '4031314796074292', 'http://weibo.com/2316001565', 'id=2316001565', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/8a0b611djw8f811cltq1ij20ku0ku3zm.jpg', 'Frank_鹏鹏：图片评论', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('451', '邓超', '从你的全世界路过', '4031314698503055', 'http://weibo.com/5362193054', 'id=5362193054', 'http://tva2.sinaimg.cn/crop.0.86.480.480.50/005QTdmKjw8em3xvkzkl0j30dc0i5wfw.jpg', '佛祖落凡尘：超哥给你推荐小说《跑男之终极巨星》看看里面写的，把你写的超级搞笑超级贱@邓超 @邓超 @邓超 @邓超', '2016-10-17 13:33:46');
INSERT INTO `t_sina_weibo` VALUES ('452', '邓超', '从你的全世界路过', '4031314216802795', 'http://weibo.com/3952172758', 'id=3952172758', 'http://tva1.sinaimg.cn/crop.9.0.493.493.50/eb915ed6jw8f7eggrwdfmj20e80dp3ys.jpg', '岑萧萧萧：超哥我今天又去看了一遍 没错我是为了你的美貌去看的', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('453', '邓超', '从你的全世界路过', '4031314162714686', 'http://weibo.com/3309208081', 'id=3309208081', 'http://tva3.sinaimg.cn/crop.0.25.1242.1242.50/c53e8211jw8f7r61vzwp4j20yi0zxwii.jpg', 'Cheng太阳i：能不能抽中 @邓超 @邓超 @邓超', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('454', '邓超', '从你的全世界路过', '4031314140955099', 'http://weibo.com/3049486782', 'id=3049486782', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/b5c379bejw8f8ggwtk4l8j20ig0igmy6.jpg', '起个ID真的好难啊_懵：帮你进一批膜麻烦把我送上去谢谢', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('455', '邓超', '从你的全世界路过', '4031314103154287', 'http://weibo.com/2073235310', 'id=2073235310', 'http://tva4.sinaimg.cn/crop.0.0.180.180.50/7b930f6ejw1e8qgp5bmzyj2050050aa8.jpg', 'andy-2004506：转发微博', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('456', '邓超', '从你的全世界路过', '4031313612750551', 'http://weibo.com/5876514895', 'id=5876514895', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5876514895：超哥跑男什么时候回来', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('457', '邓超', '从你的全世界路过', '4031313314613692', 'http://weibo.com/5990993963', 'id=5990993963', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006xrBcTjw8f8suremembj30ig0ig0ta.jpg', '一次就好：帮你进一批iPhone的膜@邓超', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('458', '邓超', '从你的全世界路过', '4031311972480497', 'http://weibo.com/5647836815', 'id=5647836815', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/006adKmbjw8ey0mc9j3ggj30k00k0wfx.jpg', 'pocket龙血：合肥饿了么要倒闭了  员工工资都发不起了，五六百块钱都发不起了啊   给你们留着烧纸吧！   跪求帮忙转一下', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('459', '邓超', '从你的全世界路过', '4031311931066679', 'http://weibo.com/5387884450', 'id=5387884450', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/005SD0S6jw8f5fhxakjp1j30ku0kumyr.jpg', '点点迷妹：我想替你照顾你儿子鹿晗', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('460', '邓超', '从你的全世界路过', '4031311793074107', 'http://weibo.com/6027491408', 'id=6027491408', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006zUJRmjw8f8qv951ngij30ro0rotaz.jpg', '鹿苇微：做你儿媳妇@邓超 @邓超', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('461', '邓超', '从你的全世界路过', '4031311595802915', 'http://weibo.com/5843631317', 'id=5843631317', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006nths1jw8f7gdho5ftmj30ro0rogo4.jpg', 'Mr_zj_jian：我是你失散多年的弟弟。', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('462', '邓超', '从你的全世界路过', '4031311553250992', 'http://weibo.com/5921908797', 'id=5921908797', 'http://tva4.sinaimg.cn/crop.0.0.200.200.50/006sLJ01jw1f3n5bvoccjj305k05k748.jpg', '宋侔炔退掣：3', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('463', '邓超', '从你的全世界路过', '4031311545371409', 'http://weibo.com/5634272765', 'id=5634272765', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/0069iPJbjw8f6lfhzgodvj30ro0rpmzy.jpg', '涂洁洁：转发微博', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('464', '邓超', '从你的全世界路过', '4031311012039505', 'http://weibo.com/3255699120', 'id=3255699120', 'http://tva2.sinaimg.cn/crop.0.9.1242.1242.50/c20e06b0jw8f8563kiw50j20yi0z1dhy.jpg', '红尘酒巷：那下面那条怎么算    你告诉我  超哥我告你。', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('465', '邓超', '从你的全世界路过', '4031310995892015', 'http://weibo.com/1971772070', 'id=1971772070', 'http://tva3.sinaimg.cn/crop.0.0.750.750.50/7586daa6jw8f4zty7eixaj20ku0kumy3.jpg', '快到碗里来1017：明天我能来丁栅和你要个合影吗？@邓超', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('466', '邓超', '从你的全世界路过', '4031310945232512', 'http://weibo.com/Jackdaughter', 'id=5283628816', 'http://tva2.sinaimg.cn/crop.0.0.438.438.50/005LzzdCjw8f6iyhz1ykij30c60c6gma.jpg', '顾顾顾顾顾玲滟：凑表脸', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('467', '邓超', '从你的全世界路过', '4031310718663841', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('468', '邓超', '从你的全世界路过', '4031310684543848', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('469', '邓超', '从你的全世界路过', '4031310652121394', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('470', '邓超', '从你的全世界路过', '4031310609369830', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('471', '邓超', '从你的全世界路过', '4031310605166301', 'http://weibo.com/5185708214', 'id=5185708214', 'http://tva3.sinaimg.cn/crop.0.0.480.480.50/005EWHB4jw8ehj16x1misj30dc0dcdg6.jpg', '梦9u：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('472', '邓超', '从你的全世界路过', '4031310580920339', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('473', '邓超', '从你的全世界路过', '4031310504730109', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('474', '邓超', '从你的全世界路过', '4031310462201666', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('475', '邓超', '从你的全世界路过', '4031310433750447', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('476', '邓超', '从你的全世界路过', '4031310366103661', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('477', '邓超', '从你的全世界路过', '4031310303442792', 'http://weibo.com/5082408216', 'id=5082408216', 'http://tva2.sinaimg.cn/crop.213.3.533.533.50/005xXgy4jw8f62zd7nmy4j30qo0f077e.jpg', '用户vh7b7j0940：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('478', '邓超', '从你的全世界路过', '4031310181391144', 'http://weibo.com/5093788395', 'id=5093788395', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005yJ13ljw8f6q42orgu5j30ig0igt9u.jpg', '鹿晗不娶何撩：帮你照顾你儿子', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('479', '邓超', '从你的全世界路过', '4031310093458979', 'http://weibo.com/maomao881013', 'id=1993599053', 'http://tva1.sinaimg.cn/crop.7.0.1228.1228.50/76d3e84djw8f8rwjbj5dij20yi0y4tcf.jpg', 'Miss大喵喵喵：我要小鹿的签名照', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('480', '邓超', '从你的全世界路过', '4031309917382424', 'http://weibo.com/5645036179', 'id=5645036179', 'http://tva1.sinaimg.cn/crop.0.0.1010.1010.50/006a1ZMDjw8f2rzzxscs8j30s20s20uq.jpg', '一朵驕豔的花：邓叔叔啥时候来贴膜', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('481', '邓超', '从你的全世界路过', '4031309808026739', 'http://weibo.com/5253675449', 'id=5253675449', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/005JxSYNjw8f6nou2ku6aj30c60c6q35.jpg', '薛之谦女友o3o：电影真的超好看', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('482', '邓超', '从你的全世界路过', '4031309787966672', 'http://weibo.com/5048260652', 'id=5048260652', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005vDZcUjw8f7uptbzpoej30ro0rp77s.jpg', 'Zzl唯一的麦妹：帅帅鸟~', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('483', '邓超', '从你的全世界路过', '4031309682528948', 'http://weibo.com/5060689731', 'id=5060689731', 'http://tva2.sinaimg.cn/crop.0.0.512.512.50/005wu8zVjw8f8n28tjjcmj30e80e8mxq.jpg', '乞力马扎罗的雪-shy：男神要拉票吗', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('484', '邓超', '从你的全世界路过', '4031309644417058', 'http://weibo.com/1824033777', 'id=1824033777', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/6cb88bf1jw8epv25hiak7j20hs0hswf3.jpg', '欢乐的嘟嘟go：叫我起床么', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('485', '邓超', '从你的全世界路过', '4031309602754872', 'http://weibo.com/5329318700', 'id=5329318700', 'http://tva1.sinaimg.cn/crop.0.24.1242.1242.50/005OFhfejw8f5ppdfbsanj30yi0zumzj.jpg', '天上掉下个NHY：今天看了，着实不错，赞一个', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('486', '邓超', '从你的全世界路过', '4031308894530752', 'http://weibo.com/5375796535', 'id=5375796535', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/005ROifJjw8emebe2asjvj30hs0hswfe.jpg', '傻兮兮Z3：', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('487', '邓超', '从你的全世界路过', '4031308789509534', 'http://weibo.com/mafeila', 'id=2270562094', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/8756072ejw8eapdpvvaxhj20hs0hs3ys.jpg', '麦子飝：希望帮我报销路过欧洲的来回机票。', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('488', '邓超', '从你的全世界路过', '4031308650836712', 'http://weibo.com/SharesBanker', 'id=5192367187', 'http://tva2.sinaimg.cn/crop.112.109.771.771.50/005FoDTRgw1eibgdfa1hnj30ol0oldiw.jpg', '福来麒麟：@邓超 邓超套路太深让人防不胜防', '2016-10-17 13:33:47');
INSERT INTO `t_sina_weibo` VALUES ('489', '邓超', '从你的全世界路过', '4031308105072883', 'http://weibo.com/5253675449', 'id=5253675449', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/005JxSYNjw8f6nou2ku6aj30c60c6q35.jpg', '薛之谦女友o3o：做爱', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('490', '邓超', '从你的全世界路过', '4031308084365332', 'http://weibo.com/xxxx128', 'id=1812883610', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/6c0e689ajw8ez4duhl4saj20e80e8t9e.jpg', 'hi小小雪：就没中过，没意思', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('491', '邓超', '从你的全世界路过', '4031308081055141', 'http://weibo.com/5357501642', 'id=5357501642', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/005QzwUOjw8f4qx5tk8z2j30ig0ig0te.jpg', '不明不白踏实他的独一517：看完了从你的全世界路过，戳中泪点，所有的电器都在喊：@杨洋icon 荔枝我爱你', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('492', '邓超', '从你的全世界路过', '4031307899512290', 'http://weibo.com/5244013675', 'id=5244013675', 'http://tva4.sinaimg.cn/crop.0.9.750.750.50/005ITlvJjw8f73tpv3e9dj30ku0lc3z6.jpg', '能坚持不容易：想听超哥唱歌，听说超哥唱歌好听呢', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('493', '邓超', '从你的全世界路过', '4031307787528461', 'http://weibo.com/3990890236', 'id=3990890236', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/ede026fcjw8f6z8ghtrnsj20ig0igmxw.jpg', '我叫钢蛋我是蒙塔基人：湄公河已经9亿了', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('494', '邓超', '从你的全世界路过', '4031307246114190', 'http://weibo.com/5797771991', 'id=5797771991', 'http://tva4.sinaimg.cn/default/images/default_avatar_male_50.gif', '用户5797771991：真的很喜欢超哥。', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('495', '邓超', '从你的全世界路过', '4031307174019875', 'http://weibo.com/5646734116', 'id=5646734116', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006a97uIjw8f8ogshqk3bj30ro0rpjub.jpg', 'M鹿Q7：@M鹿Q7: 爸爸，我是你的儿媳妇，我老公不听话，不穿秋裤，替我好好管教管教他@邓超', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('496', '邓超', '从你的全世界路过', '4031306805269001', 'http://weibo.com/1706414723', 'id=1706414723', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/65b5d283jw8f89p5h3gsnj20ro0rowh4.jpg', '易彩凤：我不信', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('497', '邓超', '从你的全世界路过', '4031306725141780', 'http://weibo.com/5457949100', 'id=5457949100', 'http://tva4.sinaimg.cn/crop.0.0.100.100.50/005XmZT6jw8eqarfm9xxvj302s02sglf.jpg', '张河志：抽吧', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('498', '邓超', '从你的全世界路过', '4031306453580260', 'http://weibo.com/1972732027', 'id=1972732027', 'http://tva1.sinaimg.cn/crop.0.10.492.492.50/7595807bjw8f8ai8fa69yj20do0e8q3t.jpg', '美少女壮士_dl：想帮你照顾杨洋', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('499', '邓超', '从你的全世界路过', '4031306323122385', 'http://weibo.com/5923162470', 'id=5923162470', 'http://tva2.sinaimg.cn/crop.0.0.250.250.50/006sQZ8yjw1f3n4gs4fl4j306y06ygm1.jpg', '胥旱捞栋苏：[', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('500', '邓超', '从你的全世界路过', '4031306130512325', 'http://weibo.com/5982241120', 'id=5982241120', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/006wQSc0jw8f5wriyy1nej30ku0kuta3.jpg', '薇薇安无可奈何_777：明知道是套路我还是上道了@邓超', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('501', '邓超', '从你的全世界路过', '4031306096604111', 'http://weibo.com/5693102247', 'id=5693102247', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006dhFXNjw8f8ooc3ub67j30ro0rptb0.jpg', '抑郁博主伴鹿：超哥 你不可以这样子的 要言而有信哼！', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('502', '邓超', '从你的全世界路过', '4031306042584908', 'http://weibo.com/3207753233', 'id=3207753233', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/bf326e11jw8f386jj2mocj20ro0rotbt.jpg', '闹闹亲亲m：呵呵，笑笑不说话', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('503', '邓超', '从你的全世界路过', '4031305912590713', 'http://weibo.com/2137532187', 'id=2137532187', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/7f68271bjw1e8qgp5bmzyj2050050aa8.jpg', '美丽好心情00：做饭', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('504', '邓超', '从你的全世界路过', '4031305802910011', 'http://weibo.com/5612112951', 'id=5612112951', 'http://tva3.sinaimg.cn/crop.0.15.640.640.50/0067NQWPjw8f7l416mq4gj30hs0imt9f.jpg', '徐徐徐徐湘：啊哈哈哈', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('505', '邓超', '从你的全世界路过', '4031305580473087', 'http://weibo.com/1810056253', 'id=1810056253', 'http://tva4.sinaimg.cn/crop.0.0.1241.1241.50/6be3443djw8f8jmb7l8cmj20yi0yhtc3.jpg', 'wohenshuai_：你好！我是郑州第一医院精神疾病健康研究中心的主治医生，主攻智障方向的研究与治疗，我院领导看到你发表的微博以后高度重视你的情况，特派我来帮你摆脱病魔的困扰。希望你相信医生，配合我们工作，精神疾病可防可控可治，你要树立起坚强的信心，我们一定会使你走出阴影，过上正常人的生活。', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('506', '邓超', '从你的全世界路过', '4031305459625908', 'http://weibo.com/lovegcin', 'id=2775473984', 'http://tva2.sinaimg.cn/crop.0.8.1242.1242.50/a56e5f40jw8f7402o65cuj20yi0yzn1f.jpg', '-洋洋洋洋心：帮你照顾你的杨洋弟弟', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('507', '邓超', '从你的全世界路过', '4031305245592907', 'http://weibo.com/5726394805', 'id=5726394805', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006fxmSxjw8f2v4g64067j30ig0igab2.jpg', '你是年少的欢喜o_O：厉害了我的超哥', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('508', '邓超', '从你的全世界路过', '4031305148787463', 'http://weibo.com/5585905401', 'id=5585905401', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/00661Tapjw8f2h75k967cj30ig0ig0ti.jpg', 'LLL卢梦滢：呵呵呵呵呵哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2016-10-17 13:33:48');
INSERT INTO `t_sina_weibo` VALUES ('509', '邓超', '从你的全世界路过', '4031304682644767', 'http://weibo.com/starry711', 'id=1939709762', 'http://tva3.sinaimg.cn/crop.0.0.180.180.50/739d9f42jw1e8qgp5bmzyj2050050aa8.jpg', '擒风而肆不会二到家放心：陈末好喜欢你。', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('510', '邓超', '从你的全世界路过', '4031304523831266', 'http://weibo.com/5817588965', 'id=5817588965', 'http://tva4.sinaimg.cn/crop.0.0.1006.1006.50/006lI0E5jw8f8sv1cc6irj30ry0ryabl.jpg', '邓i超_：选儿媳妇咯～', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('511', '邓超', '从你的全世界路过', '4031304486306509', 'http://weibo.com/5817588965', 'id=5817588965', 'http://tva4.sinaimg.cn/crop.0.0.1006.1006.50/006lI0E5jw8f8sv1cc6irj30ry0ryabl.jpg', '邓i超_：你好啊～', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('512', '邓超', '从你的全世界路过', '4031304305084864', 'http://weibo.com/5939174484', 'id=5939174484', 'http://tva2.sinaimg.cn/crop.4.0.504.504.50/006tWaAQjw8f4715rcnc1j30e80e0dg4.jpg', '我瞅你像我爸爸1：超哥，带等等参加真人秀！', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('513', '邓超', '从你的全世界路过', '4031304221517384', 'http://weibo.com/1291609414', 'id=1291609414', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/4cfc6546jw8f8ue4v5oerj20ro0ro75h.jpg', '搞事情的六神宝宝：往地上一躺就让人给卡里打2300……', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('514', '邓超', '从你的全世界路过', '4031303957627683', 'http://weibo.com/5977373280', 'id=5977373280', 'http://tva1.sinaimg.cn/crop.0.0.200.200.50/006wwrQsjw1f5lcxdho2pj305k05kjrf.jpg', '伶仃升错：#我们的约会#', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('515', '邓超', '从你的全世界路过', '4031303675818315', 'http://weibo.com/5705530626', 'id=5705530626', 'http://tva4.sinaimg.cn/crop.0.0.1080.1080.50/006e7P9wjw8ey4e0hbvrej30u00u0gno.jpg', 'AbooLee：超哥，感谢你这些年带给我们的欢乐，还你张影票。ps：娘娘是我女神。@邓超 @turbosun', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('516', '邓超', '从你的全世界路过', '4031303474895540', 'http://weibo.com/2478018661', 'id=2478018661', 'http://tva4.sinaimg.cn/crop.0.0.1328.1328.50/93b39065jw8f4mc1jpydij210w10w41h.jpg', 'outlier-inside：和男朋友一人一本从你的全世界路过，却因为异地没能一起看这个电影', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('517', '邓超', '从你的全世界路过', '4031303395007973', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('518', '邓超', '从你的全世界路过', '4031303378709924', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('519', '邓超', '从你的全世界路过', '4031303139578991', 'http://weibo.com/6046918168', 'id=6046918168', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006BefEcjw8f8urz98ym0j30ig0ig75t.jpg', '旧情已是丶曾经：帮你转发  送啥东西', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('520', '邓超', '从你的全世界路过', '4031303047433834', 'http://weibo.com/6045867944', 'id=6045867944', 'http://tva2.sinaimg.cn/crop.0.0.960.960.50/006B9Qr6jw8f8rrzro8klj30qo0qo0u9.jpg', '素和杳然：不敢转了都', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('521', '邓超', '从你的全世界路过', '4031302930399786', 'http://weibo.com/5088825198', 'id=5088825198', 'http://tva1.sinaimg.cn/crop.0.0.640.640.50/005yobTMjw8eewcoz1fwwj30hs0hsgml.jpg', '李小疯籽：回忆很拥挤，却不见过路人。 ¡查看图片', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('522', '邓超', '从你的全世界路过', '4031302711738707', 'http://weibo.com/3008103165', 'id=3008103165', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/b34c02fdjw8f8izm3a6vrj20ro0rpt9p.jpg', '薛之谦的牙全世界最好看：陈末呜呜呜呜呜呜呜呜中了你的毒无法自拔哭泣啊啊啊啊啊', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('523', '邓超', '从你的全世界路过', '4031302229042586', 'http://weibo.com/1915137825', 'id=1915137825', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/7226af21jw8f7htjw839vj20ro0rpt95.jpg', 'Ambar高玮：发点什么超哥才会回复', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('524', '邓超', '从你的全世界路过', '4031301490683478', 'http://weibo.com/6021336805', 'id=6021336805', 'http://tva4.sinaimg.cn/crop.3.0.633.633.50/006zuULzjw8f7oyjfv1hgj30hs0hlt9h.jpg', '小米朵_Lucy：看哭了', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('525', '邓超', '从你的全世界路过', '4031301177068774', 'http://weibo.com/2616207225', 'id=2616207225', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/9bf02779jw8f8udfp65v9j20ro0rpwh5.jpg', '手机赚钱你值得拥有：不知道超哥还会不会说南昌话，还记不记得南昌炒粉和瓦罐汤，少年包青天还是超哥演得好看', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('526', '邓超', '从你的全世界路过', '4031301101494773', 'http://weibo.com/3687610311', 'id=3687610311', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/dbcc77c7jw8f6geihx1o6j20ig0igta4.jpg', '一个Aries的小潮妹：你是一位坏叔叔', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('527', '邓超', '从你的全世界路过', '4031300459092869', 'http://weibo.com/2359698890', 'id=2359698890', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/8ca625cajw8f6bxn6fs4dj20ig0iggmc.jpg', '蘇寶的馬兒：剛打開妳的微博就被蚊子咬了。。。。。。。。。。。。。。', '2016-10-17 13:33:49');
INSERT INTO `t_sina_weibo` VALUES ('528', '邓超', '从你的全世界路过', '4031300439046469', 'http://weibo.com/wryCarol', 'id=1630872011', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/613521cbjw8f8tcb7lv4aj20e80e8q3h.jpg', 'Carol-wry：超哥，这部电影我更多的是感动，致所有有故事的人', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('529', '邓超', '从你的全世界路过', '4031300438395629', 'http://weibo.com/6016812457', 'id=6016812457', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006zbVMdjw8f7in1ralt6j30ig0ig0ti.jpg', '曾以为能和你简单的：电影我已经看了两遍了，对我的感触都很深。同时也看到了超哥的努力。支持超哥！！', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('530', '邓超', '从你的全世界路过', '4031299449138241', 'http://weibo.com/3650606801', 'id=3650606801', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/d997d6d1jw8f7qk7zs54kj20ro0ro0v6.jpg', '习惯成依濑：嗯嗯嗯', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('531', '邓超', '从你的全世界路过', '4031299381541677', 'http://weibo.com/5452878110', 'id=5452878110', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/005X1IGWjw8f5q5d81n0cj30ig0ig75m.jpg', '静哥是个小天使：真帅', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('532', '邓超', '从你的全世界路过', '4031298937186650', 'http://weibo.com/2451543022', 'id=2451543022', 'http://tva1.sinaimg.cn/crop.13.0.724.724.50/921f93eejw8f8td7zvl5tj20ku0k4aat.jpg', '何呵哒啊：不知道是谁为了让你显得man一点给你加了胡子。败坏社会风气@邓超', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('533', '邓超', '从你的全世界路过', '4031298668506738', 'http://weibo.com/2341337442', 'id=2341337442', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/8b8df962jw8f7acy3qzpvj20ro0rpq5x.jpg', '萧未雨：转发微博', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('534', '邓超', '从你的全世界路过', '4031298651712108', 'http://weibo.com/5619270865', 'id=5619270865', 'http://tva2.sinaimg.cn/crop.0.0.1080.1080.50/0068hT33jw8eu5ib3khy2j30u00u0ta8.jpg', '魏楚珊-：从你的全世界路过@邓超', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('535', '邓超', '从你的全世界路过', '4031298630350503', 'http://weibo.com/1107334823', 'id=1107334823', 'http://tva3.sinaimg.cn/crop.89.2.209.209.50/420096a7jw8f8u9d4klr3j209y0643ys.jpg', '屁股翘上天了阿：我敢肯定是我 因为我就是我', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('536', '邓超', '从你的全世界路过', '4031298375408258', 'http://weibo.com/5253151200', 'id=5253151200', 'http://tva4.sinaimg.cn/crop.0.0.1440.1440.50/005JvGBajw8ejcoea5d6ej3140140ae1.jpg', '玻璃假面xia：为什么金鹰节上没有你和娘娘呀', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('537', '邓超', '从你的全世界路过', '4031298240414824', 'http://weibo.com/5601825563', 'id=5601825563', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/00676GJdjw8ersimekfvgj30k00k075r.jpg', '森中古城i：你确定抽我？', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('538', '邓超', '从你的全世界路过', '4031298106348910', 'http://weibo.com/5942905102', 'id=5942905102', 'http://tva3.sinaimg.cn/default/images/default_avatar_female_50.gif', '照亮我前行6868：范鸡还请人黑过邓超，范鸡去死', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('539', '邓超', '从你的全世界路过', '4031297737318269', 'http://weibo.com/2598634932', 'id=2598634932', 'http://tva3.sinaimg.cn/crop.0.1.1242.1242.50/9ae405b4jw8f7t3gftxrpj20yi0yk42b.jpg', '__MrsPark_：比如说我转发了你可以给你儿子（傻狍子）找个儿媳妇，比如我', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('540', '邓超', '从你的全世界路过', '4031297313513521', 'http://weibo.com/5957760174', 'id=5957760174', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/006vc9A2jw8f4wa0e1cwvj30hs0hsjsi.jpg', '西瓜西瓜红哒哒：超，看这100万元大奖', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('541', '邓超', '从你的全世界路过', '4031296604828949', 'http://weibo.com/6008626545', 'id=6008626545', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006yDAfnjw8f8662g8wmpj30ig0ig3zc.jpg', '永世倾晗：帮你照顾你儿子', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('542', '邓超', '从你的全世界路过', '4031296306817426', 'http://weibo.com/5844599600', 'id=5844599600', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006nxllujw8f8ud94zk6gj30ro0rpq52.jpg', 'Li镕泽：超哥是老戏骨啊', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('543', '邓超', '从你的全世界路过', '4031295635850567', 'http://weibo.com/dg2046ys', 'id=5042391879', 'http://tva4.sinaimg.cn/crop.51.51.540.540.50/005vfmthgw1enbg7pd6hhj30p00gon06.jpg', '巨画王璞：演技飙到爆…超赞', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('544', '邓超', '从你的全世界路过', '4031295514334592', 'http://weibo.com/5511840472', 'id=5511840472', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006117uMjw8f8ixitgmgtj30ig0ig0vi.jpg', 'sunny妹儿33：是悲剧嘛？！难受！正在看！！！！！！！正在影院哭！！！！！', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('545', '邓超', '从你的全世界路过', '4031294457145586', 'http://weibo.com/5112067317', 'id=5112067317', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005zXIeFjw8f8ir32vkxpj30ro0rpdhc.jpg', '熙悦041027：回复@昵称不支持符号:他们说的能信吗？', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('546', '邓超', '从你的全世界路过', '4031293778254672', 'http://weibo.com/1589273431', 'id=1589273431', 'http://tva3.sinaimg.cn/crop.0.22.1125.1125.50/5eba6357jw8f5mj63kchdj20v90wh0vf.jpg', '不瘦到两位数不改微博名yeah：今天刚和老公看完路过猪头说“没有你我怎么活”泪崩！超哥老戏骨', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('565', '邓超', '从你的全世界路过', '4031287146182784', 'http://weibo.com/5889390728', 'id=5889390728', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006qzhz2jw8f2g1zrxdb1j30ro0rpaby.jpg', '艺辈子兴不变888：果然是逗比一个', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('566', '邓超', '从你的全世界路过', '4031286630620565', 'http://weibo.com/1035585047', 'id=1035585047', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/3db9c617jw8f7wpm397wsj20ku0ku0t9.jpg', '请叫我ZhengYajuan：超哥，我也是一➕一等于4', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('567', '邓超', '从你的全世界路过', '4031286584048272', 'http://weibo.com/5850795421', 'id=5850795421', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006nXla5jw8f8huq53nr2j30ro0rojto.jpg', 'Mr-唐博文：邓叔不错呀，一如既往严肃而搞笑的风格，赞', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('568', '邓超', '从你的全世界路过', '4031286521467783', 'http://weibo.com/3777112737', 'id=3777112737', 'http://tva4.sinaimg.cn/crop.0.2.640.640.50/e1222aa1jw8f7uo7hn3uoj20hs0hxdg7.jpg', '夏时---：我要给你贴膜', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('569', '邓超', '从你的全世界路过', '4031286458739090', 'http://weibo.com/6030168673', 'id=6030168673', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/006A5Yl3jw8f8qdzy0isrj30hs0hs3yx.jpg', '陈末尘默：悄然从你的世界路过 无须做点什么 你就是我的全世界 我的全世界只有你', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('570', '邓超', '从你的全世界路过', '4031286450094420', 'http://weibo.com/5941754079', 'id=5941754079', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/006u6ZFdjw8f8iagb59kaj30c60c6t96.jpg', '六代目火影_Kakashi：...', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('571', '邓超', '从你的全世界路过', '4031285280470103', 'http://weibo.com/3169380020', 'id=3169380020', 'http://tva2.sinaimg.cn/crop.0.8.750.750.50/bce8e6b4jw8f6of5y7q9ij20ku0la3z2.jpg', '小西瓜太凉_：我送你一个吻', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('572', '邓超', '从你的全世界路过', '4031285208566892', 'http://weibo.com/5609231458', 'id=5609231458', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/0067BLl8jw8ev2h182mzej30hs0hst9o.jpg', 'Ellen1725：@邓超 你的评论里怎么那么多色色的东西？你不管管吗？', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('573', '邓超', '从你的全世界路过', '4031284298724413', 'http://weibo.com/5335320467', 'id=5335320467', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/005P4szVjw8f7pqv4wus6j30ig0igaba.jpg', '21点BlackJack：我可以帮你照顾你的大儿子', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('574', '邓超', '从你的全世界路过', '4031283938346418', 'http://weibo.com/5790278468', 'id=5790278468', 'http://tva3.sinaimg.cn/crop.0.0.748.748.50/006jRpWcjw8f64zgex6zqj30ks0ksmya.jpg', '叶子柚花：看你们在一起我想笑', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('575', '邓超', '从你的全世界路过', '4031283409509976', 'http://weibo.com/5317531223', 'id=5317531223', 'http://tva2.sinaimg.cn/crop.0.1.750.750.50/005NROMDjw8f6lif0agjwj30ku0kxdhj.jpg', '我是要嫁给GD的人啊：就你最丑', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('576', '邓超', '从你的全世界路过', '4031283312972628', 'http://weibo.com/5187337700', 'id=5187337700', 'http://tva1.sinaimg.cn/crop.21.0.1200.1200.50/005F3xv6jw8f863psx6exj30yi0xcq5p.jpg', '1加1等于3或4：抽我吧学霸哥@邓超', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('577', '邓超', '从你的全世界路过', '4031283262580972', 'http://weibo.com/6001539627', 'id=6001539627', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006y9QCfjw8f8dkdjavjij30ig0igjsk.jpg', '酷酷的兮兮欧巴：邓蜀黍今天贴膜收摊很早吗', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('578', '邓超', '从你的全世界路过', '4031282436906683', 'http://weibo.com/3205464881', 'id=3205464881', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/bf0f8331jw1e8qgp5bmzyj2050050aa8.jpg', '________志伟：身高175  92年2月，会做饭会洗衣，能污能萌能逗比，18厘米活好有前戏，疼你宠你没脾气，有品位会穿衣，不纹身不泡吧不乱丢垃圾，爱篮球爱猫狗爱追剧，长相优良，思想有觉悟，三观有高度。你爱的样子我都有，如果你缺男友，赶快把我带走', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('579', '邓超', '从你的全世界路过', '4031282373911231', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('580', '邓超', '从你的全世界路过', '4031282356240267', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱', '2016-10-17 13:33:50');
INSERT INTO `t_sina_weibo` VALUES ('581', '邓超', '从你的全世界路过', '4031282201696340', 'http://weibo.com/5889168908', 'id=5889168908', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', '会稽山下一逗逼：跑男呢？超爱看，我女儿更是一休息就看，还重复着看', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('582', '邓超', '从你的全世界路过', '4031281786995565', 'http://weibo.com/5912266433', 'id=5912266433', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006s7gA1jw8f8tu5fxzpuj30ig0ig0td.jpg', '四月的奶茶先生：欺骗我的感情你要不把鹿晗嫁给我我就打死你', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('583', '邓超', '从你的全世界路过', '4031281781781421', 'http://weibo.com/5705083521', 'id=5705083521', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/006e5WQ9jw8f7wwkr3mrjj30e80e8glx.jpg', '工作要淡定：大卖大卖超哥@邓超', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('584', '邓超', '从你的全世界路过', '4031281425976857', 'http://weibo.com/5605029531', 'id=5605029531', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/0067k8e7jw8f6q2zpysgvj30ro0rotb2.jpg', '哪儿有br：恭喜啊，票房7亿', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('585', '邓超', '从你的全世界路过', '4031281354235367', 'http://weibo.com/5136868755', 'id=5136868755', 'http://tva3.sinaimg.cn/crop.0.0.714.714.50/005BDMdRjw8f64berzgc0j30ju0jvab3.jpg', '喜歡吃肉的菜包子：你在我这里拍戏   要不请你吃顿便饭？', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('586', '邓超', '从你的全世界路过', '4031281265791436', 'http://weibo.com/5985492795', 'id=5985492795', 'http://tva3.sinaimg.cn/crop.73.30.250.250.50/006x4w6njw8f66ek5w1x8j30ci0a03ys.jpg', '爱淳-love：', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('587', '邓超', '从你的全世界路过', '4031281166189059', 'http://weibo.com/1980685631', 'id=1980685631', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/760edd3fjw8f8376qcz79j20ig0igabd.jpg', '柚子肉特多：叔叔~这是蕾丝透视装吗！哈哈哈哈哈哈哈哈哈哈', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('588', '邓超', '从你的全世界路过', '4031280896628085', 'http://weibo.com/5021008107', 'id=5021008107', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/005tNDzJjw8f5h0hmh0usj30ig0igdh7.jpg', '一鹿相随--：我来帮您娶了鹿晗好吗#鹿晗##邓超#', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('589', '邓超', '从你的全世界路过', '4031280863479916', 'http://weibo.com/5589913996', 'id=5589913996', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/0066iHZajw8f8n15e09srj30ro0rpdhw.jpg', '天蝎座的panda是个开心果：以后想找像你这样的男朋友。。', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('590', '邓超', '从你的全世界路过', '4031280750492505', 'http://weibo.com/6016865582', 'id=6016865582', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006zc9B4jw8f8643k4vnrj30ig0igwfe.jpg', '弄不死我啦啦啦：套路', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('591', '邓超', '从你的全世界路过', '4031280242469787', 'http://weibo.com/5609201682', 'id=5609201682', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/0067BDASjw8f7sdk3nwzlj30ig0igdgf.jpg', '纯纯的超好喝-：我能为你看你的每一部电影', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('592', '邓超', '从你的全世界路过', '4031278895875721', 'http://weibo.com/5927595942', 'id=5927595942', 'http://tva3.sinaimg.cn/crop.0.0.498.498.50/006t9Auajw8f3rcwpo1jcj30du0dugm8.jpg', '天涯5927595942：因为喜欢', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('593', '邓超', '从你的全世界路过', '4031278116594640', 'http://weibo.com/5923049841', 'id=5923049841', 'http://tva2.sinaimg.cn/default/images/default_avatar_male_50.gif', '花花的小猫咪3：(', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('594', '邓超', '从你的全世界路过', '4031278003228388', 'http://weibo.com/6047140679', 'id=6047140679', 'http://tva4.sinaimg.cn/crop.0.9.640.640.50/006Bfbx5jw8f8ualacps3j30hs0ibjsk.jpg', '捧着玻璃杯子：哈哈哈、抽我抽我抽我', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('595', '邓超', '从你的全世界路过', '4031277084261404', 'http://weibo.com/5821449478', 'id=5821449478', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006lYcWqjw8f8uaegmtt5j30ro0rpjsa.jpg', 'SUNNY198211：一家四口，邓超最丑', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('596', '邓超', '从你的全世界路过', '4031276258171533', 'http://weibo.com/5909311234', 'id=5909311234', 'http://tva1.sinaimg.cn/crop.0.0.40.40.50/006rURNwjw8f3bhk6xo6nj30140140s3.jpg', '_羽落樱飞璃25919：因为喜欢', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('597', '邓超', '从你的全世界路过', '4031276199023045', 'http://weibo.com/xuzeyazeya', 'id=5895961521', 'http://tva2.sinaimg.cn/crop.0.0.438.438.50/006r0QVzjw8f8svdgy9dbj30c60c6q39.jpg', '郑爽QQ兴趣部落官微：前排赞我瘦十斤', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('598', '邓超', '从你的全世界路过', '4031275868226999', 'http://weibo.com/3479603900', 'id=3479603900', 'http://tva2.sinaimg.cn/crop.12.0.743.743.50/cf668abcjw8f8e0w3jd6tj20lc0knwfa.jpg', 'Cherishiyynq：为你干嘛呀 你说', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('599', '邓超', '从你的全世界路过', '4031275377135865', 'http://weibo.com/828xc1213', 'id=5745027711', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006gNy9hjw8f7f80w153bj30ro0rpab3.jpg', '只属于xc的真心话：有本事你不要抽我', '2016-10-17 13:33:51');
INSERT INTO `t_sina_weibo` VALUES ('618', '邓超', '从你的全世界路过', '4031269681455060', 'http://weibo.com/3224340622', 'id=3224340622', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/c02f888ejw8f150z7cfsdj20hs0htdgo.jpg', '做一个文明的小吃货：你儿子就放心的交给我吧', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('619', '邓超', '从你的全世界路过', '4031269190251923', 'http://weibo.com/zy1150629817', 'id=3538215381', 'http://tva1.sinaimg.cn/crop.0.15.640.640.50/d2e4e1d5jw8f8udngtfmrj20hs0ingo6.jpg', '钟男优：抽我，抽我', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('620', '邓超', '从你的全世界路过', '4031269069028015', 'http://weibo.com/5765492004', 'id=5765492004', 'http://tva1.sinaimg.cn/crop.0.0.1002.1002.50/006ibpQwjw8f262x6arrfj30ru0rv75q.jpg', '墨晴沙儿：致歉好久没看你@邓超', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('621', '邓超', '从你的全世界路过', '4031268980872281', 'http://weibo.com/zy1150629817', 'id=3538215381', 'http://tva1.sinaimg.cn/crop.0.15.640.640.50/d2e4e1d5jw8f8udngtfmrj20hs0ingo6.jpg', '钟男优：超哥，听我一句劝！抽我！@邓超', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('622', '邓超', '从你的全世界路过', '4031268561829606', 'http://weibo.com/yuql55', 'id=2945523167', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/af911ddfjw8et0j5q5gdmj20k00k00tn.jpg', 'YUQILAN灬：到底抽不抽', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('623', '邓超', '从你的全世界路过', '4031268561263630', 'http://weibo.com/2807967170', 'id=2807967170', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/a75e2dc2jw8ed7um5ec7qj20hs0hsq37.jpg', '诺挪-：感谢你，好电影，很治愈', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('624', '邓超', '从你的全世界路过', '4031268389267879', 'http://weibo.com/3796634803', 'id=3796634803', 'http://tva1.sinaimg.cn/crop.141.63.383.383.50/e24c0cb3jw8f6nlg3whfij20j60cs3zb.jpg', '十二还小：', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('625', '邓超', '从你的全世界路过', '4031267995840546', 'http://weibo.com/5673748527', 'id=5673748527', 'http://tva2.sinaimg.cn/crop.30.0.421.421.50/006bYtb1jw8f60gwx7khbj30dc0dcq4e.jpg', '港城风云z：1', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('626', '邓超', '从你的全世界路过', '4031266963697401', 'http://weibo.com/1960695047', 'id=1960695047', 'http://tva1.sinaimg.cn/crop.0.0.1242.1242.50/74ddd507jw8f6vkueopahj20yi0yiwfu.jpg', 'A爱情通缉犯：好', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('627', '邓超', '从你的全世界路过', '4031266900649598', 'http://weibo.com/5921931590', 'id=5921931590', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/006sLOVEjw8f5vn7q07dtj30ig0ig0tj.jpg', '嘟嘟小嘴丿乚：#我们的约会#', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('628', '邓超', '从你的全世界路过', '4031266649050857', 'http://weibo.com/6020283054', 'id=6020283054', 'http://tva2.sinaimg.cn/crop.0.3.640.640.50/006zquDAjw8f7o9wkb5vqj30hs0hzgmd.jpg', '萌着萌着就懵了94984：回复@邓超:因为你不听话', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('629', '邓超', '从你的全世界路过', '4031266526951693', 'http://weibo.com/2977019934', 'id=2977019934', 'http://tva4.sinaimg.cn/crop.0.1.509.509.50/b171b81ejw8f50c8ola8pj20e50e8gm8.jpg', 'Mini-daidai：今天公司包场请客户看的，大家都觉得好看', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('630', '邓超', '从你的全世界路过', '4031266443995031', 'http://weibo.com/5749605230', 'id=5749605230', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006h6KYejw8f653ubr0eaj30ro0rp0v1.jpg', '你个懵丙：哦,回我私信了没', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('631', '邓超', '从你的全世界路过', '4031265798079029', 'http://weibo.com/5863931297', 'id=5863931297', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006oQsp3jw8f45l7acb9uj30ro0roacn.jpg', '释殿的刷子君：/', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('632', '邓超', '从你的全世界路过', '4031265281928388', 'http://weibo.com/5553490807', 'id=5553490807', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/0063PSEnjw8f7v67lkpiaj30ro0rotas.jpg', '俊哥帅帅的：超哥天天在家做下人', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('633', '邓超', '从你的全世界路过', '4031265278123500', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱你', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('634', '邓超', '从你的全世界路过', '4031265261093735', 'http://weibo.com/5973367205', 'id=5973367205', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/006wfDGljw8f8tzuq1vykj30ku0ku74y.jpg', '肩上妹妹在：赞妹妹爱爱自拍哟。➕妹妹爱爱这是', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('635', '邓超', '从你的全世界路过', '4031264971481934', 'http://weibo.com/3936045549', 'id=3936045549', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/ea9b49edjw8f7rxovyy64j20ig0ig3zl.jpg', '冰烟暮凝：超哥还是不要自导自演了，也不要找俞白眉了，只会拍烂片，还是好好当演员吧，不要消耗大家对你的爱', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('636', '邓超', '从你的全世界路过', '4031264669828697', 'http://weibo.com/5510450495', 'id=5510450495', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/0060VhTNjw8f8jew5w8q2j30ro0rp0um.jpg', '禁忌ENGLIEXO：超哥你把儿子给我照顾我保证一辈子都对他好。。鹿晗的余生就是我的了', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('637', '邓超', '从你的全世界路过', '4031264111152242', 'http://weibo.com/2004733544', 'id=2004733544', 'http://tva1.sinaimg.cn/default/images/default_avatar_male_50.gif', 'chenaiyan2011：真的一分钱没捐？光刷脸了', '2016-10-17 13:33:53');
INSERT INTO `t_sina_weibo` VALUES ('638', '邓超', '从你的全世界路过', '4031263179860329', 'http://weibo.com/3043792335', 'id=3043792335', 'http://tva4.sinaimg.cn/crop.0.0.511.511.50/b56c95cfjw8epzq9n9bqkj20e70e8dgy.jpg', '三无先森_蛋小疼：好看吗', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('639', '邓超', '从你的全世界路过', '4031262236903828', 'http://weibo.com/5954961738', 'id=5954961738', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006v0pzYjw8f6vuzdfdelj30ro0rpmyt.jpg', '汪汪汪汪汪小贱：看过', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('640', '邓超', '从你的全世界路过', '4031260353137007', 'http://weibo.com/5524240390', 'id=5524240390', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/0061R9hsjw8f29zg5i8wqj30c60c6gm8.jpg', 'lu小卢：@邓超 这是我第一次评论自己的男神。 U从你的全世界路过让我心头的大石头一瞬间落下了，纠结了五个月的失恋期，竟然因为一部电影所有的郁闷和悲伤都烟消云散，原来我们都是从别人的全世界路过，如果是对的人便会停住不走，如果只是路过，就终究是路过。谢谢你，让我从你的电影世界路过。', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('641', '邓超', '从你的全世界路过', '4031258939966534', 'http://weibo.com/5364721498', 'id=5364721498', 'http://tva1.sinaimg.cn/crop.0.0.480.480.50/005R3P86jw8erxw8qc11oj30dc0dc3z1.jpg', 'vivian海绵：陈末你好', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('642', '邓超', '从你的全世界路过', '4031258722104283', 'http://weibo.com/5869568400', 'id=5869568400', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006pe6S4jw8f4o7ppx9ajj30ig0iggny.jpg', '谁杀死了我：顶起', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('643', '邓超', '从你的全世界路过', '4031258696712561', 'http://weibo.com/5912724893', 'id=5912724893', 'http://tva1.sinaimg.cn/crop.3.0.174.174.50/006s9bQxjw8f8bwfkprlpj3050050745.jpg', 'M-鹿-M77：喂110？老地方还是那人', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('644', '邓超', '从你的全世界路过', '4031258113631215', 'http://weibo.com/3179479165', 'id=3179479165', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/bd83007djw8efygzzypryj20hs0hs75i.jpg', '鄂尔多斯先生-My：为你，我愿意去保护她', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('645', '邓超', '从你的全世界路过', '4031258042254382', 'http://weibo.com/3564383945', 'id=3564383945', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/d4742ec9jw8ezmwtk6sj7j20u00u077t.jpg', '风太大iii听不见：超哥，我做梦梦到你和贾玲演小品！演关于庆祝结婚纪念日的小品！！！超哥你要去演小品吗！！！赞我上去让超哥看到！！@邓超 @邓超 @邓超 @邓超', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('646', '邓超', '从你的全世界路过', '4031257958930469', 'http://weibo.com/6046882427', 'id=6046882427', 'http://tva3.sinaimg.cn/crop.0.0.960.960.50/006Be6lJjw8f8u74tzsy4j30qo0qo77e.jpg', '余生一个熙宝：邓超叔叔', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('647', '邓超', '从你的全世界路过', '4031257740231768', 'http://weibo.com/1015774425', 'id=1015774425', 'http://tva4.sinaimg.cn/crop.0.0.438.438.50/3c8b7cd9jw8f8t6157zr9j20c60c6gm8.jpg', '杨树下的微微：你是猴子派来搞笑的吗？', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('648', '邓超', '从你的全世界路过', '4031257605715956', 'http://weibo.com/3564383945', 'id=3564383945', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/d4742ec9jw8ezmwtk6sj7j20u00u077t.jpg', '风太大iii听不见：超哥，我做梦梦到你和贾玲演小品！演关于庆祝结婚纪念日的小品！！！超哥你要去演小品吗！！！', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('649', '邓超', '从你的全世界路过', '4031257593303064', 'http://weibo.com/2994091791', 'id=2994091791', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/b276370fjw8evsuslnp30j20u00u0gnl.jpg', '2V博：小岳岳那段让我哭了  其他并不觉得好看…', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('650', '邓超', '从你的全世界路过', '4031257099318789', 'http://weibo.com/2298080143', 'id=2298080143', 'http://tva4.sinaimg.cn/crop.4.0.1233.1233.50/88f9eb8fjw8f8ed8r3mz3j20yi0y9ju3.jpg', 'Sunny_Qu：最好的是我和老妈都是超哥铁粉，每次的电影都和老妈一起去看，潮涨潮落，人来人往，多少人会从自己的世界路过，多少人会在自己的世界逗留然后错过，尽管满心期待，但缘分不会说来就来，和老妈看超哥电影， 你的青春遇见了谁，又给了谁@邓超', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('651', '邓超', '从你的全世界路过', '4031256389431765', 'http://weibo.com/5712037357', 'id=5712037357', 'http://tva4.sinaimg.cn/crop.0.0.640.640.50/006ez7QNjw8ewi3tr07vkj30hs0htjsc.jpg', '遇见baby_5555：大爱超哥', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('652', '邓超', '从你的全世界路过', '4031255613574631', 'http://weibo.com/1833356277', 'id=1833356277', 'http://tva3.sinaimg.cn/crop.0.0.1002.1002.50/6d46cbf5jw8f8fdc79rj6j20ru0ru402.jpg', '老五家的小老五贼婆：我看了', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('653', '邓超', '从你的全世界路过', '4031255403605147', 'http://weibo.com/5593760972', 'id=5593760972', 'http://tva2.sinaimg.cn/crop.0.0.100.100.50/0066yQLajw8erfdfd5pmhj302s02st8k.jpg', '妮可10992：你能抽我吗', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('654', '邓超', '从你的全世界路过', '4031255346091102', 'http://weibo.com/6030996160', 'id=6030996160', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006A9rBCjw8f84p05m48rj30ro0ro0v3.jpg', '西子酱HAN：为糙哥去看的赞我', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('655', '邓超', '从你的全世界路过', '4031255219461617', 'http://weibo.com/5650467737', 'id=5650467737', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/006aoMMpjw8f79xcjn3fmj30ku0kuq44.jpg', 'ExclusiveMemoryAAA：辣鸡超', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('656', '邓超', '从你的全世界路过', '4031255160293111', 'http://weibo.com/3228950030', 'id=3228950030', 'http://tva2.sinaimg.cn/crop.0.1.750.750.50/c075de0ejw8eyrezir6x6j20ku0kw0tp.jpg', '爱吃串串的鸡蛋糕：求各地朋友们转发，高陵区造焚烧厂，高陵人民不同意，已经游行四五天了，无人问津，高陵区消息已经被封锁，与外界已经失去联系！已经四天了，至今却没有合理的答复，偌大的中国更没有一个媒体报道此事。作为高陵子民愤奋的呐喊一声“保卫蓝天，还我净土，捍卫高陵，抵制焚烧”', '2016-10-17 13:33:54');
INSERT INTO `t_sina_weibo` VALUES ('657', '邓超', '从你的全世界路过', '4031255064121438', 'http://weibo.com/5861339227', 'id=5861339227', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/006oFA5tjw8f13dakfk8oj30ig0ig3zh.jpg', '风尘已过l：回复@邓超:因为你真给人家贴膜了吗', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('658', '邓超', '从你的全世界路过', '4031254754371629', 'http://weibo.com/3969924345', 'id=3969924345', 'http://tva4.sinaimg.cn/crop.0.0.1080.1080.50/eca03cf9jw8et5q0pvfvfj20u00u0q4j.jpg', '东湖国际大管家：已经看了   很好好一针见血', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('659', '邓超', '从你的全世界路过', '4031254220871894', 'http://weibo.com/3767517084', 'id=3767517084', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/e08fbf9cjw8evdbanmjebj20u00u0dj6.jpg', '郎宏雪：给你找一个最好的英语老师，哈哈', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('660', '邓超', '从你的全世界路过', '4031254141866702', 'http://weibo.com/5826240635', 'id=5826240635', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006mijl9jw8f598dgzb9zj30ig0igt9j.jpg', '哎呀哎呀噗：不能', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('661', '邓超', '从你的全世界路过', '4031254024506292', 'http://weibo.com/2921937843', 'id=2921937843', 'http://tva3.sinaimg.cn/crop.0.0.512.512.50/ae293bb3jw8el1qbt7gjfj20e80e8t91.jpg', '一个陈钦：超哥我有预感你要刷微博了', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('662', '邓超', '从你的全世界路过', '4031253981756327', 'http://weibo.com/5724172713', 'id=5724172713', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006fo2Oljw8f71s48a07cj30ig0igwet.jpg', '橘子橘子不拿呐：图片评论', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('663', '邓超', '从你的全世界路过', '4031253894707852', 'http://weibo.com/5922167821', 'id=5922167821', 'http://tva3.sinaimg.cn/crop.0.0.200.200.50/006sMOnPjw1f3n4ipn6lej305k05kwed.jpg', '郜断世谫池：#我们的约会#', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('664', '邓超', '从你的全世界路过', '4031253789949048', 'http://weibo.com/3842730451', 'id=3842730451', 'http://tva3.sinaimg.cn/crop.14.0.721.721.50/e50b69d3jw8f679h0m11gj20ku0k174r.jpg', '雯雯吶-：想合影昨天做梦梦到跟超哥合影 咔嚓一声就醒了', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('665', '邓超', '从你的全世界路过', '4031253650852412', 'http://weibo.com/5549213945', 'id=5549213945', 'http://tva4.sinaimg.cn/crop.0.0.664.664.50/0063xW2Jjw8f8suw3czuaj30ig0ig0u4.jpg', '抱走孙晨：好套路', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('666', '邓超', '从你的全世界路过', '4031253257242127', 'http://weibo.com/5075655795', 'id=5075655795', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/005xuVW3jw8f8u76um3kbj30ku0kudgk.jpg', 'ooakkkk：', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('667', '邓超', '从你的全世界路过', '4031252984714209', 'http://weibo.com/5379259340', 'id=5379259340', 'http://tva3.sinaimg.cn/crop.0.15.640.640.50/005S2P5qjw8f71dt6l6j0j30hs0in3zm.jpg', '_我黑呀：我我我我看了', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('668', '邓超', '从你的全世界路过', '4031252954231873', 'http://weibo.com/3498163534', 'id=3498163534', 'http://tva2.sinaimg.cn/crop.0.0.750.750.50/d081bd4ejw8f3e1iu92f2j20ku0kv0tl.jpg', '郑seven7：能为你做的就是每次电影都去看', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('669', '邓超', '从你的全世界路过', '4031252778626372', 'http://weibo.com/3842730451', 'id=3842730451', 'http://tva3.sinaimg.cn/crop.14.0.721.721.50/e50b69d3jw8f679h0m11gj20ku0k174r.jpg', '雯雯吶-：@邓超 @邓超 @邓超', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('670', '邓超', '从你的全世界路过', '4031252644557960', 'http://weibo.com/5255647922', 'id=5255647922', 'http://tva1.sinaimg.cn/crop.0.26.1242.1242.50/005JGa6Sjw8f7h5bns95oj30yi0zyad5.jpg', '久念成病i22：二货超哥，已经到了7亿几房票了，我也去电影院看。', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('671', '邓超', '从你的全世界路过', '4031252199678793', 'http://weibo.com/1840129342', 'id=1840129342', 'http://tva3.sinaimg.cn/crop.0.0.180.180.50/6dae253ejw1e8qgp5bmzyj2050050aa8.jpg', '适k3而止i：可以找你贴膜，把地址私信给我', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('672', '邓超', '从你的全世界路过', '4031251516227278', 'http://weibo.com/5034575416', 'id=5034575416', 'http://tva3.sinaimg.cn/crop.0.0.438.438.50/005uIz3ijw8f3g5tjdtjsj30c60c6q3j.jpg', '金phoebe：超哥，今天在*栅看到你了！好兴奋！！！', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('673', '邓超', '从你的全世界路过', '4031251289064486', 'http://weibo.com/5645106342', 'id=5645106342', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006a2i2ijw8f6s7ifh2cgj30ro0roq4n.jpg', '小磨人精儿2015：一定是不错的电影，故事本身就不错的', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('674', '邓超', '从你的全世界路过', '4031250891321133', 'http://weibo.com/3427291240', 'id=3427291240', 'http://tva4.sinaimg.cn/crop.0.0.480.480.50/cc485068jw8f4uuedb27qj20dc0dcaay.jpg', '薛之谦的小迷妹lyy：图片评论', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('675', '邓超', '从你的全世界路过', '4031250542610654', 'http://weibo.com/jiayunqu', 'id=5933761694', 'http://tva1.sinaimg.cn/crop.0.2.640.640.50/006tzstMjw8f80xce8h8tj30hs0hx0ti.jpg', 'Smile灬路過：很不错！继续加油@邓超', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('676', '邓超', '从你的全世界路过', '4031249791889285', 'http://weibo.com/5561272169', 'id=5561272169', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/0064mwWdjw8f83we5nm4yj30ro0rpq4z.jpg', '错什12349：图片评论', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('677', '邓超', '从你的全世界路过', '4031249724577213', 'http://weibo.com/ruoshuisanqian0222', 'id=1699392592', 'http://tva1.sinaimg.cn/crop.0.0.511.511.50/654aac50jw8f8ue9xxeolj20e80e7wfa.jpg', '半瓶木槿：第一次欠抽。 ¡查看图片', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('678', '邓超', '从你的全世界路过', '4031249598725357', 'http://weibo.com/3887958622', 'id=3887958622', 'http://tva4.sinaimg.cn/crop.0.0.512.512.50/e7bd8a5ejw8ezkexmgle4j20e80e80t8.jpg', '一只漂泊的小香烟：哈哈，逗死了', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('679', '邓超', '从你的全世界路过', '4031249288629917', 'http://weibo.com/5698245572', 'id=5698245572', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006dDfYEjw8f8n062dlhyj30ro0rp75o.jpg', '安眠药也有假的啊：转发微博', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('680', '邓超', '从你的全世界路过', '4031248437157784', 'http://weibo.com/2212093983', 'id=2212093983', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/83d9e01fjw8f7whi4oqe1j20yi0yiad8.jpg', '扬沙0521：还真像', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('681', '邓超', '从你的全世界路过', '4031247770740334', 'http://weibo.com/1891931712', 'id=1891931712', 'http://tva2.sinaimg.cn/crop.4.0.741.741.50/70c49640jw8f8thlhihd2j20ku0kl74v.jpg', '-DONGYA-：', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('682', '邓超', '从你的全世界路过', '4031247703229958', 'http://weibo.com/2831780850', 'id=2831780850', 'http://tva1.sinaimg.cn/crop.0.0.180.180.50/a8c98bf2jw1e8qgp5bmzyj2050050aa8.jpg', 'Winniebaby7：抽我', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('683', '邓超', '从你的全世界路过', '4031247628050108', 'http://weibo.com/3458082084', 'id=3458082084', 'http://tva3.sinaimg.cn/crop.0.0.1242.1242.50/ce1e2524jw8f66kxaq6boj20yi0yi0vf.jpg', 'SUN-SUN-SUN_：来来来', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('684', '邓超', '从你的全世界路过', '4031246512474156', 'http://weibo.com/3026232121', 'id=3026232121', 'http://tva2.sinaimg.cn/crop.24.0.1193.1193.50/b460a339jw8f8q294iuemj20yi0x5djg.jpg', '海因里希希：别路过，粉个再走吧', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('685', '邓超', '从你的全世界路过', '4031246399590529', 'http://weibo.com/5087270172', 'id=5087270172', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/005yhFmIjw8f2by8u86woj30ig0igdgw.jpg', '转裑巳陌1117：超哥  跑男怎么还不上', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('686', '邓超', '从你的全世界路过', '4031246050883154', 'http://weibo.com/5977629036', 'id=5977629036', 'http://tva2.sinaimg.cn/crop.14.0.722.722.50/006wxwnyjw8f752gn9ejmj30ku0k2js5.jpg', 'johnny__white：从你的全世界路过@Johnny黄景瑜 @Johnny黄景瑜', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('687', '邓超', '从你的全世界路过', '4031245992107387', 'http://weibo.com/5939325694', 'id=5939325694', 'http://tva4.sinaimg.cn/crop.0.0.210.210.50/006tWNVIjw1f48p0gpb4yj305u05ujrb.jpg', '上官袭扁上官：齐滨里舒森础北贝鹏', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('688', '邓超', '从你的全世界路过', '4031245522163482', 'http://weibo.com/1940767083', 'id=1940767083', 'http://tva2.sinaimg.cn/crop.0.0.720.720.50/73adc16bjw8eucnl09xx4j20k00k00wa.jpg', '跳起一个么么哒：超哥 你别私信我了 我一个学设计的怎么知道怎么治疗阳痿', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('689', '邓超', '从你的全世界路过', '4031245425600423', 'http://weibo.com/6012532317', 'id=6012532317', 'http://tva2.sinaimg.cn/crop.0.0.200.200.50/006yTYjHjw1f79r7hpsmjj305k05kjr9.jpg', '仲孙轿售：崇录阳靖军方方萱男', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('690', '邓超', '从你的全世界路过', '4031245002279093', 'http://weibo.com/2518964725', 'id=2518964725', 'http://tva4.sinaimg.cn/crop.0.0.750.750.50/962459f5jw8f8jy1x2i1mj20ku0kudgz.jpg', '飞天小美银：抽我 帮你花钱 好么', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('691', '邓超', '从你的全世界路过', '4031244641784773', 'http://weibo.com/5492807840', 'id=5492807840', 'http://tva1.sinaimg.cn/crop.0.0.512.512.50/005ZJgeQjw8f6llrrb0bxj30e80e8glu.jpg', '一位艺人朋友：又厉害了我的哥@Johnny黄景瑜', '2016-10-17 13:33:55');
INSERT INTO `t_sina_weibo` VALUES ('709', '邓超', '从你的全世界路过', '4031239046683469', 'http://weibo.com/5615715579', 'id=5615715579', 'http://tva4.sinaimg.cn/crop.0.11.1537.1537.50/00682Y9Jjw8f8h6djfgxnj316p17bq79.jpg', '代表世界爱凯爷：给你的手机贴膜', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('710', '邓超', '从你的全世界路过', '4031239042869704', 'http://weibo.com/Sheila1993', 'id=5384515461', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005SoSrzjw8f7kxyw35d2j30ro0rp401.jpg', '苏打不解渴：已经看完了  表示不爱你了去爱小岳岳了', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('711', '邓超', '从你的全世界路过', '4031238689511063', 'http://weibo.com/5618103063', 'id=5618103063', 'http://tva2.sinaimg.cn/crop.0.0.511.511.50/0068cZfxjw8ey1puz38evj30e70e8dgd.jpg', '茶不苦girl：回复@用户6029088059 的赞:此刻的高陵县城就像南京大屠杀的现场一样，警察胡乱抓人，打人，三十万同胞的心在滴血，现场拍照的人都被抓起来，警察抢手机，连小女生都不放过抓走了，简直就是一群土匪强盗，不到现场你都不知道警察有多么残暴，看到的朋友们转起来，让更多的人知道他们的恶行！！！', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('712', '邓超', '从你的全世界路过', '4031238068853788', 'http://weibo.com/5718573614', 'id=5718573614', 'http://tva1.sinaimg.cn/crop.0.0.512.512.50/006f0yeijw8f82527tkkkj30e80e80ta.jpg', '不修边幅侠Keroyo：真想给你一个hao yo gen 加一个过肩摔然后按倒在地给你贴个膜', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('713', '邓超', '从你的全世界路过', '4031237763014382', 'http://weibo.com/5409686681', 'id=5409686681', 'http://tva2.sinaimg.cn/crop.0.3.505.505.50/005U6uCZjw8f8o0xx0p2tj30e10e874q.jpg', '峰峰哥哥的小宽粉儿：超哥你最帅 带我见杨洋', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('714', '邓超', '从你的全世界路过', '4031237402660047', 'http://weibo.com/3783146312', 'id=3783146312', 'http://tva3.sinaimg.cn/crop.0.8.1242.1242.50/e17e3b48jw8f6tvgswtuvj20yi0yy0vn.jpg', '当父亲的日子：#邓超#', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('715', '邓超', '从你的全世界路过', '4031237251307456', 'http://weibo.com/5117936272', 'id=5117936272', 'http://tva4.sinaimg.cn/crop.9.0.493.493.50/005Aml1ejw8f8qz8w41rpj30e80dp74m.jpg', '安安茜君：帮你儿子生猴子', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('716', '邓超', '从你的全世界路过', '4031236949254182', 'http://weibo.com/5949292069', 'id=5949292069', 'http://tva2.sinaimg.cn/crop.0.0.1242.1242.50/006uCCDHjw8f8ifr6ry3lj30yi0yin1x.jpg', '懵懂的蜡笔小小星：超哥我要看跑男，五季什么时候开播', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('717', '邓超', '从你的全世界路过', '4031236605729583', 'http://weibo.com/3571106117', 'id=3571106117', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/d4dac145jw8f6xauai33pj20ig0igaay.jpg', 'Prettyhun：余生让我为你照顾你儿子吧', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('718', '邓超', '从你的全世界路过', '4031236563809678', 'http://weibo.com/6028027385', 'id=6028027385', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/006zWZi9jw8f7wdzxb61yj30ro0rojue.jpg', '于梦萧瑟：呵呵，支持！', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('719', '邓超', '从你的全世界路过', '4031235950789387', 'http://weibo.com/3898541746', 'id=3898541746', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/e85f06b2jw8f6dj7ns5p4j20ro0rpdj9.jpg', 'missaya小诺：从你全世界路过，下一站更精彩', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('720', '邓超', '从你的全世界路过', '4031235737053831', 'http://weibo.com/5315498260', 'id=5315498260', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/005NJhUUjw8f7mgzn8ck4j30ku0ku75t.jpg', '海萝姑娘啊：这个电影好看到爆炸！@邓超 @邓超 @邓超 超哥爱你', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('721', '邓超', '从你的全世界路过', '4031235594118276', 'http://weibo.com/2718505323', 'id=2718505323', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/a209196bjw1e8qgp5bmzyj2050050aa8.jpg', '牛牛撞上鱼腩：父母用三年盼来的小天使凯乐，不幸患上了嗜血细胞综合症，身体各项指标急剧下降，免疫系统失效、全身溃烂、多次大量出血，也许是上天的垂怜，也许是宝贝舍不得离开爱他的父母@妈妈爱凯乐，凯乐一次次从生死边缘回来，望好心的人帮帮他们，您的一次捐助一次转发我们将感激不尽！', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('722', '邓超', '从你的全世界路过', '4031235585728755', 'http://weibo.com/5510553347', 'id=5510553347', 'http://tva3.sinaimg.cn/crop.0.0.100.100.50/0060VIEHjw8eozfa6h3wpj302s02sglf.jpg', '互相伤害来：什么都可以', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('723', '邓超', '从你的全世界路过', '4031235380848781', 'http://weibo.com/yuql55', 'id=2945523167', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/af911ddfjw8et0j5q5gdmj20k00k00tn.jpg', 'YUQILAN灬：超哥这部电影在重庆拍的，下次来重庆请你吃火锅吧，拍电影辛苦了，看我懂事吧，不抽我不爱你了@邓超 @邓超', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('724', '邓超', '从你的全世界路过', '4031235229419532', 'http://weibo.com/5153964808', 'id=5153964808', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/005CNvGEjw8f7o56d8oysj30ig0igmy8.jpg', '世界是你的吗：厉害', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('725', '邓超', '从你的全世界路过', '4031235036191195', 'http://weibo.com/2976384004', 'id=2976384004', 'http://tva1.sinaimg.cn/crop.0.13.750.750.50/b1680404jw8f8otflgqbbj20ku0lk75k.jpg', 'LinJuanJuan_：为我做，说我存在你的微信里', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('726', '邓超', '从你的全世界路过', '4031234696398958', 'http://weibo.com/2976384004', 'id=2976384004', 'http://tva1.sinaimg.cn/crop.0.13.750.750.50/b1680404jw8f8otflgqbbj20ku0lk75k.jpg', 'LinJuanJuan_：', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('727', '邓超', '从你的全世界路过', '4031234529737425', 'http://weibo.com/2261243930', 'id=2261243930', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/86c7d81ajw8f5p6z0t39hj20ro0rp0wt.jpg', '燕燕燕___：', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('728', '邓超', '从你的全世界路过', '4031233803766945', 'http://weibo.com/2540759963', 'id=2540759963', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/9770eb9bjw8f5rd7kfgksj20ku0kuab4.jpg', '合欢的何v：我想让你帮我实现一个愿望正经的', '2016-10-17 13:33:57');
INSERT INTO `t_sina_weibo` VALUES ('729', '邓超', '从你的全世界路过', '4031233329103862', 'http://weibo.com/5618103063', 'id=5618103063', 'http://tva2.sinaimg.cn/crop.0.0.511.511.50/0068cZfxjw8ey1puz38evj30e70e8dgd.jpg', '茶不苦girl：回复@Loy是洛一 的赞:可以帮帮我们吗', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('730', '邓超', '从你的全世界路过', '4031231455172282', 'http://weibo.com/6044777260', 'id=6044777260', 'http://tva1.sinaimg.cn/crop.0.0.200.200.50/006B5gHqjw1f8r325sr7ij305k05kdfv.jpg', '麻里脚麻：图片评论', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('731', '邓超', '从你的全世界路过', '4031231278024749', 'http://weibo.com/2470422114', 'id=2470422114', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/933fa662jw8f8al2v2wsgj20ro0romz2.jpg', '木易木易nice：支持支持', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('732', '邓超', '从你的全世界路过', '4031231043814219', 'http://weibo.com/unique0m', 'id=1960862494', 'http://tva1.sinaimg.cn/crop.0.0.511.511.50/74e0631ejw8eqef8p6nxfj20e70e8dg7.jpg', '这是一只数字盲：看了四遍', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('733', '邓超', '从你的全世界路过', '4031230921452003', 'http://weibo.com/2737349775', 'id=2737349775', 'http://tva1.sinaimg.cn/crop.0.0.180.180.50/a328a48fjw1e8qgp5bmzyj2050050aa8.jpg', 'C_______ting：从你的全世界路过  第一次在电影院睡着', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('734', '邓超', '从你的全世界路过', '4031230372170631', 'http://weibo.com/5933469971', 'id=5933469971', 'http://tva3.sinaimg.cn/crop.0.0.438.438.50/006tyeAzjw8f8u4ty90v6j30c60c6q32.jpg', '霉菌丫：你的贴膜摊我承包了', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('735', '邓超', '从你的全世界路过', '4031230137910032', 'http://weibo.com/2593787672', 'id=2593787672', 'http://tva3.sinaimg.cn/crop.0.0.180.180.50/9a9a0f18jw1e8qgp5bmzyj2050050aa8.jpg', '灰灰小包包：今天超哥在拍乘风破浪', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('736', '邓超', '从你的全世界路过', '4031229818432938', 'http://weibo.com/5682118342', 'id=5682118342', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/006cxAy2jw8f8d1kgq3utj30ro0rpjtt.jpg', 'JUSTTHEWAYYOUAREFJT：去看不后悔，电影太好了', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('737', '邓超', '从你的全世界路过', '4031229801652768', 'http://weibo.com/3875188480', 'id=3875188480', 'http://tva4.sinaimg.cn/crop.0.0.480.480.50/e6faaf00jw8ewse1jwlirj20dc0dcgm4.jpg', '瑾年_苏筠凉：每次玩微博都会来看看超哥有没有更新了，越来越喜欢你了，', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('738', '邓超', '从你的全世界路过', '4031229668036052', 'http://weibo.com/5558577230', 'id=5558577230', 'http://tva1.sinaimg.cn/crop.0.0.640.640.50/0064bdRsjw8eq7jyvm0pqj30hs0hsac3.jpg', '超级锅里奥：还不错。加油。', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('739', '邓超', '从你的全世界路过', '4031229130897476', 'http://weibo.com/5651361145', 'id=5651361145', 'http://tva2.sinaimg.cn/crop.0.0.498.498.50/006asxcdjw8f8u6fj95xlj30du0duwek.jpg', '船的左边：来来来我叫你做数学题 就问你敢不敢', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('740', '邓超', '从你的全世界路过', '4031228635710230', 'http://weibo.com/5973527306', 'id=5973527306', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/006wgjkCjw8f5gy4lio3jj30ro0romzj.jpg', '用户5973527306：哈哈', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('741', '邓超', '从你的全世界路过', '4031228619465337', 'http://weibo.com/5228604608', 'id=5228604608', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/005HQGUojw8f8eaabok2fj30ku0kuq42.jpg', '兔咂咂：我帮你照顾你儿子吧帮你照顾他一辈子', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('742', '邓超', '从你的全世界路过', '4031228254955347', 'http://weibo.com/5522539170', 'id=5522539170', 'http://tva3.sinaimg.cn/crop.0.0.996.996.50/0061K0Iqjw8f6ua2ksasuj30ro0rp41t.jpg', 'j鹿哥Mh：我就问一件事，奔跑吧兄弟第五季播不播出。', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('743', '邓超', '从你的全世界路过', '4031228153286191', 'http://weibo.com/5618103063', 'id=5618103063', 'http://tva2.sinaimg.cn/crop.0.0.511.511.50/0068cZfxjw8ey1puz38evj30e70e8dgd.jpg', '茶不苦girl：邓叔叔，我们这里出大事了，所有的媒体都不给我们报道， 我们高陵人民游行近一周了，为了30多万人民的健康，抵制在我们高陵建全西安市的垃圾焚烧广， 得到却是政府的无视，西安特警无情的抓打，  所有的消息都给我们封杀，邓叔叔，帮我们一把，我亲爱的偶像，我们太无能为力@邓超 @邓超 @邓超 @邓超', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('744', '邓超', '从你的全世界路过', '4031228082551306', 'http://weibo.com/xujingyao123', 'id=1794114743', 'http://tva4.sinaimg.cn/crop.9.0.732.732.50/6af004b7jw8f865swdxoqj20ku0kcgmp.jpg', '徐境遥：回复@邓超:真实可靠 免费入职', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('745', '邓超', '从你的全世界路过', '4031227780507731', 'http://weibo.com/2329717971', 'id=2329717971', 'http://tva1.sinaimg.cn/crop.0.0.720.720.50/8adcacd3jw8ewfo9qadwkj20k00k0t9p.jpg', '向阳草C_C：真的吗', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('746', '邓超', '从你的全世界路过', '4031227625028577', 'http://weibo.com/2760405040', 'id=2760405040', 'http://tva1.sinaimg.cn/crop.0.0.750.750.50/a4887030jw8f2g1ahtknyj20ku0ku0tg.jpg', '花开馥郁Cyan：出来玩@邓超', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('747', '邓超', '从你的全世界路过', '4031227343916744', 'http://weibo.com/5034966568', 'id=5034966568', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/005uKcOcjw8f6ymwwri34j30ig0iggn2.jpg', '东堤水岸：回复@邓超:因为要治疗你的智障', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('748', '邓超', '从你的全世界路过', '4031227151474464', 'http://weibo.com/sandyngan', 'id=1906254801', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/719f23d1jw8f8u4nnqpsfj20ro0rpwgf.jpg', 'JG颜小花：爸爸', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('749', '邓超', '从你的全世界路过', '4031227029925586', 'http://weibo.com/5927496406', 'id=5927496406', 'http://tva3.sinaimg.cn/default/images/default_avatar_male_50.gif', '刘先生_200005：心机boy', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('750', '邓超', '从你的全世界路过', '4031226744036476', 'http://weibo.com/5401283630', 'id=5401283630', 'http://tva4.sinaimg.cn/crop.0.0.40.40.50/005TxeBUjw8enqxfase8pj30140140pt.jpg', '快乐贱渊宝：最后到底有没有彩蛋啊？有的话我还得再去影院重新看一遍@邓超', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('751', '邓超', '从你的全世界路过', '4031224886648254', 'http://weibo.com/iwuge', 'id=2026100207', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/78c3d5efjw8ezun0qfl8vj20ro0rpq4s.jpg', 'Wuge吴歌：早已看，片子赞！', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('752', '邓超', '从你的全世界路过', '4031224734906064', 'http://weibo.com/3225322613', 'id=3225322613', 'http://tva2.sinaimg.cn/crop.0.0.996.996.50/c03e8475jw8f84yunnehxj20ro0ro3zv.jpg', '钱桂310：想要个苹果7', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('753', '邓超', '从你的全世界路过', '4031224597064787', 'http://weibo.com/5238833516', 'id=5238833516', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/005IxBUMjw8f6n94ef6c4j30ro0rognf.jpg', 'chen入银河系：回复@邓超:因为你欠抽', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('754', '邓超', '从你的全世界路过', '4031223875729036', 'http://weibo.com/ljming813', 'id=1744491085', 'http://tva3.sinaimg.cn/crop.0.0.640.640.50/67fad24djw8ezdet7j2ydj20hs0hs3zo.jpg', '_唫魚_：圖片評論', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('755', '邓超', '从你的全世界路过', '4031223854734764', 'http://weibo.com/2912172355', 'id=2912172355', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/ad943943jw8f3y992lh6mj20c60c6t9a.jpg', 'VIP玲vip梓墨：上映就去看了，挺好的，超哥', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('756', '邓超', '从你的全世界路过', '4031222717811843', 'http://weibo.com/5495225630', 'id=5495225630', 'http://tva4.sinaimg.cn/crop.3.0.633.633.50/005ZTpdsjw8f89o83o25fj30hs0hl3z5.jpg', '来一杯冰水压压惊：', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('757', '邓超', '从你的全世界路过', '4031222580085506', 'http://weibo.com/3626340830', 'id=3626340830', 'http://tva1.sinaimg.cn/crop.0.0.300.300.50/d82591dejw8f5tqmrex3aj208c08c3z4.jpg', 'Quella-HH：吃面那样子就数你最猥琐', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('758', '邓超', '从你的全世界路过', '4031222424315259', 'http://weibo.com/6044840822', 'id=6044840822', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006B5xeCjw8f8rkq2m386j30ro0rp42n.jpg', '你差太多199106：', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('759', '邓超', '从你的全世界路过', '4031221757503967', 'http://weibo.com/5703218851', 'id=5703218851', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/006dY7KPjw8ewlm7vckt2j30u00u0did.jpg', 'Musttaakilll：邓超你为什么不带等等去参加爸爸去哪儿', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('760', '邓超', '从你的全世界路过', '4031221296688116', 'http://weibo.com/2754163437', 'id=2754163437', 'http://tva1.sinaimg.cn/crop.0.1.1242.1242.50/a42932edjw8ez6iqx7iyvj20yi0ykgou.jpg', '哇哈哈的哇哈哈哈哈哈：一家四口 邓超最丑', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('761', '邓超', '从你的全世界路过', '4031219869487683', 'http://weibo.com/2305216817', 'id=2305216817', 'http://tva4.sinaimg.cn/crop.0.0.1080.1080.50/8966d131jw8eqmg4nngxjj20u00u0add.jpg', '萌非非非：做些什么好呢', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('762', '邓超', '从你的全世界路过', '4031219383130321', 'http://weibo.com/5938923831', 'id=5938923831', 'http://tva2.sinaimg.cn/crop.0.0.40.40.50/006tV7o3jw8f48n76z7jhj30140140sh.jpg', '你是我的太阳神90522：我现在真的好难', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('763', '邓超', '从你的全世界路过', '4031219337884990', 'http://weibo.com/5938923831', 'id=5938923831', 'http://tva2.sinaimg.cn/crop.0.0.40.40.50/006tV7o3jw8f48n76z7jhj30140140sh.jpg', '你是我的太阳神90522：哪怕是一句鼓励的话', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('764', '邓超', '从你的全世界路过', '4031219282969548', 'http://weibo.com/5938923831', 'id=5938923831', 'http://tva2.sinaimg.cn/crop.0.0.40.40.50/006tV7o3jw8f48n76z7jhj30140140sh.jpg', '你是我的太阳神90522：超哥，求你看看私聊吧', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('765', '邓超', '从你的全世界路过', '4031218321798158', 'http://weibo.com/2083885283', 'id=2083885283', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/7c3590e3jw8f8tte29qqwj20ig0igaap.jpg', '森熙璐：回复@M鹿挽今生晗情此生lh7:还有奔跑吧兄弟', '2016-10-17 13:33:58');
INSERT INTO `t_sina_weibo` VALUES ('785', '邓超', '从你的全世界路过', '4031212613863766', 'http://weibo.com/5603351467', 'id=5603351467', 'http://tva1.sinaimg.cn/crop.0.0.664.664.50/0067d5Gzjw8f8ugth79a1j30ig0iggmo.jpg', '鹿晗家的肥猫：我做你儿媳妇吧这样关爱智障的你比较方便点在帮你生个孙子Or孙女儿？', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('786', '邓超', '从你的全世界路过', '4031212114229768', 'http://weibo.com/diVSdi', 'id=1553990030', 'http://tva1.sinaimg.cn/crop.0.8.750.750.50/5ca0018ejw8f6yc0tm1w8j20ku0lajs4.jpg', '魔头歪歪：大家好，你可能还不认识我，我呢，将来会是一位网红，你可能不相信，但是没关系，你愿意成为我的第301个粉丝吗？看到这里，你心里肯定会想卧槽！你粉丝才几十个！怎么可能成为网红啊！是，我粉丝现在是很少，但也不能否定我的将来啊。我也是有幽默感的，请相信我！谢谢你看到这！浪费你宝贵的时间了！', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('787', '邓超', '从你的全世界路过', '4031211921258703', 'http://weibo.com/5715886394', 'id=5715886394', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006ePha2jw8f7umc9uoh6j30ig0igmy5.jpg', 'darlin-LH：鹿晗我要了。。超爸爸给我吧', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('788', '邓超', '从你的全世界路过', '4031211661532570', 'http://weibo.com/5720170807', 'id=5720170807', 'http://tva1.sinaimg.cn/crop.0.0.996.996.50/006f7fJtjw8f6c3jaepchj30ro0rp41k.jpg', '8AGbzo：超哥自从你上次搞事情之后，我就不信你了@邓超', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('789', '邓超', '从你的全世界路过', '4031211612104860', 'http://weibo.com/6040125710', 'id=6040125710', 'http://tva2.sinaimg.cn/crop.1.0.510.510.50/006ALKCqjw8f8ipl8n352j30e80e6aan.jpg', '安娜哥哥-：点赞送ysl口号', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('790', '邓超', '从你的全世界路过', '4031211531382786', 'http://weibo.com/5720446034', 'id=5720446034', 'http://tva1.sinaimg.cn/crop.0.0.1080.1080.50/006f8pkCjw8ey5kr5dwbbj30u00u0ac7.jpg', 'Devil财少：感动', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('791', '邓超', '从你的全世界路过', '4031211037496730', 'http://weibo.com/6047651184', 'id=6047651184', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006Bhkl2jw8f8tgpgy7w5j30ig0ig3zm.jpg', 'Randy孙：超哥我抽你一下然后你七位抽中我一位好不好', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('792', '邓超', '从你的全世界路过', '4031211011196566', 'http://weibo.com/6027457323', 'id=6027457323', 'http://tva2.sinaimg.cn/crop.0.0.664.664.50/006zUAZBjw8f81cl0tqtvj30ig0iggn0.jpg', '用户6027457323：默默的支持你', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('793', '邓超', '从你的全世界路过', '4031210831364001', 'http://weibo.com/1731400904', 'id=1731400904', 'http://tva1.sinaimg.cn/crop.0.0.438.438.50/673314c8jw8f8th0mqof4j20c60c60sn.jpg', '摇热a：中了', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('794', '邓超', '从你的全世界路过', '4031209912853764', 'http://weibo.com/lwy520133', 'id=2670534492', 'http://tva3.sinaimg.cn/crop.0.0.199.199.50/9f2d1f5cgw1e9g1klufycj205k05k0sv.jpg', '喜碧阿姨：反正我是去看了  就看你抽不抽我', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('795', '邓超', '从你的全世界路过', '4031209807883501', 'http://weibo.com/lwy520133', 'id=2670534492', 'http://tva3.sinaimg.cn/crop.0.0.199.199.50/9f2d1f5cgw1e9g1klufycj205k05k0sv.jpg', '喜碧阿姨：反正我去看了 就看你抽不抽我', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('796', '邓超', '从你的全世界路过', '4031209489309706', 'http://weibo.com/5202331723', 'id=5202331723', 'http://tva4.sinaimg.cn/crop.0.0.996.996.50/005G4s8bjw8f5dqj23ooaj30ro0ro41j.jpg', '我有一个强大的团体叫稻米：哈哈哈哈哈哈哈哈能打你么', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('797', '邓超', '从你的全世界路过', '4031209086454320', 'http://weibo.com/5993187485', 'id=5993187485', 'http://tva3.sinaimg.cn/crop.0.0.664.664.50/006xANQhjw8f8twlrnxgzj30ig0igta8.jpg', '用户5993187485：加油加油，破七亿，，，，', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('798', '邓超', '从你的全世界路过', '4031208893281359', 'http://weibo.com/2592759305', 'id=2592759305', 'http://tva2.sinaimg.cn/crop.0.0.180.180.50/9a8a5e09jw1e8qgp5bmzyj2050050aa8.jpg', 'vivi馝馞：你们能为中国的房价做些什么？', '2016-10-17 13:34:00');
INSERT INTO `t_sina_weibo` VALUES ('799', '邓超', '从你的全世界路过', '4031208008201962', 'http://weibo.com/5262533232', 'id=5262533232', 'http://tva2.sinaimg.cn/crop.0.75.453.453.50/005K93igjw8ejje9i2gwmj30cl0gs40e.jpg', '她不能吃冷而且有精神病：那帮超哥贴膜吧hhhhhhhh', '2016-10-17 13:34:00');

-- ----------------------------
-- Table structure for t_sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_logs`;
CREATE TABLE `t_sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `methods` varchar(128) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `optime` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `params` longtext,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_logs
-- ----------------------------
INSERT INTO `t_sys_logs` VALUES ('11', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:35', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('12', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:38:39', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('13', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:45:04', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('14', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:53:56', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('15', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:56:00', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('7', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:17', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('8', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:19', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('9', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:20', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('10', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:21', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('16', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:00:41', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('17', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:00:47', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('18', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:01:01', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('19', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:05:13', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('20', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:05:51', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('21', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:07:41', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('22', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:11:14', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('23', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:29:19', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('24', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:32:05', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('25', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:32:33', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('26', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:35:28', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('27', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:38:40', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('28', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:39:12', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('29', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:40:31', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('30', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:43:16', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('31', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:45:19', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('32', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:50:27', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('33', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:55:04', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('34', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:58:29', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('35', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:59:38', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('36', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:01:16', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('37', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:01:30', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('38', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:02:10', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('39', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:02:58', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('40', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:03:44', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('41', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:10:16', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('42', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:13:22', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('43', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:15:51', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('44', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:16:49', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('45', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:17:30', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('46', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:18:20', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('47', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 17:19:19', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('48', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:43:27', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('49', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:48:11', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('50', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:50:23', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('51', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:52:14', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('52', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:53:13', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('53', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:53:54', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('54', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:54:52', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('55', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:55:30', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('56', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:55:54', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('57', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 08:56:27', '0:0:0:0:0:0:0:1', '9', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('58', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 09:00:04', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('59', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 10:14:16', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('60', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 10:49:25', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('61', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 11:46:38', '127.0.0.1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('62', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 12:04:39', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('63', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 12:08:29', '127.0.0.1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('64', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-25 13:47:16', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('65', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-10-09 15:52:40', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('66', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-10-10 18:40:44', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');
INSERT INTO `t_sys_logs` VALUES ('67', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-10-18 13:50:16', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list.shtml');

-- ----------------------------
-- Table structure for t_sys_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_manager`;
CREATE TABLE `t_sys_manager` (
  `managerid` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL COMMENT '登陆IP',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后一次登陆时间',
  `credentialsSalt` varchar(100) DEFAULT NULL COMMENT '验证凭证',
  `locked` varchar(3) DEFAULT '0' COMMENT '是否启用 0=禁用 1=启用',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `photo` varchar(266) DEFAULT NULL,
  PRIMARY KEY (`managerid`),
  UNIQUE KEY `AK_ACCOUNT` (`account`),
  KEY `FK_Reference_13` (`role`),
  CONSTRAINT `t_sys_manager_ibfk_1` FOREIGN KEY (`role`) REFERENCES `t_sys_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_manager
-- ----------------------------
INSERT INTO `t_sys_manager` VALUES ('1', 'admin', 'a122080ba7afebf036ed3c811c7880f9', '1', '秋殇', '0:0:0:0:0:0:0:1', '2016-10-23 14:31:37', '9c6c9e22ae8c773c8f07a75b28563152', '1', null, null, '男', null, null);
INSERT INTO `t_sys_manager` VALUES ('3', 'memmsc', 'ffaf9b705d272055372cc3995ce2d448', '2', '唐亚峰', '0:0:0:0:0:0:0:1', '2016-07-21 16:20:46', '1da611f87449065cb4ea69e6a432d1af', '1', null, null, '女', null, null);
INSERT INTO `t_sys_manager` VALUES ('7', 'test', '11dcaf1cff1e45925a53e27a38252496', '2', 'test2', null, null, '2ba6bb8e0d584646b3225fd4785df199', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `param` varchar(200) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `state` int(1) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `ordno` int(11) DEFAULT NULL,
  `nlevel` int(11) DEFAULT NULL,
  `scort` varchar(8000) DEFAULT NULL,
  `is_auto_expand_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_17` (`pid`),
  CONSTRAINT `t_sys_menu_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `t_sys_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('2', '帐号管理', '帐号管理', 'fa fa-sun-o', '/pub/manager', 'pub:manager', '2012-10-11 17:16:15', '2012-10-29 13:48:32', '1', '18', '1', '1', ',18,2,', null);
INSERT INTO `t_sys_menu` VALUES ('4', '菜单管理', '菜单管理', 'fa fa-server', '/pub/menu', 'pub:menu', '2012-10-12 09:41:54', '2012-10-17 14:12:00', '1', '18', '2', '1', ',18,4,', null);
INSERT INTO `t_sys_menu` VALUES ('5', '操作管理', '操作管理', 'fa fa-hand-lizard-o', '/pub/operate', 'pub:operate', '2012-10-12 13:11:38', '2012-10-16 09:17:23', '1', '18', '3', '1', ',18,5,', null);
INSERT INTO `t_sys_menu` VALUES ('8', '角色管理', '角色管理', 'fa fa-sitemap', '/pub/role', 'pub:role', '2012-10-15 10:24:38', '2012-10-16 09:17:18', '1', '18', '4', '1', ',18,8,', null);
INSERT INTO `t_sys_menu` VALUES ('15', '字典管理', '字典管理', 'fa fa-newspaper-o', '/pub/dict', 'pub:dict', '2012-10-15 11:41:06', '2016-09-15 13:55:33', '0', '18', '5', '1', ',18,15,', null);
INSERT INTO `t_sys_menu` VALUES ('18', '系统管理', '系统管理', 'fa fa fa-home', '/pub/sys', 'pub:sys', '2012-10-16 09:15:27', '2012-10-23 10:10:07', '1', null, '6', '0', ',18,', null);
INSERT INTO `t_sys_menu` VALUES ('29', '日志管理', '日志管理', 'fa fa-comments-o', '/pub/logs', 'pub:logs', '2012-10-29 14:08:44', '2012-10-31 18:23:18', '1', '18', '7', '1', ',18,29,', null);
INSERT INTO `t_sys_menu` VALUES ('30', '监控管理', '监控管理', 'fa fa-cogs', '/monitor', 'monitor:manager', '2016-09-25 11:40:36', '2016-09-25 11:41:22', '1', null, null, '0', ',30,', null);
INSERT INTO `t_sys_menu` VALUES ('31', '连接池监控', '连接池监控', 'fa fa-database', '/system/druid', 'druid:monitor', '2016-09-25 11:42:42', '2016-09-25 11:43:51', '1', '30', '1', '1', ',30,31,', null);
INSERT INTO `t_sys_menu` VALUES ('32', '系统监控', '系统监控', 'fa fa-gear', '/system/monitor', 'system:monitor', '2016-09-25 11:43:34', '2016-09-25 11:43:34', '1', '30', '1', '1', ',30,32,', null);
INSERT INTO `t_sys_menu` VALUES ('33', '鏖战工具', '鏖战工具', 'fa fa-cogs', '/battcn/utils', 'battcn:utils', '2016-10-09 15:20:49', '2016-10-09 15:20:52', '1', null, '1', '0', ',33,', null);
INSERT INTO `t_sys_menu` VALUES ('34', '代码生成', '代码生成', 'fa fa-cogs', '/utils/code', 'utils:code', '2016-10-09 15:57:14', '2016-10-09 15:57:16', '1', '33', '1', '1', ',33,34,', null);
INSERT INTO `t_sys_menu` VALUES ('35', '在线格式化', '在线格式化', 'fa fa-cogs', '/utils/json', 'utils:json', '2016-10-23 11:00:21', '2016-10-23 11:00:24', '1', '33', '2', '1', ',33,35,', null);
INSERT INTO `t_sys_menu` VALUES ('36', '接口文档', '接口文档', 'fa fa-cogs', '/utils/docs', 'utils:docs', '2016-10-23 11:07:55', '2016-10-23 11:07:59', '1', '33', '1', '1', ',33,36,', null);

-- ----------------------------
-- Table structure for t_sys_operate
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_operate`;
CREATE TABLE `t_sys_operate` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu` int(11) NOT NULL COMMENT '菜单ID',
  `op` varchar(50) NOT NULL COMMENT '选项',
  `name` varchar(100) NOT NULL COMMENT '名字',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `ordno` int(11) DEFAULT NULL COMMENT '排序号',
  `isshow` int(1) NOT NULL COMMENT '是否显示出来',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu` (`menu`,`op`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_operate
-- ----------------------------
INSERT INTO `t_sys_operate` VALUES ('1', '2', 'add', '新增', 'plus', '', '2', '1');
INSERT INTO `t_sys_operate` VALUES ('2', '2', 'edit', '编辑', 'edit', '', '3', '1');
INSERT INTO `t_sys_operate` VALUES ('3', '2', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('4', '2', 'remove', '删除', 'remove', '', '4', '1');
INSERT INTO `t_sys_operate` VALUES ('5', '2', 'save', '保存', 'save', '', '5', '0');
INSERT INTO `t_sys_operate` VALUES ('6', '4', 'add', '新增', 'plus', '', '2', '1');
INSERT INTO `t_sys_operate` VALUES ('7', '4', 'edit', '编辑', 'edit', '', '3', '1');
INSERT INTO `t_sys_operate` VALUES ('8', '4', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('9', '4', 'remove', '删除', 'remove', '', '4', '1');
INSERT INTO `t_sys_operate` VALUES ('10', '4', 'save', '保存', 'save', '', '5', '0');
INSERT INTO `t_sys_operate` VALUES ('11', '5', 'add', '新增', 'plus', '', '2', '1');
INSERT INTO `t_sys_operate` VALUES ('12', '5', 'edit', '编辑', 'edit', '', '3', '1');
INSERT INTO `t_sys_operate` VALUES ('13', '5', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('14', '5', 'remove', '删除', 'remove', '', '4', '1');
INSERT INTO `t_sys_operate` VALUES ('15', '5', 'save', '保存', 'save', '', '5', '0');
INSERT INTO `t_sys_operate` VALUES ('16', '8', 'add', '新增', 'plus', '', '2', '1');
INSERT INTO `t_sys_operate` VALUES ('17', '8', 'edit', '编辑', 'edit', '', '3', '1');
INSERT INTO `t_sys_operate` VALUES ('18', '8', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('19', '8', 'remove', '删除', 'remove', '', '4', '1');
INSERT INTO `t_sys_operate` VALUES ('20', '8', 'save', '保存', 'save', '', '5', '0');
INSERT INTO `t_sys_operate` VALUES ('21', '15', 'add', '新增', 'plus', '', '2', '1');
INSERT INTO `t_sys_operate` VALUES ('22', '15', 'edit', '编辑', 'edit', '测试一下把', '3', '1');
INSERT INTO `t_sys_operate` VALUES ('23', '15', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('24', '15', 'remove', '删除', 'remove', '', '4', '1');
INSERT INTO `t_sys_operate` VALUES ('25', '15', 'save', '保存', 'save', '', '5', '0');
INSERT INTO `t_sys_operate` VALUES ('26', '29', 'list', '查看', 'list', '', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('27', '29', 'remove', '删除', 'remove', '', '2', '0');
INSERT INTO `t_sys_operate` VALUES ('35', '29', 'export', '导出日志', 'file-excel-o', '导出日志功能', '1', '1');
INSERT INTO `t_sys_operate` VALUES ('37', '31', 'list', '查看', 'list', null, '1', '1');
INSERT INTO `t_sys_operate` VALUES ('38', '32', 'list', '查看', 'list', null, '1', '1');
INSERT INTO `t_sys_operate` VALUES ('40', '34', 'list', '查看', 'list', null, '1', '0');
INSERT INTO `t_sys_operate` VALUES ('41', '34', 'add', '新增', 'add', null, '2', '1');
INSERT INTO `t_sys_operate` VALUES ('42', '34', 'edit', '编辑', 'edit', null, '3', '1');
INSERT INTO `t_sys_operate` VALUES ('43', '34', 'generate', '生成', 'generate', null, '4', '1');
INSERT INTO `t_sys_operate` VALUES ('44', '35', 'list', '查看', 'list', '跳转JSON序列化页面', '1', '1');
INSERT INTO `t_sys_operate` VALUES ('45', '36', 'list', '查看', 'ist', '查看接口文档', '1', '1');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', '超级管理员', 'manager', '超级管理员,不听话就封号');
INSERT INTO `t_sys_role` VALUES ('2', '测试管理员', 'test', '专门测试没有权限的时候1');
INSERT INTO `t_sys_role` VALUES ('5', '开发管理员', 'code', '我是开发不服删数据库');

-- ----------------------------
-- Table structure for t_sys_role_operate
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_operate`;
CREATE TABLE `t_sys_role_operate` (
  `role` int(11) NOT NULL,
  `op_id` int(8) NOT NULL COMMENT 'op_id',
  PRIMARY KEY (`role`,`op_id`),
  KEY `op_id` (`op_id`),
  CONSTRAINT `t_sys_role_operate_ibfk_1` FOREIGN KEY (`role`) REFERENCES `t_sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_sys_role_operate_ibfk_2` FOREIGN KEY (`op_id`) REFERENCES `t_sys_operate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_operate
-- ----------------------------
INSERT INTO `t_sys_role_operate` VALUES ('1', '1');
INSERT INTO `t_sys_role_operate` VALUES ('5', '1');
INSERT INTO `t_sys_role_operate` VALUES ('1', '2');
INSERT INTO `t_sys_role_operate` VALUES ('5', '2');
INSERT INTO `t_sys_role_operate` VALUES ('1', '3');
INSERT INTO `t_sys_role_operate` VALUES ('5', '3');
INSERT INTO `t_sys_role_operate` VALUES ('1', '4');
INSERT INTO `t_sys_role_operate` VALUES ('5', '4');
INSERT INTO `t_sys_role_operate` VALUES ('1', '5');
INSERT INTO `t_sys_role_operate` VALUES ('5', '5');
INSERT INTO `t_sys_role_operate` VALUES ('1', '6');
INSERT INTO `t_sys_role_operate` VALUES ('5', '6');
INSERT INTO `t_sys_role_operate` VALUES ('1', '7');
INSERT INTO `t_sys_role_operate` VALUES ('5', '7');
INSERT INTO `t_sys_role_operate` VALUES ('1', '8');
INSERT INTO `t_sys_role_operate` VALUES ('5', '8');
INSERT INTO `t_sys_role_operate` VALUES ('1', '9');
INSERT INTO `t_sys_role_operate` VALUES ('5', '9');
INSERT INTO `t_sys_role_operate` VALUES ('1', '10');
INSERT INTO `t_sys_role_operate` VALUES ('5', '10');
INSERT INTO `t_sys_role_operate` VALUES ('1', '11');
INSERT INTO `t_sys_role_operate` VALUES ('5', '11');
INSERT INTO `t_sys_role_operate` VALUES ('1', '12');
INSERT INTO `t_sys_role_operate` VALUES ('5', '12');
INSERT INTO `t_sys_role_operate` VALUES ('1', '13');
INSERT INTO `t_sys_role_operate` VALUES ('5', '13');
INSERT INTO `t_sys_role_operate` VALUES ('1', '14');
INSERT INTO `t_sys_role_operate` VALUES ('5', '14');
INSERT INTO `t_sys_role_operate` VALUES ('1', '15');
INSERT INTO `t_sys_role_operate` VALUES ('5', '15');
INSERT INTO `t_sys_role_operate` VALUES ('1', '16');
INSERT INTO `t_sys_role_operate` VALUES ('5', '16');
INSERT INTO `t_sys_role_operate` VALUES ('1', '17');
INSERT INTO `t_sys_role_operate` VALUES ('5', '17');
INSERT INTO `t_sys_role_operate` VALUES ('1', '18');
INSERT INTO `t_sys_role_operate` VALUES ('5', '18');
INSERT INTO `t_sys_role_operate` VALUES ('1', '19');
INSERT INTO `t_sys_role_operate` VALUES ('5', '19');
INSERT INTO `t_sys_role_operate` VALUES ('1', '20');
INSERT INTO `t_sys_role_operate` VALUES ('5', '20');
INSERT INTO `t_sys_role_operate` VALUES ('5', '21');
INSERT INTO `t_sys_role_operate` VALUES ('5', '22');
INSERT INTO `t_sys_role_operate` VALUES ('5', '23');
INSERT INTO `t_sys_role_operate` VALUES ('5', '24');
INSERT INTO `t_sys_role_operate` VALUES ('5', '25');
INSERT INTO `t_sys_role_operate` VALUES ('1', '26');
INSERT INTO `t_sys_role_operate` VALUES ('2', '26');
INSERT INTO `t_sys_role_operate` VALUES ('5', '26');
INSERT INTO `t_sys_role_operate` VALUES ('1', '27');
INSERT INTO `t_sys_role_operate` VALUES ('2', '27');
INSERT INTO `t_sys_role_operate` VALUES ('5', '27');
INSERT INTO `t_sys_role_operate` VALUES ('1', '35');
INSERT INTO `t_sys_role_operate` VALUES ('2', '35');
INSERT INTO `t_sys_role_operate` VALUES ('1', '37');
INSERT INTO `t_sys_role_operate` VALUES ('1', '38');
INSERT INTO `t_sys_role_operate` VALUES ('1', '40');
INSERT INTO `t_sys_role_operate` VALUES ('1', '41');
INSERT INTO `t_sys_role_operate` VALUES ('1', '42');
INSERT INTO `t_sys_role_operate` VALUES ('1', '43');
INSERT INTO `t_sys_role_operate` VALUES ('1', '44');
INSERT INTO `t_sys_role_operate` VALUES ('1', '45');
-- ----------------------------
-- Procedure structure for showTreeNodes_menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `showTreeNodes_menu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showTreeNodes_menu`()
BEGIN
 DECLARE Level int ;
 Set Level=0 ;
 update t_sys_menu a inner join (SELECT id,Level,concat(',',ID,',') scort FROM t_sys_menu WHERE pid is null) b on a.id=b.id
 set a.nlevel=b.level,a.scort=b.scort;
 WHILE FOUND_ROWS()>0 DO
  SET Level=Level+1;
update t_sys_menu a inner join (
   SELECT ID,Level,scort FROM t_sys_menu 
    WHERE nLevel=Level-1) b on a.pid=b.id
 set a.nlevel=b.level,a.scort=concat(b.scort,a.ID,',');
 END WHILE;
  
END
;;
DELIMITER ;
