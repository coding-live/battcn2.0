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
INSERT INTO `t_sys_logs` VALUES ('11', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:35', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('12', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:38:39', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('13', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:45:04', '0:0:0:0:0:0:0:1', '7', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('14', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:53:56', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('15', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:56:00', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('7', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:17', '0:0:0:0:0:0:0:1', '8', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('8', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:19', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('9', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:20', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('10', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 15:37:21', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('16', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:00:41', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('17', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:00:47', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('18', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:01:01', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('19', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:05:13', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');
INSERT INTO `t_sys_logs` VALUES ('20', 'admin', '日志模块', '日志list', '进入日志查询的页面', '2016-09-15 16:05:51', '0:0:0:0:0:0:0:1', '0', null, '/pub/logs/list');


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
INSERT INTO `t_sys_manager` VALUES ('7', 'test', '11dcaf1cff1e45925a53e27a38252496', '2', 'test2', '0:0:0:0:0:0:0:1', '2016-07-21 16:20:46', '2ba6bb8e0d584646b3225fd4785df199', '1', null, null, null, null, null);

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
INSERT INTO `t_sys_menu` VALUES ('37', 'Cron表达式生成器', 'Cron表达式生成器', 'fa fa-cogs', '/usils/cron', 'utils:cron', '2016-11-17 10:30:25', '2016-11-17 10:30:27', '1', '33', '3', '1', ',33,37,', null);
INSERT INTO `t_sys_menu` VALUES ('38', '调度管理', '调度管理', 'fa fa-cogs', '/quartz/sys', 'quartz:sys', '2016-11-18 10:38:11', '2016-11-18 10:38:13', '1', null, '1', '0', ',38,', null);
INSERT INTO `t_sys_menu` VALUES ('39', '任务管理', '任务管理', 'fa fa-cogs', '/schedule/task', 'schedule:task', '2016-11-18 10:39:22', '2016-11-18 10:39:25', '1', '38', '1', '1', ',38,39,', null);

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
INSERT INTO `t_sys_operate` VALUES ('46', '34', 'remove', '删除', 'remove', '删除代码生成', '5', '1');
INSERT INTO `t_sys_operate` VALUES ('47', '37', 'list', '查看', 'list', 'Cron表达式生成器', '6', '1');
INSERT INTO `t_sys_operate` VALUES ('48', '38', 'list', '查看', 'list', '调度管理', '1', '0');
INSERT INTO `t_sys_operate` VALUES ('49', '39', 'list', '查看', 'list', '任务管理', '1', '1');


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
INSERT INTO `t_sys_role_operate` VALUES ('1', '46');
INSERT INTO `t_sys_role_operate` VALUES ('1', '47');
INSERT INTO `t_sys_role_operate` VALUES ('1', '48');
INSERT INTO `t_sys_role_operate` VALUES ('1', '49');


-- ----------------------------
-- Table structure for t_sys_schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_schedule_job`;
CREATE TABLE `t_sys_schedule_job` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `createTime` timestamp NULL DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jobName` varchar(64) DEFAULT NULL COMMENT '名字',
  `jobGroup` varchar(128) DEFAULT NULL COMMENT '组',
  `jobStatus` int(2) DEFAULT '1' COMMENT '状态',
  `cronExpression` varchar(16) NOT NULL COMMENT 'cron表达式',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `beanClass` varchar(255) DEFAULT NULL COMMENT '类路径',
  `isConcurrent` int(2) DEFAULT '1' COMMENT '是否同步',
  `springId` varchar(255) DEFAULT NULL COMMENT 'Spring Bean的ID',
  `methodName` varchar(255) NOT NULL COMMENT '方法名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_group` (`jobName`,`jobGroup`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='任务调度';

-- ----------------------------
-- Records of t_sys_schedule_job
-- ----------------------------
INSERT INTO `t_sys_schedule_job` VALUES ('1', '2014-04-25 16:52:17', '2016-11-18 16:42:50', 'test1', 'test', '0', '0 0/1 * * * ?', 'test1', 'com.battcn.platform.task.TaskTest', '0', 'taskTest', 'run1');
INSERT INTO `t_sys_schedule_job` VALUES ('2', '2014-04-25 16:52:17', '2016-11-18 16:42:52', 'test2', 'test', '1', '0 0/3 * * * ?', 'test2', 'com.battcn.platform.task.TaskTest', '1', 'taskTest', 'run2');
INSERT INTO `t_sys_schedule_job` VALUES ('3', '2014-04-25 16:52:17', '2016-11-18 16:42:54', 'test3', 'test', '0', '0 0/5 * * * ?', 'test3', 'com.battcn.platform.task.TaskTest', '1', 'taskTest', 'run3');


-- tree的存储过程
-- ----------------------------
-- Procedure structure for showTreeNodes_menu
-- ----------------------------
--DROP PROCEDURE IF EXISTS `showTreeNodes_menu`;
--DELIMITER ;;
--CREATE DEFINER=`root`@`localhost` PROCEDURE `showTreeNodes_menu`()
--BEGIN
-- DECLARE Level int ;
-- Set Level=0 ;
-- update t_sys_menu a inner join (SELECT id,Level,concat(',',ID,',') scort FROM t_sys_menu WHERE pid is null) b on a.id=b.id
-- set a.nlevel=b.level,a.scort=b.scort;
-- WHILE FOUND_ROWS()>0 DO
--  SET Level=Level+1;
--update t_sys_menu a inner join (
--   SELECT ID,Level,scort FROM t_sys_menu 
--    WHERE nLevel=Level-1) b on a.pid=b.id
-- set a.nlevel=b.level,a.scort=concat(b.scort,a.ID,',');
-- END WHILE;
--  
--END
--;;
--DELIMITER ;
