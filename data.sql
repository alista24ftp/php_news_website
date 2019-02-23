/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : hnjtyst2

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2018-06-08 11:37:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `jt_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `jt_action_log`;
CREATE TABLE `jt_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如news1表示xx_news表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`uid`,`object`,`action`),
  KEY `user_object_action_ip` (`uid`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='访问记录表';

-- ----------------------------
-- Records of jt_action_log
-- ----------------------------
INSERT INTO `jt_action_log` VALUES ('1', '1', 'news5', 'home-News-index', '6', '1523542605', '123.13.245.230');
INSERT INTO `jt_action_log` VALUES ('2', '1', 'news46', 'home-News-index', '11', '1511180260', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('3', '1', 'news45', 'home-News-index', '38', '1511074989', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('4', '1', 'news44', 'home-News-index', '2', '1510818197', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('5', '1', 'news42', 'home-News-index', '4', '1511077805', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('6', '1', 'news4', 'home-News-index', '2', '1524323555', '183.134.59.150');
INSERT INTO `jt_action_log` VALUES ('7', '1', 'news9', 'home-News-index', '4', '1523546428', '183.134.59.156');
INSERT INTO `jt_action_log` VALUES ('8', '1', 'news15', 'home-News-index', '3', '1524323572', '183.134.59.150');
INSERT INTO `jt_action_log` VALUES ('9', '1', 'news14', 'home-News-index', '1', '1511337472', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('10', '1', 'news27', 'home-News-index', '3', '1511421804', '127.0.0.1');
INSERT INTO `jt_action_log` VALUES ('11', '1', 'news10', 'home-News-index', '8', '1524373944', '222.35.129.150');
INSERT INTO `jt_action_log` VALUES ('12', '1', 'news20', 'home-News-index', '1', '1523542550', '183.134.59.156');
INSERT INTO `jt_action_log` VALUES ('13', '0', 'news5', 'home-News-index', '7', '1527998028', '14.153.203.16');
INSERT INTO `jt_action_log` VALUES ('14', '0', 'news10', 'home-News-index', '15', '1528354404', '221.182.96.220');
INSERT INTO `jt_action_log` VALUES ('15', '0', 'news24', 'home-News-index', '4', '1524131381', '60.171.124.72');
INSERT INTO `jt_action_log` VALUES ('16', '0', 'news27', 'home-News-index', '12', '1528009956', '222.140.137.220');
INSERT INTO `jt_action_log` VALUES ('17', '0', 'news19', 'home-News-index', '4', '1524885277', '124.239.94.120');
INSERT INTO `jt_action_log` VALUES ('18', '0', 'news4', 'home-News-index', '5', '1525400246', '113.70.45.155');
INSERT INTO `jt_action_log` VALUES ('19', '0', 'news3', 'home-News-index', '1', '1523978995', '59.42.121.117');
INSERT INTO `jt_action_log` VALUES ('20', '0', 'news15', 'home-News-index', '9', '1527998097', '101.226.79.238');
INSERT INTO `jt_action_log` VALUES ('21', '0', 'news20', 'home-News-index', '3', '1527943748', '61.151.226.65');
INSERT INTO `jt_action_log` VALUES ('22', '0', 'news26', 'home-News-index', '1', '1524191263', '60.222.157.136');
INSERT INTO `jt_action_log` VALUES ('23', '1', 'news26', 'home-News-index', '2', '1525600978', '112.53.84.155');
INSERT INTO `jt_action_log` VALUES ('24', '0', 'news2', 'home-News-index', '1', '1524885298', '124.239.94.120');
INSERT INTO `jt_action_log` VALUES ('25', '0', 'news18', 'home-News-index', '1', '1525935563', '123.180.105.222');
INSERT INTO `jt_action_log` VALUES ('26', '0', 'news9', 'home-News-index', '1', '1526097874', '42.3.230.215');
INSERT INTO `jt_action_log` VALUES ('27', '0', 'news6', 'home-News-index', '1', '1528197024', '183.50.99.71');
INSERT INTO `jt_action_log` VALUES ('28', '0', 'news30', 'home-News-index', '1', '1528418555', '183.21.86.213');

-- ----------------------------
-- Table structure for `jt_addon`
-- ----------------------------
DROP TABLE IF EXISTS `jt_addon`;
CREATE TABLE `jt_addon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `admin_actions` text COMMENT '管理操作',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of jt_addon
-- ----------------------------
INSERT INTO `jt_addon` VALUES ('17', 'Maintain', '日常维护', '', '后台首页日常维护', 'rainfer', '', '{\"display\":\"1\"}', '{\"index\":[],\"config\":[],\"edit\":[],\"add\":[]}', '0.1', '', '0', '1487424935', '1487425273', '15', '1');
INSERT INTO `jt_addon` VALUES ('15', 'Security', '安全检测', '', '网站安全检测', 'rainfer', '', '', '{\"index\":[\"Admin\\/security_list\"],\"config\":[],\"edit\":[],\"add\":[]}', '0.1', '', '1', '1487422525', '1487425273', '40', '1');
INSERT INTO `jt_addon` VALUES ('13', 'Info', '后台信息', '', '后台首页信息显示', 'rainfer', '', '{\"display\":\"1\"}', '{\"index\":[],\"config\":[\"Admin\\/config\"],\"edit\":[],\"add\":[]}', '0.1', '', '0', '1487419743', '1487425273', '100', '1');
INSERT INTO `jt_addon` VALUES ('16', 'Team', '团队&贡献者', '', '后台首页团队&贡献者显示', 'rainfer', '', '{\"display\":\"1\"}', null, '0.1', '', '0', '1487422724', '1487425273', '10', '1');

-- ----------------------------
-- Table structure for `jt_admin`
-- ----------------------------
DROP TABLE IF EXISTS `jt_admin`;
CREATE TABLE `jt_admin` (
  `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `admin_pwd` varchar(70) NOT NULL COMMENT '管理员密码',
  `admin_pwd_salt` char(10) NOT NULL,
  `admin_changepwd` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更改密码时间',
  `admin_email` varchar(30) NOT NULL COMMENT '邮箱',
  `admin_realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `admin_avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `admin_tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `admin_hits` int(8) NOT NULL DEFAULT '1' COMMENT '登陆次数',
  `admin_ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `admin_time` int(11) unsigned DEFAULT '0' COMMENT '登陆时间',
  `admin_last_ip` varchar(20) DEFAULT NULL COMMENT '上次登陆ip',
  `admin_last_time` int(11) unsigned DEFAULT '0' COMMENT '上次登陆时间',
  `admin_addtime` int(11) NOT NULL COMMENT '添加时间',
  `admin_mdemail` varchar(50) NOT NULL DEFAULT '0' COMMENT '传递修改密码参数加密',
  `admin_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '审核状态',
  `member_id` int(6) unsigned NOT NULL COMMENT '对应会员ID',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_admin
-- ----------------------------
INSERT INTO `jt_admin` VALUES ('1', 'admin', '81033719087c98897aa4acf55ceb9f5a', 'QlaCQuTxXd', '1510662402', 'admin@qq.com', '', '5a1539da22980.jpg', '', '16', '127.0.0.1', '0', '114.225.205.179', '1526088675', '1510662402', '', '1', '1');

-- ----------------------------
-- Table structure for `jt_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `jt_auth_group`;
CREATE TABLE `jt_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_auth_group
-- ----------------------------
INSERT INTO `jt_auth_group` VALUES ('1', '超级管理员', '1', '1,2,6,59,151,10,62,154,19,60,152,26,43,63,64,65,66,67,155,57,61,153,3,4,89,90,159,5,85,86,87,88,160,15,16,68,69,70,71,72,73,156,17,55,56,74,75,76,77,78,157,18,79,80,81,82,83,84,158,40,41,92,162,42,91,161,7,8,11,94,95,96,100,101,175,12,93,174,25,97,98,99,173,9,13,103,104,105,106,107,172,14,102,171,22,23,24,27,29,37,108,109,110,111,112,113,114,170,38,115,116,117,118,119,120,169,30,28,31,32,129,128,130,131,132,167,34,133,134,135,136,166,44,45,138,139,140,141,142,143,165,46,144,145,146,147,148,164,48,49,137,163,35,36,39,121,122,123,124,125,126,127,168,', '1212451252');
INSERT INTO `jt_auth_group` VALUES ('2', '管理员', '1', '1,2,6,151,10,154,19,152,43,65,67,155,57,153,184,190,3,4,159,5,160,15,16,68,70,156,17,74,77,157,176,18,82,158,177,40,41,162,42,161,178,179,180,7,8,11,94,175,12,174,25,173,9,13,105,172,14,171,22,23,24,27,29,37,108,110,170,38,119,169,28,31,32,131,167,34,166,44,45,142,165,46,145,164,181,182,36,39,124,168,48,49,137,185,186,198,199,201,', '1212451252');

-- ----------------------------
-- Table structure for `jt_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `jt_auth_group_access`;
CREATE TABLE `jt_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_auth_group_access
-- ----------------------------
INSERT INTO `jt_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `jt_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `jt_auth_rule`;
CREATE TABLE `jt_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `notcheck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0需要验证 1不需要',
  `css` varchar(20) NOT NULL COMMENT '样式',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `level` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单等级',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_auth_rule
-- ----------------------------
INSERT INTO `jt_auth_rule` VALUES ('1', 'admin/Sys', '系统设置', '1', '1', '0', 'fa-tachometer', '', '0', '1', '1', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('2', 'admin/Sys/sys', '系统参数设置', '1', '1', '0', '', '', '1', '2', '10', '1446535789');
INSERT INTO `jt_auth_rule` VALUES ('3', 'admin/Sys/database', '数据备份还原', '1', '0', '0', '', '', '1', '2', '30', '1446535805');
INSERT INTO `jt_auth_rule` VALUES ('4', 'admin/Sys/import', '数据库还原', '1', '1', '0', '', '', '3', '3', '20', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('5', 'admin/Sys/database', '数据库备份', '1', '1', '0', '', '', '3', '3', '10', '1446535834');
INSERT INTO `jt_auth_rule` VALUES ('6', 'admin/Sys/sys', '站点设置', '1', '1', '0', '', '', '2', '3', '10', '1446535843');
INSERT INTO `jt_auth_rule` VALUES ('7', 'admin/News', '文章管理', '1', '1', '0', 'fa-folder', '', '0', '1', '13', '1446535875');
INSERT INTO `jt_auth_rule` VALUES ('9', 'admin/Menu', '前台菜单', '1', '1', '0', 'fa-desktop', '', '0', '1', '9', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('10', 'wechat/We/wesys', '微信设置', '1', '0', '0', '', '', '2', '3', '40', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('11', 'admin/News/news_list', '文章列表', '1', '1', '0', '', '', '7', '2', '10', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('12', 'admin/News/news_add', '添加文章', '1', '1', '0', '', '', '7', '2', '20', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('13', 'admin/Menu/news_menu_list', '菜单列表', '1', '1', '0', '', '', '9', '2', '10', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('14', 'admin/Menu/news_menu_add', '添加菜单', '1', '1', '0', '', '', '9', '2', '20', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('15', 'admin/Admin', '管理员管理', '1', '1', '0', 'fa-users', '', '0', '1', '3', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('16', 'admin/Admin/admin_list', '管理员列表', '1', '1', '0', '', '', '15', '2', '10', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('17', 'admin/Admin/admin_group_list', '用户组列表', '1', '1', '0', '', '', '15', '2', '20', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('18', 'admin/Sys', '后台菜单', '1', '0', '0', 'fa-desktop', '', '0', '1', '7', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('19', 'admin/Sys/emailsys', '邮件连接', '1', '0', '0', '', '', '2', '3', '20', '1446535750');
INSERT INTO `jt_auth_rule` VALUES ('22', 'admin/Help', '帮助中心', '1', '0', '0', 'fa-cogs', '', '0', '1', '99', '1446711367');
INSERT INTO `jt_auth_rule` VALUES ('23', 'admin/Help/soft', '软件下载', '1', '1', '0', '', '', '22', '2', '10', '1446711421');
INSERT INTO `jt_auth_rule` VALUES ('24', 'admin/Help/soft', '下载列表', '1', '1', '0', '', '', '23', '3', '10', '1446711448');
INSERT INTO `jt_auth_rule` VALUES ('25', 'admin/News/news_back', '回收站', '1', '1', '0', '', '', '7', '2', '30', '1447039310');
INSERT INTO `jt_auth_rule` VALUES ('26', 'admin/Sys/paysys', '支付配置', '1', '0', '0', '', '', '2', '3', '35', '1447231369');
INSERT INTO `jt_auth_rule` VALUES ('27', 'admin/Member', '会员管理', '1', '0', '0', 'fa-users', '', '0', '1', '5', '1447231507');
INSERT INTO `jt_auth_rule` VALUES ('28', 'admin/Plug', '扩展管理', '1', '1', '0', 'fa-cubes', '', '0', '1', '90', '1447231590');
INSERT INTO `jt_auth_rule` VALUES ('239', 'admin/Sys/logsys', '日志显示', '1', '0', '0', '', '', '228', '4', '10', '1482844815');
INSERT INTO `jt_auth_rule` VALUES ('30', 'admin/Member/member_score', '积分管理', '1', '0', '0', '', '', '27', '2', '30', '1447232133');
INSERT INTO `jt_auth_rule` VALUES ('31', 'admin/Plug/plug_link_list', '友情链接', '1', '1', '0', '', '', '28', '2', '10', '1447232183');
INSERT INTO `jt_auth_rule` VALUES ('32', 'admin/Plug/plug_link_list', '链接列表', '1', '1', '0', '', '', '31', '3', '10', '1447639935');
INSERT INTO `jt_auth_rule` VALUES ('129', 'admin/Plug/plug_link_del', '删除操作', '1', '0', '0', '', '', '32', '4', '20', '1460345954');
INSERT INTO `jt_auth_rule` VALUES ('34', 'admin/Plug/plug_linktype_list', '所属栏目', '1', '1', '0', '', '', '31', '3', '20', '1447640839');
INSERT INTO `jt_auth_rule` VALUES ('35', 'wechat/We', '微信基本功能', '1', '0', '0', 'fa-weixin', '', '0', '1', '80', '1447842435');
INSERT INTO `jt_auth_rule` VALUES ('44', 'admin/Plug/plug_ad_list', '广告管理', '1', '1', '0', '', '', '28', '2', '20', '1450314265');
INSERT INTO `jt_auth_rule` VALUES ('37', 'admin/Member/member_list', '会员列表', '1', '1', '0', '', '', '27', '2', '10', '1448413219');
INSERT INTO `jt_auth_rule` VALUES ('38', 'admin/Member/member_group_list', '会员组', '1', '1', '0', '', '', '27', '2', '20', '1448413248');
INSERT INTO `jt_auth_rule` VALUES ('39', 'wechat/We/menu_list', '菜单管理', '1', '1', '0', '', '', '35', '2', '10', '1448501584');
INSERT INTO `jt_auth_rule` VALUES ('40', 'admin/Sys/excel_export', 'Excel导入/导出', '1', '0', '0', '', '', '1', '2', '40', '1448613588');
INSERT INTO `jt_auth_rule` VALUES ('41', 'admin/Sys/excel_import', 'Excel导入', '1', '1', '0', '', '', '40', '3', '20', '1448613614');
INSERT INTO `jt_auth_rule` VALUES ('42', 'admin/Sys/excel_export', 'Excel导出', '1', '1', '0', '', '', '40', '3', '10', '1448613651');
INSERT INTO `jt_auth_rule` VALUES ('43', 'admin/Sys/source_list', '来源管理', '1', '0', '0', '', '', '28', '2', '5', '1448940532');
INSERT INTO `jt_auth_rule` VALUES ('45', 'admin/Plug/plug_ad_list', '广告设置', '1', '1', '0', '', '', '44', '3', '10', '1450314297');
INSERT INTO `jt_auth_rule` VALUES ('46', 'admin/Plug/plug_adtype_list', '广告位设置', '1', '1', '0', '', '', '44', '3', '20', '1450314324');
INSERT INTO `jt_auth_rule` VALUES ('138', 'admin/Plug/plug_ad_runadd', '添加操作', '1', '0', '0', '', '', '45', '4', '15', '1460346513');
INSERT INTO `jt_auth_rule` VALUES ('48', 'admin/Plug', '留言管理', '1', '0', '0', 'fa-book', '', '0', '1', '17', '1451267354');
INSERT INTO `jt_auth_rule` VALUES ('49', 'admin/Plug/plug_sug_list', '留言列表', '1', '1', '0', '', '', '48', '2', '10', '1451267369');
INSERT INTO `jt_auth_rule` VALUES ('51', 'wechat/We/we_datum_tp', '图文素材', '1', '0', '0', '', '', '50', '3', '50', '1453255857');
INSERT INTO `jt_auth_rule` VALUES ('52', 'wechat/We/we_datum_pic', '图片', '1', '0', '0', '', '', '50', '3', '50', '1453255922');
INSERT INTO `jt_auth_rule` VALUES ('53', 'wechat/We/we_datum_voice', '语音', '1', '0', '0', '', '', '50', '3', '50', '1453255953');
INSERT INTO `jt_auth_rule` VALUES ('54', 'wechat/We/we_datum_video', '视频', '1', '0', '0', '', '', '50', '3', '50', '1453255995');
INSERT INTO `jt_auth_rule` VALUES ('55', 'admin/Admin/admin_group_runadd', '添加操作', '1', '0', '0', '', '', '17', '3', '15', '1460110505');
INSERT INTO `jt_auth_rule` VALUES ('56', 'admin/Admin/admin_group_del', '删除操作', '1', '0', '0', '', '', '17', '3', '20', '1460110551');
INSERT INTO `jt_auth_rule` VALUES ('68', 'admin/Admin/admin_add', '添加显示', '1', '0', '0', '', '', '16', '3', '15', '1460301646');
INSERT INTO `jt_auth_rule` VALUES ('85', 'admin/Sys/export', '备份多表', '1', '0', '0', '', '', '5', '4', '15', '1460302396');
INSERT INTO `jt_auth_rule` VALUES ('57', 'admin/Sys/activesys', '帐号激活', '1', '0', '0', '', '', '2', '3', '30', '1460299219');
INSERT INTO `jt_auth_rule` VALUES ('60', 'admin/Sys/runemail', '保存操作', '1', '0', '0', '', '', '19', '4', '20', '1460299500');
INSERT INTO `jt_auth_rule` VALUES ('59', 'admin/Sys/runsys', '编辑操作', '1', '0', '0', '', '', '6', '4', '20', '1460299338');
INSERT INTO `jt_auth_rule` VALUES ('61', 'admin/Sys/runactive', '编辑操作', '1', '0', '0', '', '', '57', '4', '20', '1460299563');
INSERT INTO `jt_auth_rule` VALUES ('62', 'wechat/We/runwesys', '编辑操作', '1', '0', '0', '', '', '10', '4', '20', '1460299610');
INSERT INTO `jt_auth_rule` VALUES ('63', 'admin/Sys/source_runadd', '添加操作', '1', '0', '0', '', '', '43', '3', '20', '1460299680');
INSERT INTO `jt_auth_rule` VALUES ('64', 'admin/Sys/source_del', '删除操作', '1', '0', '0', '', '', '43', '3', '20', '1460299709');
INSERT INTO `jt_auth_rule` VALUES ('65', 'admin/Sys/source_edit', '编辑显示', '1', '0', '0', '', '', '43', '3', '30', '1460299760');
INSERT INTO `jt_auth_rule` VALUES ('66', 'admin/Sys/source_runedit', '编辑操作', '1', '0', '0', '', '', '43', '3', '40', '1460299803');
INSERT INTO `jt_auth_rule` VALUES ('67', 'admin/Sys/source_order', '排序操作', '1', '0', '0', '', '', '43', '3', '50', '1460299827');
INSERT INTO `jt_auth_rule` VALUES ('69', 'admin/Admin/admin_runadd', '添加操作', '1', '0', '0', '', '', '16', '3', '20', '1460301671');
INSERT INTO `jt_auth_rule` VALUES ('70', 'admin/Admin/admin_edit', '编辑显示', '1', '0', '0', '', '', '16', '3', '30', '1460301711');
INSERT INTO `jt_auth_rule` VALUES ('71', 'admin/Admin/admin_runedit', '编辑操作', '1', '0', '0', '', '', '16', '3', '40', '1460301751');
INSERT INTO `jt_auth_rule` VALUES ('72', 'admin/Admin/admin_del', '删除操作', '1', '0', '0', '', '', '16', '3', '50', '1460301774');
INSERT INTO `jt_auth_rule` VALUES ('73', 'admin/Admin/admin_state', '状态操作', '1', '0', '0', '', '', '16', '3', '60', '1460301806');
INSERT INTO `jt_auth_rule` VALUES ('74', 'admin/Admin/admin_group_edit', '编辑显示', '1', '0', '0', '', '', '17', '3', '30', '1460301956');
INSERT INTO `jt_auth_rule` VALUES ('75', 'admin/Admin/admin_group_runedit', '编辑操作', '1', '0', '0', '', '', '17', '3', '40', '1460301980');
INSERT INTO `jt_auth_rule` VALUES ('76', 'admin/Admin/admin_group_state', '状态操作', '1', '0', '0', '', '', '17', '3', '50', '1460302008');
INSERT INTO `jt_auth_rule` VALUES ('77', 'admin/Admin/admin_group_access', '权限配置', '1', '0', '0', '', '', '17', '3', '60', '1460302033');
INSERT INTO `jt_auth_rule` VALUES ('78', 'admin/Admin/admin_group_runaccess', '权限配置操作', '1', '0', '0', '', '', '17', '3', '70', '1460302062');
INSERT INTO `jt_auth_rule` VALUES ('79', 'admin/Sys/admin_rule_runadd', '添加操作', '1', '0', '0', '', '', '158', '3', '15', '1460302177');
INSERT INTO `jt_auth_rule` VALUES ('80', 'admin/Sys/admin_rule_state', '状态操作', '1', '0', '0', '', '', '158', '3', '20', '1460302201');
INSERT INTO `jt_auth_rule` VALUES ('81', 'admin/Sys/admin_rule_order', '排序操作', '1', '0', '0', '', '', '158', '3', '30', '1460302223');
INSERT INTO `jt_auth_rule` VALUES ('82', 'admin/Sys/admin_rule_edit', '编辑显示', '1', '0', '0', '', '', '158', '3', '40', '1460302247');
INSERT INTO `jt_auth_rule` VALUES ('83', 'admin/Sys/admin_rule_runedit', '编辑操作', '1', '0', '0', '', '', '158', '3', '50', '1460302266');
INSERT INTO `jt_auth_rule` VALUES ('84', 'admin/Sys/admin_rule_del', '删除操作', '1', '0', '0', '', '', '158', '3', '60', '1460302287');
INSERT INTO `jt_auth_rule` VALUES ('86', 'admin/Sys/exportsql', '备份单表', '1', '0', '0', '', '', '5', '4', '20', '1460302429');
INSERT INTO `jt_auth_rule` VALUES ('87', 'admin/Sys/repair', '修复表', '1', '0', '0', '', '', '5', '4', '30', '1460302464');
INSERT INTO `jt_auth_rule` VALUES ('88', 'admin/Sys/optimize', '优化表', '1', '0', '0', '', '', '5', '4', '40', '1460302487');
INSERT INTO `jt_auth_rule` VALUES ('89', 'admin/Sys/del', '删除操作', '1', '0', '0', '', '', '4', '4', '15', '1460302516');
INSERT INTO `jt_auth_rule` VALUES ('90', 'admin/Sys/restore', '还原操作', '1', '0', '0', '', '', '4', '4', '20', '1460302545');
INSERT INTO `jt_auth_rule` VALUES ('91', 'admin/Sys/excel_runexport', '导出操作', '1', '0', '0', '', '', '42', '4', '15', '1460302639');
INSERT INTO `jt_auth_rule` VALUES ('92', 'admin/Sys/excel_runimport', '导入操作', '1', '0', '0', '', '', '41', '4', '15', '1460302665');
INSERT INTO `jt_auth_rule` VALUES ('93', 'admin/News/news_runadd', '添加操作', '1', '0', '0', '', '', '12', '3', '15', '1460335746');
INSERT INTO `jt_auth_rule` VALUES ('94', 'admin/News/news_edit', '编辑显示', '1', '0', '0', '', '', '11', '3', '15', '1460335887');
INSERT INTO `jt_auth_rule` VALUES ('95', 'admin/News/news_runedit', '编辑操作', '1', '0', '0', '', '', '11', '3', '20', '1460335925');
INSERT INTO `jt_auth_rule` VALUES ('96', 'admin/News/news_del', '删到回收站', '1', '0', '0', '', '', '11', '3', '30', '1460335982');
INSERT INTO `jt_auth_rule` VALUES ('97', 'admin/News/news_back_open', '还原', '1', '0', '0', '', '', '25', '3', '15', '1460336269');
INSERT INTO `jt_auth_rule` VALUES ('98', 'admin/News/news_back_del', '删除操作', '1', '0', '0', '', '', '25', '3', '20', '1460341080');
INSERT INTO `jt_auth_rule` VALUES ('99', 'admin/News/news_back_alldel', '删除全部', '1', '0', '0', '', '', '25', '3', '30', '1460341109');
INSERT INTO `jt_auth_rule` VALUES ('100', 'admin/News/news_alldel', '删除全部', '1', '0', '0', '', '', '11', '3', '40', '1460341178');
INSERT INTO `jt_auth_rule` VALUES ('101', 'admin/News/news_state', '状态操作', '1', '0', '0', '', '', '11', '3', '50', '1460341216');
INSERT INTO `jt_auth_rule` VALUES ('102', 'admin/Menu/news_menu_runadd', '添加操作', '1', '0', '0', '', '', '14', '3', '15', '1460341752');
INSERT INTO `jt_auth_rule` VALUES ('103', 'admin/Menu/news_menu_del', '删除操作', '1', '0', '0', '', '', '13', '3', '15', '1460341796');
INSERT INTO `jt_auth_rule` VALUES ('104', 'admin/Menu/news_menu_order', '排序操作', '1', '0', '0', '', '', '13', '3', '20', '1460341845');
INSERT INTO `jt_auth_rule` VALUES ('105', 'admin/Menu/news_menu_edit', '编辑显示', '1', '0', '0', '', '', '13', '3', '30', '1460341972');
INSERT INTO `jt_auth_rule` VALUES ('106', 'admin/Menu/news_menu_runedit', '编辑操作', '1', '0', '0', '', '', '13', '3', '40', '1460342057');
INSERT INTO `jt_auth_rule` VALUES ('107', 'admin/Menu/news_menu_state', '状态操作', '1', '0', '0', '', '', '13', '3', '50', '1460342099');
INSERT INTO `jt_auth_rule` VALUES ('108', 'admin/Member/member_add', '添加显示', '1', '0', '0', '', '', '37', '3', '15', '1460343493');
INSERT INTO `jt_auth_rule` VALUES ('109', 'admin/Member/member_runadd', '添加操作', '1', '0', '0', '', '', '37', '3', '20', '1460343550');
INSERT INTO `jt_auth_rule` VALUES ('110', 'admin/Member/member_edit', '编辑显示', '1', '0', '0', '', '', '37', '3', '30', '1460343589');
INSERT INTO `jt_auth_rule` VALUES ('111', 'admin/Member/member_runedit', '编辑操作', '1', '0', '0', '', '', '37', '3', '40', '1460343773');
INSERT INTO `jt_auth_rule` VALUES ('112', 'admin/Member/member_state', '排序操作', '1', '0', '0', '', '', '37', '3', '50', '1460343804');
INSERT INTO `jt_auth_rule` VALUES ('113', 'admin/Member/member_del', '删除操作', '1', '0', '0', '', '', '37', '3', '60', '1460343932');
INSERT INTO `jt_auth_rule` VALUES ('114', 'admin/Member/member_userpic', '头像上传', '1', '0', '0', '', '', '37', '3', '70', '1460344029');
INSERT INTO `jt_auth_rule` VALUES ('115', 'admin/Member/member_group_runadd', '添加操作', '1', '0', '0', '', '', '38', '3', '15', '1460344133');
INSERT INTO `jt_auth_rule` VALUES ('116', 'admin/Member/member_group_del', '删除操作', '1', '0', '0', '', '', '38', '3', '20', '1460344158');
INSERT INTO `jt_auth_rule` VALUES ('117', 'admin/Member/member_group_state', '状态操作', '1', '0', '0', '', '', '38', '3', '30', '1460344212');
INSERT INTO `jt_auth_rule` VALUES ('118', 'admin/Member/member_group_order', '排序操作', '1', '0', '0', '', '', '38', '3', '40', '1460344255');
INSERT INTO `jt_auth_rule` VALUES ('119', 'admin/Member/member_group_edit', '编辑显示', '1', '0', '0', '', '', '38', '3', '50', '1460344294');
INSERT INTO `jt_auth_rule` VALUES ('120', 'admin/Member/member_group_runedit', '编辑操作', '1', '0', '0', '', '', '38', '3', '60', '1460344347');
INSERT INTO `jt_auth_rule` VALUES ('121', 'wechat/We/menu_runadd', '添加操作', '1', '0', '0', '', '', '39', '3', '15', '1460345046');
INSERT INTO `jt_auth_rule` VALUES ('122', 'wechat/We/menu_state', '状态操作', '1', '0', '0', '', '', '39', '3', '20', '1460345151');
INSERT INTO `jt_auth_rule` VALUES ('123', 'wechat/We/menu_order', '排序操作', '1', '0', '0', '', '', '39', '3', '30', '1460345176');
INSERT INTO `jt_auth_rule` VALUES ('124', 'wechat/We/menu_edit', '编辑显示', '1', '0', '0', '', '', '39', '3', '40', '1460345280');
INSERT INTO `jt_auth_rule` VALUES ('125', 'wechat/We/menu_runedit', '编辑操作', '1', '0', '0', '', '', '39', '3', '50', '1460345306');
INSERT INTO `jt_auth_rule` VALUES ('126', 'wechat/We/menu_del', '删除操作', '1', '0', '0', '', '', '39', '3', '60', '1460345332');
INSERT INTO `jt_auth_rule` VALUES ('127', 'wechat/We/menu_make', '生成菜单', '1', '0', '0', '', '', '39', '3', '70', '1460345377');
INSERT INTO `jt_auth_rule` VALUES ('128', 'admin/Plug/plug_link_runadd', '添加操作', '1', '0', '0', '', '', '32', '4', '15', '1460345848');
INSERT INTO `jt_auth_rule` VALUES ('130', 'admin/Plug/plug_link_state', '状态操作', '1', '0', '0', '', '', '32', '4', '30', '1460345976');
INSERT INTO `jt_auth_rule` VALUES ('131', 'admin/Plug/plug_link_edit', '编辑显示', '1', '0', '0', '', '', '32', '4', '40', '1460345999');
INSERT INTO `jt_auth_rule` VALUES ('132', 'admin/Plug/plug_link_runedit', '编辑操作', '1', '0', '0', '', '', '32', '4', '50', '1460346017');
INSERT INTO `jt_auth_rule` VALUES ('133', 'admin/Plug/plug_linktype_del', '删除操作', '1', '0', '0', '', '', '34', '4', '15', '1460346077');
INSERT INTO `jt_auth_rule` VALUES ('134', 'admin/Plug/plug_linktype_runadd', '添加操作', '1', '0', '0', '', '', '34', '4', '20', '1460346115');
INSERT INTO `jt_auth_rule` VALUES ('135', 'admin/Plug/plug_linktype_runedit', '编辑操作', '1', '0', '0', '', '', '34', '4', '30', '1460346171');
INSERT INTO `jt_auth_rule` VALUES ('136', 'admin/Plug/plug_linktype_order', '排序操作', '1', '0', '0', '', '', '34', '4', '40', '1460346207');
INSERT INTO `jt_auth_rule` VALUES ('137', 'admin/Plug/plug_sug_edit', '编辑显示', '1', '0', '0', '', '', '48', '2', '15', '1460346468');
INSERT INTO `jt_auth_rule` VALUES ('139', 'admin/Plug/plug_ad_del', '删除操作', '1', '0', '0', '', '', '45', '4', '20', '1460346533');
INSERT INTO `jt_auth_rule` VALUES ('140', 'admin/Plug/plug_ad_order', '排序操作', '1', '0', '0', '', '', '45', '4', '30', '1460346549');
INSERT INTO `jt_auth_rule` VALUES ('141', 'admin/Plug/plug_ad_state', '状态操作', '1', '0', '0', '', '', '45', '4', '40', '1460346571');
INSERT INTO `jt_auth_rule` VALUES ('142', 'admin/Plug/plug_ad_edit', '编辑显示', '1', '0', '0', '', '', '45', '4', '50', '1460346593');
INSERT INTO `jt_auth_rule` VALUES ('143', 'admin/Plug/plug_ad_runedit', '编辑操作', '1', '0', '0', '', '', '45', '4', '60', '1460346610');
INSERT INTO `jt_auth_rule` VALUES ('144', 'admin/Plug/plug_adtype_runadd', '添加操作', '1', '0', '0', '', '', '46', '4', '15', '1460346640');
INSERT INTO `jt_auth_rule` VALUES ('145', 'admin/Plug/plug_adtype_edit', '编辑显示', '1', '0', '0', '', '', '46', '4', '20', '1460346659');
INSERT INTO `jt_auth_rule` VALUES ('146', 'admin/Plug/plug_adtype_runedit', '编辑操作', '1', '0', '0', '', '', '46', '4', '30', '1460346680');
INSERT INTO `jt_auth_rule` VALUES ('147', 'admin/Plug/plug_adtype_del', '删除操作', '1', '0', '0', '', '', '46', '4', '40', '1460346700');
INSERT INTO `jt_auth_rule` VALUES ('148', 'admin/Plug/plug_adtype_order', '排序操作', '1', '0', '0', '', '', '46', '4', '50', '1460346717');
INSERT INTO `jt_auth_rule` VALUES ('151', 'admin/Sys/sys', '设置显示', '1', '0', '0', '', '', '6', '4', '10', '1460367871');
INSERT INTO `jt_auth_rule` VALUES ('152', 'admin/Sys/emailsys', '设置显示', '1', '0', '0', '', '', '19', '4', '10', '1460367909');
INSERT INTO `jt_auth_rule` VALUES ('153', 'admin/Sys/activesys', '设置显示', '1', '0', '0', '', '', '57', '4', '10', '1460368054');
INSERT INTO `jt_auth_rule` VALUES ('154', 'wechat/We/wesys', '设置显示', '1', '0', '0', '', '', '10', '4', '10', '1460368073');
INSERT INTO `jt_auth_rule` VALUES ('155', 'admin/Sys/source_list', '来源列表', '1', '0', '0', '', '', '43', '3', '10', '1460368118');
INSERT INTO `jt_auth_rule` VALUES ('156', 'admin/Admin/admin_list', '列表显示', '1', '0', '0', '', '', '16', '3', '10', '1460368235');
INSERT INTO `jt_auth_rule` VALUES ('157', 'admin/Admin/admin_group_list', '列表显示', '1', '0', '0', '', '', '17', '3', '10', '1460368277');
INSERT INTO `jt_auth_rule` VALUES ('158', 'admin/Sys/admin_rule_list', '菜单列表', '1', '1', '0', '', '', '18', '2', '10', '1460368308');
INSERT INTO `jt_auth_rule` VALUES ('159', 'admin/Sys/import', '还原列表', '1', '0', '0', '', '', '4', '4', '10', '1460368413');
INSERT INTO `jt_auth_rule` VALUES ('160', 'admin/Sys/database', '备份列表', '1', '0', '0', '', '', '5', '4', '10', '1460368442');
INSERT INTO `jt_auth_rule` VALUES ('161', 'admin/Sys/excel_export', '导出显示', '1', '0', '0', '', '', '42', '4', '10', '1460368467');
INSERT INTO `jt_auth_rule` VALUES ('162', 'admin/Sys/excel_import', '导入显示', '1', '0', '0', '', '', '41', '4', '10', '1460368482');
INSERT INTO `jt_auth_rule` VALUES ('187', 'admin/Comment/comment_setting', '评论设置', '1', '1', '0', '', '', '185', '2', '20', '1463305710');
INSERT INTO `jt_auth_rule` VALUES ('164', 'admin/Plug/plug_adtype_list', '列表显示', '1', '0', '0', '', '', '46', '4', '10', '1460368616');
INSERT INTO `jt_auth_rule` VALUES ('165', 'admin/Plug/plug_ad_list', '列表显示', '1', '0', '0', '', '', '45', '4', '10', '1460368637');
INSERT INTO `jt_auth_rule` VALUES ('166', 'admin/Plug/plug_linktype_list', '列表显示', '1', '0', '0', '', '', '34', '4', '10', '1460368656');
INSERT INTO `jt_auth_rule` VALUES ('167', 'admin/Plug/plug_link_list', '列表显示', '1', '0', '0', '', '', '32', '4', '10', '1460368676');
INSERT INTO `jt_auth_rule` VALUES ('168', 'wechat/We/menu_list', '列表显示', '1', '0', '0', '', '', '39', '3', '10', '1460368744');
INSERT INTO `jt_auth_rule` VALUES ('169', 'admin/Member/member_group_list', '列表显示', '1', '0', '0', '', '', '38', '3', '10', '1460368780');
INSERT INTO `jt_auth_rule` VALUES ('170', 'admin/Member/member_list', '列表显示', '1', '0', '0', '', '', '37', '3', '10', '1460368804');
INSERT INTO `jt_auth_rule` VALUES ('171', 'admin/Menu/news_menu_add', '添加显示', '1', '0', '0', '', '', '14', '3', '10', '1460369022');
INSERT INTO `jt_auth_rule` VALUES ('172', 'admin/Menu/news_menu_list', '列表显示', '1', '0', '0', '', '', '13', '3', '10', '1460369062');
INSERT INTO `jt_auth_rule` VALUES ('173', 'admin/News/news_back', '列表显示', '1', '0', '0', '', '', '25', '3', '10', '1460369095');
INSERT INTO `jt_auth_rule` VALUES ('174', 'admin/News/news_add', '添加显示', '1', '0', '0', '', '', '12', '3', '10', '1460369128');
INSERT INTO `jt_auth_rule` VALUES ('175', 'admin/News/news_list', '列表显示', '1', '0', '0', '', '', '11', '3', '10', '1460369158');
INSERT INTO `jt_auth_rule` VALUES ('176', 'admin/Admin/admin_group_add', '添加显示', '1', '0', '0', '', '', '17', '3', '15', '1460461365');
INSERT INTO `jt_auth_rule` VALUES ('177', 'admin/Sys/admin_rule_copy', '复制显示', '1', '0', '0', '', '', '158', '3', '40', '1460461557');
INSERT INTO `jt_auth_rule` VALUES ('178', 'admin/Admin/profile', '个人中心', '1', '1', '0', '', '', '15', '2', '90', '1461395663');
INSERT INTO `jt_auth_rule` VALUES ('179', 'admin/Admin/profile', '信息显示', '1', '0', '0', '', '', '178', '3', '10', '1461395702');
INSERT INTO `jt_auth_rule` VALUES ('180', 'admin/Admin/avatar', '头像编辑', '1', '0', '0', '', '', '178', '3', '10', '1461395790');
INSERT INTO `jt_auth_rule` VALUES ('181', 'admin/Plug/plug_file_list', '本地文件管理', '1', '0', '0', '', '', '28', '2', '40', '1461810174');
INSERT INTO `jt_auth_rule` VALUES ('182', 'admin/Plug/plug_file_list', '文件列表', '1', '1', '0', '', '', '181', '3', '10', '1461810218');
INSERT INTO `jt_auth_rule` VALUES ('183', 'admin/Plug/plug_file_filter', '文件清理', '1', '1', '0', '', '', '181', '3', '20', '1461810273');
INSERT INTO `jt_auth_rule` VALUES ('184', 'admin/Sys/oauthsys', '第三方登录', '1', '0', '0', '', '', '2', '3', '40', '1463045567');
INSERT INTO `jt_auth_rule` VALUES ('185', 'admin/Comment', '评论管理', '1', '0', '0', 'fa-comment', '', '0', '1', '15', '1463305461');
INSERT INTO `jt_auth_rule` VALUES ('186', 'admin/Comment/comment_list', '评论列表', '1', '1', '0', '', '', '185', '2', '10', '1463305496');
INSERT INTO `jt_auth_rule` VALUES ('190', 'admin/Sys/urlsetsys', 'URL设置', '1', '0', '0', '', '', '2', '3', '15', '1464341076');
INSERT INTO `jt_auth_rule` VALUES ('202', 'admin/Sys/storagesys', '七牛云存储', '1', '0', '0', '', '', '2', '3', '50', '1481536058');
INSERT INTO `jt_auth_rule` VALUES ('203', 'admin/Sys/runstorage', '保存设置', '1', '0', '0', '', '', '202', '4', '50', '1481536129');
INSERT INTO `jt_auth_rule` VALUES ('204', 'admin/Sys/storagesys', '七牛云存储', '1', '0', '0', '', '', '202', '4', '50', '1481536149');
INSERT INTO `jt_auth_rule` VALUES ('206', 'admin/Model', '模型管理', '1', '0', '0', 'fa fa-list', '', '0', '1', '11', '1482139134');
INSERT INTO `jt_auth_rule` VALUES ('207', 'admin/Model/model_list', '模型列表', '1', '1', '0', '', '', '206', '2', '10', '1482139166');
INSERT INTO `jt_auth_rule` VALUES ('208', 'admin/Model/model_add', '增加模型', '1', '1', '0', '', '', '206', '2', '20', '1482139191');
INSERT INTO `jt_auth_rule` VALUES ('209', 'admin/Model/model_runadd', '增加操作', '1', '0', '0', '', '', '208', '3', '10', '1482139219');
INSERT INTO `jt_auth_rule` VALUES ('210', 'admin/Sys/langsys', '多语言设置', '1', '0', '0', '', '', '2', '3', '13', '1482229864');
INSERT INTO `jt_auth_rule` VALUES ('211', 'admin/Sys/runlangsys', '多语言设置', '1', '0', '0', '', '', '210', '4', '50', '1482229896');
INSERT INTO `jt_auth_rule` VALUES ('212', 'admin/Model', '测试模型管理', '1', '0', '0', 'fa fa-list', '', '28', '2', '35', '1482402595');
INSERT INTO `jt_auth_rule` VALUES ('213', 'admin/Model/cmslist?id=1', '模型列表', '1', '1', '0', '', '', '212', '3', '10', '1482402646');
INSERT INTO `jt_auth_rule` VALUES ('214', 'admin/Model/cmsedit', '编辑模型', '1', '0', '0', '', '', '213', '4', '10', '1482403110');
INSERT INTO `jt_auth_rule` VALUES ('215', 'admin/Model/cmsadd?id=1', '增加测试模型', '1', '1', '0', '', '', '212', '3', '20', '1482403160');
INSERT INTO `jt_auth_rule` VALUES ('216', 'admin/Model/model_edit', '编辑模型', '1', '0', '0', '', '', '207', '3', '20', '1482485417');
INSERT INTO `jt_auth_rule` VALUES ('228', 'admin/Sys/logsys', '日志设置', '1', '0', '0', '', '', '2', '3', '12', '1482635360');
INSERT INTO `jt_auth_rule` VALUES ('240', 'admin/Sys/runlogsys', '保存操作', '1', '0', '0', '', '', '228', '4', '20', '1482844844');
INSERT INTO `jt_auth_rule` VALUES ('241', 'admin/Sys/langsys', '设置显示', '1', '0', '0', '', '', '210', '4', '10', '1482844882');
INSERT INTO `jt_auth_rule` VALUES ('242', 'admin/Sys/urlsys', '设置显示', '1', '0', '0', '', '', '190', '4', '10', '1482844916');
INSERT INTO `jt_auth_rule` VALUES ('243', 'admin/Sys/runurlsys', '保存操作', '1', '0', '0', '', '', '190', '4', '20', '1482844970');
INSERT INTO `jt_auth_rule` VALUES ('244', 'admin/Sys/oauthsys', '设置显示', '1', '0', '0', '', '', '184', '4', '10', '1482845029');
INSERT INTO `jt_auth_rule` VALUES ('245', 'admin/Sys/runoauthsys', '设置显示', '1', '0', '0', '', '', '184', '4', '20', '1482845048');
INSERT INTO `jt_auth_rule` VALUES ('246', 'admin/Model/model_runedit', '编辑操作', '1', '0', '0', '', '', '207', '3', '20', '1482845641');
INSERT INTO `jt_auth_rule` VALUES ('247', 'admin/Model/model_state', '状态操作', '1', '0', '0', '', '', '207', '3', '20', '1482845675');
INSERT INTO `jt_auth_rule` VALUES ('248', 'admin/Model/model_copy', '模型复制', '1', '0', '0', '', '', '207', '3', '20', '1482845725');
INSERT INTO `jt_auth_rule` VALUES ('249', 'admin/Model/model_del', '删除操作', '1', '0', '0', '', '', '207', '3', '20', '1482845749');
INSERT INTO `jt_auth_rule` VALUES ('250', 'admin/Model/model_addmenu', '添加菜单', '1', '0', '0', '', '', '207', '3', '20', '1482845848');
INSERT INTO `jt_auth_rule` VALUES ('251', 'admin/Model/model_add', '增加显示', '1', '0', '0', '', '', '208', '3', '10', '1482845873');
INSERT INTO `jt_auth_rule` VALUES ('252', 'admin/Comment/comment_del', '删除操作', '1', '0', '0', '', '', '186', '3', '50', '1482846045');
INSERT INTO `jt_auth_rule` VALUES ('253', 'admin/Comment/comment_alldel', '全部删除', '1', '0', '0', '', '', '186', '3', '50', '1482846076');
INSERT INTO `jt_auth_rule` VALUES ('254', 'admin/Comment/comment_state', '状态操作', '1', '0', '0', '', '', '186', '3', '50', '1482846099');
INSERT INTO `jt_auth_rule` VALUES ('255', 'admin/Comment/comment_setting', '设置显示', '1', '0', '0', '', '', '187', '3', '50', '1482846131');
INSERT INTO `jt_auth_rule` VALUES ('256', 'admin/Comment/runcsys', '保存操作', '1', '0', '0', '', '', '187', '3', '50', '1482846152');
INSERT INTO `jt_auth_rule` VALUES ('257', 'admin/Plug/plug_sug_reply', '留言回复', '1', '0', '0', '', '', '49', '3', '50', '1482846205');
INSERT INTO `jt_auth_rule` VALUES ('258', 'admin/Plug/plug_sug_runreply', '回复操作', '1', '0', '0', '', '', '49', '3', '50', '1482846233');
INSERT INTO `jt_auth_rule` VALUES ('259', 'admin/Plug/plug_sug_del', '删除操作', '1', '0', '0', '', '', '49', '3', '50', '1482846259');
INSERT INTO `jt_auth_rule` VALUES ('260', 'admin/Plug/plug_sug_alldel', '全部删除', '1', '0', '0', '', '', '49', '3', '50', '1482846279');
INSERT INTO `jt_auth_rule` VALUES ('261', 'admin/Model/cmsrunedit', '编辑操作', '1', '0', '0', '', '', '213', '4', '10', '1482846345');
INSERT INTO `jt_auth_rule` VALUES ('262', 'admin/Model/cmsalldel', '全部删除', '1', '0', '0', '', '', '213', '4', '10', '1482846373');
INSERT INTO `jt_auth_rule` VALUES ('263', 'admin/Model/cmsdel', '删除操作', '1', '0', '0', '', '', '213', '4', '10', '1482846402');
INSERT INTO `jt_auth_rule` VALUES ('264', 'admin/Model/cmsstate', '状态操作', '1', '0', '0', '', '', '213', '4', '10', '1482846428');
INSERT INTO `jt_auth_rule` VALUES ('265', 'admin/Model/cmsorder', '排序操作', '1', '0', '0', '', '', '213', '4', '10', '1482846448');
INSERT INTO `jt_auth_rule` VALUES ('266', 'admin/Model', '常见问题', '1', '0', '0', 'fa-question-circle', '', '28', '2', '50', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('267', 'admin/Model/cmsadd?id=2', '增加常见问题', '1', '1', '0', '', '', '266', '3', '20', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('268', 'admin/cmsrunadd', '增加操作', '1', '0', '0', '', '', '267', '4', '10', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('269', 'admin/Model/cmslist?id=2', '常见问题列表', '1', '1', '0', '', '', '266', '3', '10', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('270', 'admin/Model/cmsdel', '删除操作', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('271', 'admin/Model/cmsstate', '状态操作', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('272', 'admin/Model/cmsorder', '排序操作', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('273', 'admin/Model/cmsalldel', '全部删除', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('274', 'admin/Model/cmsedit', '编辑显示', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('275', 'admin/Model/cmsrunedit', '编辑操作', '1', '0', '0', '', '', '269', '4', '0', '1482821140');
INSERT INTO `jt_auth_rule` VALUES ('276', 'admin/WebLog', '操作日志', '1', '0', '0', 'fa-tasks', '', '0', '1', '19', '1483091169');
INSERT INTO `jt_auth_rule` VALUES ('277', 'admin/WebLog/weblog_list', '操作日志列表', '1', '1', '0', '', '', '276', '2', '10', '1483091198');
INSERT INTO `jt_auth_rule` VALUES ('278', 'admin/WebLog/weblog_setting', '操作日志设置', '1', '1', '0', '', '', '276', '2', '20', '1483091220');
INSERT INTO `jt_auth_rule` VALUES ('279', 'admin/Sys/paysys', '设置显示', '1', '0', '0', '', '', '26', '4', '10', '1483325524');
INSERT INTO `jt_auth_rule` VALUES ('280', 'admin/Sys/runpaysys', '设置操作', '1', '0', '0', '', '', '26', '4', '20', '1483325553');
INSERT INTO `jt_auth_rule` VALUES ('281', 'admin/Sys/smssys', '短信设置', '1', '0', '0', '', '', '2', '3', '33', '1483327040');
INSERT INTO `jt_auth_rule` VALUES ('282', 'admin/Sys/smssys', '设置显示', '1', '0', '0', '', '', '281', '4', '10', '1483327064');
INSERT INTO `jt_auth_rule` VALUES ('283', 'admin/Sys/runsmssys', '设置操作', '1', '0', '0', '', '', '281', '4', '20', '1483327089');
INSERT INTO `jt_auth_rule` VALUES ('294', 'wechat/We/reply_list', '自动回复', '1', '1', '0', '', '', '35', '2', '20', '1483616060');
INSERT INTO `jt_auth_rule` VALUES ('295', 'wechat/We/mats_list', '素材管理', '1', '1', '0', '', '', '35', '2', '30', '1483617538');
INSERT INTO `jt_auth_rule` VALUES ('296', 'wechat/We/menu_get', '同步菜单', '1', '0', '0', '', '', '39', '3', '80', '1483789025');
INSERT INTO `jt_auth_rule` VALUES ('297', 'wechat/We/reply_list', '回复列表', '1', '0', '0', '', '', '294', '3', '10', '1483789065');
INSERT INTO `jt_auth_rule` VALUES ('298', 'wechat/We/reply_edit', '回复编辑', '1', '0', '0', '', '', '294', '3', '20', '1483789096');
INSERT INTO `jt_auth_rule` VALUES ('299', 'wechat/We/reply_runedit', '编辑操作', '1', '0', '0', '', '', '294', '3', '30', '1483789123');
INSERT INTO `jt_auth_rule` VALUES ('300', 'wechat/We/reply_runadd', '添加操作', '1', '0', '0', '', '', '294', '3', '40', '1483789149');
INSERT INTO `jt_auth_rule` VALUES ('301', 'wechat/We/reply_state', '状态操作', '1', '0', '0', '', '', '294', '3', '50', '1483789174');
INSERT INTO `jt_auth_rule` VALUES ('302', 'wechat/We/reply_alldel', '全部删除', '1', '0', '0', '', '', '294', '3', '60', '1483789197');
INSERT INTO `jt_auth_rule` VALUES ('303', 'wechat/We/reply_del', '删除操作', '1', '0', '0', '', '', '294', '3', '70', '1483789219');
INSERT INTO `jt_auth_rule` VALUES ('304', 'wechat/We/mats_list', '素材列表', '1', '0', '0', '', '', '295', '3', '10', '1483789249');
INSERT INTO `jt_auth_rule` VALUES ('305', 'wechat/We/mats_get', '同步素材', '1', '0', '0', '', '', '295', '3', '20', '1483789271');
INSERT INTO `jt_auth_rule` VALUES ('306', 'wechat/We/mats_edit', '编辑素材', '1', '0', '0', '', '', '295', '3', '30', '1483789295');
INSERT INTO `jt_auth_rule` VALUES ('307', 'wechat/We/mats_runedit', '编辑操作', '1', '0', '0', '', '', '295', '3', '40', '1483789317');
INSERT INTO `jt_auth_rule` VALUES ('308', 'wechat/We/mats_add', '增加显示', '1', '0', '0', 'fa-plug', '', '295', '3', '40', '1483789367');
INSERT INTO `jt_auth_rule` VALUES ('309', 'wechat/We/mats_runadd', '增加操作', '1', '0', '0', 'fa-plug', '', '295', '3', '50', '1483789393');
INSERT INTO `jt_auth_rule` VALUES ('310', 'wechat/We/mats_del', '删除操作', '1', '0', '0', 'fa-plug', '', '295', '3', '60', '1483789418');
INSERT INTO `jt_auth_rule` VALUES ('311', 'wechat/We/mats_alldel', '全选删除', '1', '0', '0', 'fa-plug', '', '295', '3', '70', '1483789443');
INSERT INTO `jt_auth_rule` VALUES ('312', 'admin/Model', '订单管理', '1', '0', '0', '', '', '28', '2', '50', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('313', 'admin/Model/cmsadd?id=3', '增加订单支付', '1', '1', '0', '', '', '312', '3', '20', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('314', 'admin/cmsrunadd', '增加操作', '1', '0', '0', '', '', '313', '4', '10', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('315', 'admin/Model/cmslist?id=3', '订单支付列表', '1', '1', '0', '', '', '312', '3', '10', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('316', 'admin/Model/cmsdel', '删除操作', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('317', 'admin/Model/cmsstate', '状态操作', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('318', 'admin/Model/cmsorder', '排序操作', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('319', 'admin/Model/cmsalldel', '全部删除', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('320', 'admin/Model/cmsedit', '编辑显示', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('321', 'admin/Model/cmsrunedit', '编辑操作', '1', '0', '0', '', '', '315', '4', '0', '1483867059');
INSERT INTO `jt_auth_rule` VALUES ('325', 'admin/Addons', '插件管理', '1', '0', '0', 'fa-plug', '', '0', '1', '50', '1487422836');
INSERT INTO `jt_auth_rule` VALUES ('326', 'admin/Addons/addons_list', '插件列表', '1', '1', '0', '', '', '325', '2', '10', '1487422893');

-- ----------------------------
-- Table structure for `jt_comments`
-- ----------------------------
DROP TABLE IF EXISTS `jt_comments`;
CREATE TABLE `jt_comments` (
  `c_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `t_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `uid` int(11) DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '评论时间',
  `c_content` text NOT NULL COMMENT '评论内容',
  `c_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1用户评论 0游客评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL COMMENT '层次',
  `c_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`c_id`),
  KEY `comment_post_ID` (`t_id`),
  KEY `comment_approved_date_gmt` (`c_status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`t_name`,`t_id`,`c_status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of jt_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `jt_diyflag`
-- ----------------------------
DROP TABLE IF EXISTS `jt_diyflag`;
CREATE TABLE `jt_diyflag` (
  `diyflag_id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `diyflag_value` char(2) NOT NULL COMMENT '值',
  `diyflag_name` char(10) NOT NULL COMMENT '名称',
  `diyflag_order` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`diyflag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_diyflag
-- ----------------------------
INSERT INTO `jt_diyflag` VALUES ('1', 'h', '头条', '10');
INSERT INTO `jt_diyflag` VALUES ('2', 'c', '推荐', '20');
INSERT INTO `jt_diyflag` VALUES ('3', 'f', '幻灯', '30');
INSERT INTO `jt_diyflag` VALUES ('4', 'a', '特荐', '40');
INSERT INTO `jt_diyflag` VALUES ('5', 's', '滚动', '50');
INSERT INTO `jt_diyflag` VALUES ('6', 'p', '图片', '60');
INSERT INTO `jt_diyflag` VALUES ('7', 'j', '跳转', '70');
INSERT INTO `jt_diyflag` VALUES ('8', 'd', '原创', '80');
INSERT INTO `jt_diyflag` VALUES ('9', 'cp', '产品', '90');

-- ----------------------------
-- Table structure for `jt_faq`
-- ----------------------------
DROP TABLE IF EXISTS `jt_faq`;
CREATE TABLE `jt_faq` (
  `faq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(200) NOT NULL DEFAULT '未填写' COMMENT '标题',
  `faq_answer` text COMMENT '答复',
  `faq_cid` varchar(100) NOT NULL DEFAULT '未填写' COMMENT '前台栏目',
  `faq_order` int(11) DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_faq
-- ----------------------------
INSERT INTO `jt_faq` VALUES ('1', 'Question 1', 'Question 1：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('2', 'Question 2', 'Question 2：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('3', 'Question 3', 'Question 3：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('4', 'Question 4', 'Question 4：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('5', 'Question 5', 'Question 5：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('6', 'Question 6', 'Question 6：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('7', 'Question 7', 'Question 7：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('8', 'Question 8', 'Question 8：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('9', 'Question 9', 'Question 9：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('10', 'Question 10', 'Question 10：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('11', 'Question 11', 'Question 11：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('12', 'Question 12', 'Question 12：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');
INSERT INTO `jt_faq` VALUES ('13', 'Question 13', 'Question13：Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '15', '50');

-- ----------------------------
-- Table structure for `jt_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `jt_favorites`;
CREATE TABLE `jt_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `t_name` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `t_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of jt_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `jt_hook`
-- ----------------------------
DROP TABLE IF EXISTS `jt_hook`;
CREATE TABLE `jt_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `addon` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of jt_hook
-- ----------------------------
INSERT INTO `jt_hook` VALUES ('17', 'maintain', 'Maintain', '日常维护钩子', '0', '1487424935', '1487424935', '1');
INSERT INTO `jt_hook` VALUES ('13', 'gitinfo', 'Info', 'git信息钩子', '0', '1487419743', '1487419743', '1');
INSERT INTO `jt_hook` VALUES ('14', 'sysinfo', 'Info', '框架信息钩子', '0', '1487419743', '1487419743', '1');
INSERT INTO `jt_hook` VALUES ('16', 'team', 'Team', '团队钩子', '0', '1487422600', '1487422600', '1');

-- ----------------------------
-- Table structure for `jt_hook_addon`
-- ----------------------------
DROP TABLE IF EXISTS `jt_hook_addon`;
CREATE TABLE `jt_hook_addon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `addon` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of jt_hook_addon
-- ----------------------------
INSERT INTO `jt_hook_addon` VALUES ('19', 'maintain', 'Maintain', '1487424935', '1487424935', '100', '1');
INSERT INTO `jt_hook_addon` VALUES ('14', 'sysinfo', 'Info', '1487419743', '1487419743', '100', '1');
INSERT INTO `jt_hook_addon` VALUES ('13', 'gitinfo', 'Info', '1487419743', '1487419743', '100', '1');
INSERT INTO `jt_hook_addon` VALUES ('17', 'team', 'Team', '1487422600', '1487422600', '100', '1');
INSERT INTO `jt_hook_addon` VALUES ('18', 'team', 'Team', '1487422724', '1487422724', '100', '1');

-- ----------------------------
-- Table structure for `jt_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `jt_member_group`;
CREATE TABLE `jt_member_group` (
  `member_group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员组ID',
  `member_group_name` varchar(30) NOT NULL COMMENT '会员组名',
  `member_group_open` int(11) NOT NULL DEFAULT '0' COMMENT '会员组是否开放',
  `member_group_toplimit` int(11) NOT NULL DEFAULT '0' COMMENT '积分上限',
  `member_group_bomlimit` int(11) NOT NULL DEFAULT '0' COMMENT '积分下限',
  `member_group_order` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`member_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_member_group
-- ----------------------------
INSERT INTO `jt_member_group` VALUES ('1', '会员', '1', '11', '22', '50');

-- ----------------------------
-- Table structure for `jt_member_list`
-- ----------------------------
DROP TABLE IF EXISTS `jt_member_list`;
CREATE TABLE `jt_member_list` (
  `member_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_list_username` varchar(60) NOT NULL COMMENT '登录用户名',
  `member_list_pwd` char(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `member_list_salt` char(10) NOT NULL,
  `member_list_groupid` tinyint(2) NOT NULL COMMENT '所属会员组',
  `member_list_nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `member_list_province` int(6) NOT NULL COMMENT '城市',
  `member_list_city` int(6) NOT NULL COMMENT '市县',
  `member_list_town` int(6) NOT NULL COMMENT '乡镇',
  `member_list_sex` tinyint(2) NOT NULL DEFAULT '3' COMMENT '1=男  2=女 3=保密',
  `member_list_headpic` varchar(200) NOT NULL COMMENT '会员头像路径',
  `member_list_tel` varchar(20) NOT NULL COMMENT '手机',
  `member_list_email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `member_list_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `member_list_addtime` int(11) NOT NULL COMMENT '添加时间戳',
  `member_list_from` varchar(20) DEFAULT '',
  `user_url` varchar(100) DEFAULT '' COMMENT '个人网站',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT '' COMMENT '签名',
  `last_login_ip` varchar(16) DEFAULT '',
  `last_login_time` int(11) unsigned DEFAULT NULL,
  `user_activation_key` varchar(100) DEFAULT '' COMMENT '激活验证',
  `user_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未激活 1激活',
  `score` int(11) unsigned DEFAULT '0' COMMENT '积分',
  `coin` int(11) unsigned DEFAULT '0' COMMENT '金币',
  PRIMARY KEY (`member_list_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_member_list
-- ----------------------------
INSERT INTO `jt_member_list` VALUES ('1', 'admin', '81033719087c98897aa4acf55ceb9f5a', 'QlaCQuTxXd', '1', 'admin', '0', '0', '0', '3', '', '', 'admin@qq.com', '1', '1510662402', '', '', null, '', '115.60.161.166', '1526088504', '', '1', '0', '0');

-- ----------------------------
-- Table structure for `jt_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jt_menu`;
CREATE TABLE `jt_menu` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(36) NOT NULL,
  `menu_enname` varchar(50) NOT NULL COMMENT '英文标题',
  `menu_type` int(8) NOT NULL,
  `menu_modelid` int(3) NOT NULL DEFAULT '0' COMMENT '模型id',
  `parentid` int(3) NOT NULL COMMENT '父级id',
  `menu_listtpl` varchar(50) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `menu_newstpl` varchar(50) NOT NULL DEFAULT '' COMMENT '单文章页模板',
  `menu_address` varchar(70) NOT NULL,
  `menu_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否开启',
  `listorder` int(7) NOT NULL,
  `menu_img` varchar(100) DEFAULT '' COMMENT '单页缩略图',
  `menu_seo_title` varchar(36) NOT NULL,
  `menu_seo_key` varchar(200) NOT NULL,
  `menu_seo_des` varchar(200) NOT NULL,
  `menu_content` longtext NOT NULL,
  `menu_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_menu
-- ----------------------------
INSERT INTO `jt_menu` VALUES ('1', '新闻中心', '', '3', '0', '0', 'list', 'news', '', '1', '10', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg', '新闻中心', '新闻中心', '新闻中心', '<p style=\"white-space: normal;\">&nbsp; 团队成立与于2014年,是一个专注于高端品牌网站建设的设计工作室。</p><p style=\"white-space: normal;\">团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供WAP网站建设、微网站、微商城、微信裂变式分销，网站维护、网络推广等互联网一站式服务。我们将商业与技术完美结合起来，以使我们的客户可以在快速发展的信息科技领域中获得更有效的竞争力。</p><p style=\"white-space: normal;\">&nbsp;&nbsp;团队成立以来，先后为数十家企业提供网站建设及推广服务。我们一直秉承“只做有灵魂的设计”和“坚持原创”的核心价值观，以“为客户赢得客户”为己任，用我们的激情和智慧，勤奋与努力，帮助中小企业开展网站建设，打开互联网营销局面，深刻影响着魔酷阁的经营模式和营销思路我们坚信，中国的每一家企业都应该有一个赋有灵魂的网站，用来发布企业产品、发布企业资讯、开展网上调查、与客户进行在线交流、分析客户需求和了解市场发展等功能于一体的营销型网站。</p>', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('2', '党建园地', '', '3', '0', '0', 'list', 'news', '', '1', '20', '', '党建园地', '党建园地', '党建园地', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('3', '养老项目', '', '3', '0', '0', 'list', 'news', '', '1', '45', '', '养老项目', '养老项目', '养老项目', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('4', '联系我们', '', '4', '0', '0', 'contact', '', '', '1', '55', '', '联系我们', '联系我们', '联系我们', '<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px;\"><strong><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">单位名称：<span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51);\" arial=\"\" font-size:=\"\" text-align:=\"\" background-color:=\"\">河南省交通运输厅机关服务中心</span></span></strong></span><strong><span style=\"font-family: 幼圆, 宋体, \" arial=\"\" font-size:=\"\" background-color:=\"\" color:=\"\">&nbsp;</span></strong></p><p><strong><span style=\"color: rgb(51, 51, 51); font-family: 幼圆, 宋体, \" arial=\"\" font-size:=\"\" text-align:=\"\" background-color:=\"\">地址：河南郑州市金水东路26号&nbsp;</span></strong></p><p><strong><span style=\"color: rgb(51, 51, 51); font-family: 幼圆, 宋体, \" arial=\"\" font-size:=\"\" text-align:=\"\" background-color:=\"\">联系电话：<span style=\"color: rgb(51, 51, 51); font-family: 幼圆, 宋体, \" arial=\"\" font-size:=\"\" text-align:=\"\" background-color:=\"\">0371-87166016</span></span></strong></p>', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('5', '平安建设', '', '3', '0', '0', 'list', 'news', '', '1', '30', '', '平安建设', '平安建设', '平安建设', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('6', '观点前沿', '', '3', '0', '0', 'list', 'news', '', '1', '50', '', '观点前沿', '观点前沿', '观点前沿', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('7', '网站首页', 'Home', '1', '0', '0', '', '', '', '1', '1', '', '', '', '', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('8', 'About us', '', '4', '0', '0', 'about', '', '', '1', '10', 'http://ohjmksy46.bkt.clouddn.com/images/iwm3zkpk_21n6xk2bzngg584ea48f41bc7.jpg', 'About us', 'About us', 'About us', '<p>Team was founded in 2014, is a focus on high-end brand website construction design studio.</p><p>The backbone of the team has a wealth of web design and web development level, to provide more in line with the search engine website development services for customers, to assist the construction of OA network information office platform, customized website and database development, and provide the WAP website, micro sites, micro mall, WeChat fission distribution, website maintenance, network promotion, Internet stop service. We will be the perfect combination of business and technology, so that our customers can be in the rapid development of the information technology in the field of more effective competition.</p><p>Since the establishment of the team, has dozens of enterprises to provide website construction and promotion services. We have been adhering to the \"only do the design with a soul\" and \"adhere to the original\" core values \"to win customers\" to customers for the mission, with our passion and wisdom, diligence and efforts to help small and medium-sized enterprises to carry out the construction site, open Internet marketing, deeply influence the business model and marketing ideas possessed cool Pavilion we believe that every company should have a Chinese are endowed with soul of the website, to release enterprise products, enterprise information, carry out online survey released, the marketing website of online communication and customer needs analysis and understanding of market development and other functions in one with customers.</p>', 'en-us');
INSERT INTO `jt_menu` VALUES ('9', 'Services', '', '3', '0', '0', 'list', 'news', '', '1', '20', '', '', '', '', '', 'en-us');
INSERT INTO `jt_menu` VALUES ('10', 'Cases', '', '3', '0', '0', 'photo_list', 'news', '', '1', '45', '', '', '', '', '', 'en-us');
INSERT INTO `jt_menu` VALUES ('11', 'Contract us', '', '4', '0', '0', 'contact', '', '', '1', '55', '', '', '', '', '&lt;p&gt;联系方式&lt;/p&gt;', 'en-us');
INSERT INTO `jt_menu` VALUES ('12', 'News', '', '3', '0', '0', 'list', 'news', '', '1', '30', '', '', '', '', '', 'en-us');
INSERT INTO `jt_menu` VALUES ('13', 'Partner', '', '3', '0', '0', 'list', 'news', '', '0', '50', '', '', '', '', '', 'en-us');
INSERT INTO `jt_menu` VALUES ('14', 'Home', 'Home', '1', '0', '0', '', '', '', '1', '1', '', '', '', '', '', 'en-us');
INSERT INTO `jt_menu` VALUES ('15', '服务经营', 'FAQ', '3', '0', '0', 'list', 'news', '', '1', '30', '', '服务经营', '服务经营', '服务经营', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('16', '中心简介', '', '4', '0', '0', 'about', '', '', '1', '50', '', '中心简介', '中心简介', '中心简介', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆根据机关后勤服务工作规划和要求，承担河南省交通运输厅的后勤服务保障工作；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆承担厅机关委托管理的部门行政事务性工作；&nbsp;&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆管理交通厅交由其占用、使用的国有资产，能使经营性资产保值增值；&nbsp;&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆推动所属经营单位通过深化改革，转化机制，加强管理，改进服务，提高经济效益。</p>', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('17', '精神文明', '', '3', '0', '0', 'list', 'news', '', '0', '50', '', '精神文明', '精神文明', '精神文明', '', 'zh-cn');
INSERT INTO `jt_menu` VALUES ('18', '通知公告', 'notice', '3', '0', '0', 'list', 'news', '', '0', '50', '', '通知公告', '通知公告', '通知公告', '', 'zh-cn');

-- ----------------------------
-- Table structure for `jt_model`
-- ----------------------------
DROP TABLE IF EXISTS `jt_model`;
CREATE TABLE `jt_model` (
  `model_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `model_name` char(30) NOT NULL DEFAULT '' COMMENT '模型标识',
  `model_title` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `model_pk` char(30) NOT NULL DEFAULT '' COMMENT '主键字段',
  `model_cid` char(30) NOT NULL DEFAULT '' COMMENT '栏目字段',
  `model_order` char(30) NOT NULL DEFAULT '' COMMENT '默认排序字段',
  `model_sort` varchar(255) DEFAULT NULL COMMENT '表单字段排序',
  `model_fields` text NOT NULL COMMENT '字段列表',
  `model_list` varchar(255) DEFAULT NULL COMMENT '列表显示字段，为空显示全部',
  `model_edit` varchar(255) DEFAULT '' COMMENT '可编辑字段，为空则除主键外均可以编辑',
  `model_indexes` varchar(255) DEFAULT NULL COMMENT '索引字段',
  `search_list` varchar(255) DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `model_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `model_engine` varchar(25) NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  PRIMARY KEY (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文档模型表';

-- ----------------------------
-- Records of jt_model
-- ----------------------------
INSERT INTO `jt_model` VALUES ('1', 'test', '测试模型', 'test_id', 'test_cid', 'test_order', 'test_order', '{\"m_text\":{\"name\":\"m_text\",\"title\":\"\\u6587\\u672c\\u5b57\\u6bb5\",\"type\":\"text\",\"data\":\"\",\"description\":\"\\u6587\\u672c\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"readonly\",\"default\":\"\"},\"m_map\":{\"name\":\"m_map\",\"title\":\"\\u5730\\u56fe\\u5b57\\u6bb5\",\"type\":\"baidu_map\",\"data\":\"\",\"description\":\"\\u5730\\u56fe\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"22,22\"},\"m_imagefile\":{\"name\":\"m_imagefile\",\"title\":\"\\u5355\\u56fe\\u7247\\u5b57\\u6bb5\",\"type\":\"imagefile\",\"data\":\"\",\"description\":\"\\u5355\\u56fe\\u7247\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_images\":{\"name\":\"m_images\",\"title\":\"\\u591a\\u56fe\\u7247\\u5b57\\u6bb5\",\"type\":\"images\",\"data\":\"\",\"description\":\"\\u591a\\u56fe\\u7247\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_selecttext\":{\"name\":\"m_selecttext\",\"title\":\"\\u9009\\u62e9\\u6587\\u672c\",\"type\":\"selecttext\",\"data\":\"auth_group|id|title|id\",\"description\":\"\\u9009\\u62e9\\u6587\\u672c\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"required\",\"default\":\"\"},\"m_cur\":{\"name\":\"m_cur\",\"title\":\"\\u8d27\\u5e01\\u5b57\\u6bb5\",\"type\":\"currency\",\"data\":\"\",\"description\":\"\\u8d27\\u5e01\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"unsigned\",\"default\":\"22\"},\"m_long\":{\"name\":\"m_long\",\"title\":\"\\u957f\\u6574\\u6570\\u5b57\\u6bb5\",\"type\":\"large_number\",\"data\":\"\",\"description\":\"\\u957f\\u6574\\u6570\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"0\"},\"m_int\":{\"name\":\"m_int\",\"title\":\"\\u6574\\u6570\\u5b57\\u6bb5\",\"type\":\"number\",\"data\":\"\",\"description\":\"\\u6574\\u6570\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"required\",\"default\":\"11\"},\"m_datatime\":{\"name\":\"m_datatime\",\"title\":\"\\u65e5\\u671f\\u65f6\\u95f4\\u5b57\\u6bb5\",\"type\":\"datetime\",\"data\":\"\",\"description\":\"\\u65e5\\u671f\\u65f6\\u95f4\\u5b57\\u6bb5\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_date\":{\"name\":\"m_date\",\"title\":\"\\u65e5\\u671f\\u5b57\\u6bb5\",\"type\":\"date\",\"data\":\"\",\"description\":\"\\u65e5\\u671f\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_selectnumber\":{\"name\":\"m_selectnumber\",\"title\":\"\\u9009\\u62e9\\u6570\\u5b57\\u5b57\\u6bb5\",\"type\":\"selectnumber\",\"data\":\"1:a,2:b,3:c\",\"description\":\"\\u9009\\u62e9\\u6570\\u5b57\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"readonly\",\"default\":\"\"},\"m_richtext\":{\"name\":\"m_richtext\",\"title\":\"\\u5bcc\\u6587\\u672c\\u5b57\\u6bb5\",\"type\":\"richtext\",\"data\":\"\",\"description\":\"\\u5bcc\\u6587\\u672c\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_bigtext\":{\"name\":\"m_bigtext\",\"title\":\"\\u6587\\u672c\\u57df\\u5b57\\u6bb5\",\"type\":\"bigtext\",\"data\":\"\",\"description\":\"\\u6587\\u672c\\u57df\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"m_switch\":{\"name\":\"m_switch\",\"title\":\"\\u5f00\\u5173\\u5b57\\u6bb5\",\"type\":\"switch\",\"data\":\"\",\"description\":\"\\u5f00\\u5173\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"0\"},\"m_check\":{\"name\":\"m_check\",\"title\":\"\\u591a\\u9009\\u6846\\u5b57\\u6bb5\",\"type\":\"checkbox\",\"data\":\"diyflag|diyflag_id|diyflag_name|diyflag_order\",\"description\":\"\\u591a\\u9009\\u6846\\u5b57\\u6bb5\\u8bf4\\u660e\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"}}', 'test_id,m_selecttext,m_date,m_switch,m_imagefile', '', '', '', '1482231462', '1482402443', '1', 'MyISAM');
INSERT INTO `jt_model` VALUES ('2', 'faq', '常见问题', 'faq_id', 'faq_cid', 'faq_order', 'faq_order', '{\"faq_title\":{\"name\":\"faq_title\",\"title\":\"\\u6807\\u9898\",\"type\":\"text\",\"data\":\"\",\"description\":\"\\u6807\\u9898\",\"length\":\"\",\"rules\":\"required\",\"default\":\"\"},\"faq_answer\":{\"name\":\"faq_answer\",\"title\":\"\\u7b54\\u590d\",\"type\":\"bigtext\",\"data\":\"\",\"description\":\"\\u7b54\\u590d\",\"length\":\"\",\"rules\":\"required\",\"default\":\"\"}}', '', '', '', '', '1482821043', '1482821382', '1', 'MyISAM');
INSERT INTO `jt_model` VALUES ('3', 'payment', '订单支付', 'payment_id', 'payment_cid', 'create_time', 'create_time', '{\"out_trade_no\":{\"name\":\"out_trade_no\",\"title\":\"\\u5546\\u54c1\\u8ba2\\u5355\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"100\",\"rules\":\"unique\",\"default\":\"\"},\"pay_trade_no\":{\"name\":\"pay_trade_no\",\"title\":\"\\u652f\\u4ed8\\u8ba2\\u5355\\u53f7\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"100\",\"rules\":\"unique\",\"default\":\"NULL\"},\"money\":{\"name\":\"money\",\"title\":\"\\u8ba2\\u5355\\u91d1\\u989d\",\"type\":\"currency\",\"data\":\"\",\"description\":\"\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"status\":{\"name\":\"status\",\"title\":\"\\u8ba2\\u5355\\u72b6\\u6001\",\"type\":\"number\",\"data\":\"\",\"description\":\"1:\\u5f85\\u652f\\u4ed82:\\u6d4b\\u8bd5\\u8ba2\\u53558:\\u6210\\u529f\\u652f\\u4ed80:\\u5220\\u9664\\u8ba2\\u5355\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"type\":{\"name\":\"type\",\"title\":\"\\u652f\\u4ed8\\u65b9\\u5f0f\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"50\",\"rules\":\"\",\"default\":\"\"},\"uid\":{\"name\":\"uid\",\"title\":\"\\u4ed8\\u6b3euid\",\"type\":\"number\",\"data\":\"\",\"description\":\"\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"create_time\":{\"name\":\"create_time\",\"title\":\"\\u8ba2\\u5355\\u521b\\u5efa\\u65f6\\u95f4\",\"type\":\"datetime\",\"data\":\"\",\"description\":\"\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"update_time\":{\"name\":\"update_time\",\"title\":\"\\u8ba2\\u5355\\u66f4\\u65b0\\u65f6\\u95f4\",\"type\":\"datetime\",\"data\":\"\",\"description\":\"\",\"length\":\"\",\"rules\":\"\",\"default\":\"\"},\"client_ip\":{\"name\":\"client_ip\",\"title\":\"\\u652f\\u4ed8ip\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"50\",\"rules\":\"\",\"default\":\"\"},\"product_name\":{\"name\":\"product_name\",\"title\":\"\\u5546\\u54c1\\u540d\\u79f0\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"200\",\"rules\":\"\",\"default\":\"\"},\"product_body\":{\"name\":\"product_body\",\"title\":\"\\u5546\\u54c1\\u63cf\\u8ff0\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"200\",\"rules\":\"\",\"default\":\"\"},\"product_url\":{\"name\":\"product_url\",\"title\":\"\\u5546\\u54c1\\u5730\\u5740\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"100\",\"rules\":\"\",\"default\":\"\"},\"extra_param\":{\"name\":\"extra_param\",\"title\":\"\\u7279\\u6b8a\\u6269\\u5c55\",\"type\":\"text\",\"data\":\"\",\"description\":\"\",\"length\":\"500\",\"rules\":\"\",\"default\":\"\"}}', 'out_trade_no,pay_trade_no,product_name,money,type,update_time,status', '', '', '', '1483620293', '1483620293', '1', 'MyISAM');

-- ----------------------------
-- Table structure for `jt_news`
-- ----------------------------
DROP TABLE IF EXISTS `jt_news`;
CREATE TABLE `jt_news` (
  `n_id` int(36) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL COMMENT '文章标题',
  `news_titleshort` varchar(100) DEFAULT NULL COMMENT '简短标题',
  `news_columnid` int(11) NOT NULL,
  `news_columnviceid` int(11) DEFAULT NULL COMMENT '副栏目ID',
  `news_key` varchar(100) DEFAULT NULL COMMENT '文章关键字',
  `news_tag` varchar(50) DEFAULT '' COMMENT '文章标签',
  `news_auto` varchar(20) NOT NULL COMMENT '作者',
  `news_source` varchar(20) NOT NULL DEFAULT '未知' COMMENT '来源',
  `news_content` longtext NOT NULL COMMENT '新闻内容',
  `news_scontent` varchar(200) NOT NULL DEFAULT '',
  `news_hits` int(11) NOT NULL DEFAULT '200' COMMENT '点击率',
  `news_like` int(11) unsigned DEFAULT '0' COMMENT '收藏数',
  `news_img` varchar(100) DEFAULT '' COMMENT '大图地址',
  `news_pic_type` tinyint(2) NOT NULL COMMENT '1=普通模式 2=腾讯模式',
  `news_pic_allurl` text COMMENT '多图路径',
  `news_pic_content` longtext COMMENT '多图对应文字说明',
  `news_time` int(11) NOT NULL,
  `listorder` int(11) unsigned DEFAULT '50',
  `news_modified` int(11) unsigned DEFAULT '0' COMMENT '修改时间',
  `news_flag` set('h','c','f','a','s','p','j','d','cp') NOT NULL DEFAULT '' COMMENT '文章属性',
  `news_zaddress` varchar(100) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `news_cpprice` double NOT NULL DEFAULT '0' COMMENT '产品价格',
  `news_back` int(2) NOT NULL DEFAULT '0' COMMENT '是否为回收站',
  `news_open` varchar(2) DEFAULT '0' COMMENT '0代表审核不通过 1代表审核通过',
  `news_lvtype` tinyint(2) NOT NULL DEFAULT '0' COMMENT '旅游类型1=行程 2=攻略',
  `comment_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=可评论 0=不可评论',
  `comment_count` int(11) unsigned DEFAULT '0' COMMENT '评论数',
  `news_extra` text COMMENT '扩展字段，json',
  `news_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`n_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_news
-- ----------------------------
INSERT INTO `jt_news` VALUES ('1', '中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮', 'ACE后台管理系统', '2', '0', '学习十九大', '', '1', '河南省交通运输厅机关服务中心', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">学习贯彻党的十九大精神，是当前和今后一个时期的头等大事。中建七局总承包公司各级党组织以强烈的政治责任感、昂扬向上的精神状态和良好的作风，不断创新形式、丰富内容，认真组织开展宣贯活动，在全公司迅速兴起了学习宣传贯彻党的十九大精神热潮，推动了党的十九大精神在各层级的落地生根。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/></p><p>&nbsp;<img src=\"/data/upload/2017-11-15/5a0b87548b175.png\" title=\"5a0b87548b175.png\" alt=\"5a0b87548b175.png\"/></p><p><span style=\"padding: 0px; margin: 0px; font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">迅速行动，以上率下。为深入学习贯彻党的十九大精神，统一思想，凝聚力量，10月31日，中建七局总承包公司党委在总部机关6楼会议室召开了党的十九大精神学习宣贯大会。会上，总承包公司党委书记、董事长苏方毅从大会基本情况、深入学习领会十九大报告内涵实质、党章（修正案）主要精神、十九大精神在全公司落地生根等7个方面，系统全面地宣讲了党的十九大精神，交流了个人的学习体会，对公司上下学习贯彻党的十九大精神的有关工作进行了安排部署，要求各党总支、党支部，总部各部门、分公司、各项目部要迅速行动，以强烈的政治责任感和使命感，抓好抓实学习宣贯工作的落地。会议结束后，总承包公司各单位迅速行动，开展了形式多样的十九大精神学习宣贯活动，迅速掀起了学习贯彻党的十九大精神热潮。</span></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlydwog_2hu7u1cbg6io584e7fce50313.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlydi0o_4f6h69in0vsw584e7fbb8e163.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlydgh4_amfzhr162m0584e7fb9097b9.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlyde5s_63tohbqbcpog584e7fb6c4381.jpg\" style=\"\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114);\" open=\"\" font-size:=\"\" line-height:=\"\" white-space:=\"\" background-color:=\"\"><br/></p>', '中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮', '203', '0', '/data/upload/2017-11-15/5a0b8757a1181.png', '1', '/data/upload/2016-05-06/572c863a052a7.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4hdww_1tt5u3ioc2jo584ea7ce3abe4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4hcdc_5zqxgcnh8hkw584ea7ccc0949.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4hblk_2m18chvhum04584ea7cb53efc.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ha20_41xswn520d0k584ea7c982448.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4h9a8_37gpgidez8is584ea7c86710b.jpg,', '', '1462535538', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('10', '河南省社会治安综合治理领导责任制实施办法', '', '5', '0', '社会治安', '', '1', '机关服务中心', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第一章总则</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第一条为深入推进社会治安综合治理，健全落实领导责任制，全面推进平安河南建设，确保人民安居乐业、社会安定有序，根据《中共中央办公厅、国务院办公厅关于印发〈健全落实社会治安综合治理领导责任制规定〉的通知》(厅字〔2016〕8号)，结合我省实际，制定本办法。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二条本办法适用于全省辖区内各级党的机关、人大机关、行政机关、政协机关、审判机关、检察机关及其领导班子、领导干部。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">人民团体、事业单位、国有企业及其领导班子、领导干部、领导人员参照执行本办法。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三条实行社会治安综合治理领导责任制，应当坚持以邓小平理论、“三个代表”重要思想、科学发展观为指导，深入贯彻落实习近平总书记系列重要讲话精神，紧紧围绕“四个全面”战略布局，抓住“关键少数”，强化担当意识，促使各级领导班子、领导干部切实担负起维护一方稳定、确保一方平安的重大政治责任，做到守土有责、守土负责、守土尽责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四条实行社会治安综合治理领导责任制，应当严格落实属地管理和谁主管谁负责原则，着力构建党委领导、政府主导、综治协调、法治保障、部门齐抓共管、社会力量积极参与的社会治安综合治理工作格局。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第五条实行社会治安综合治理领导责任制，应当坚持问题导向、法治思维、改革创新，科学运用评估、督导、考核、激励、惩戒等措施，形成正确导向。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第六条实行社会治安综合治理领导责任制，应当坚持集体领导与个人分工负责相结合，党政同责、一岗双责、失职追责，落实各级党政领导班子主要负责同志、分管负责同志和其他成员抓社会治安综合治理工作的责任，保证党中央、国务院和省委、省政府关于社会治安综合治理决策部署的贯彻落实。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二章责任内容</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第七条各级党委、政府对本地社会治安综合治理工作负总责，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)贯彻落实党中央、国务院以及上级党委、政府关于社会治安综合治理的决策部署，切实加强对社会治安综合治理的领导，列入重要议事日程，纳入经济社会发展总体规划和年度工作目标；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)定期召开党委常委会议、政府常务会议，研究制定社会治安综合治理工作计划和措施，明确领导班子、领导干部在社会治安综合治理中的职责和任务分工，认真研究解决工作中的重要问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)保障对社会治安综合治理和平安建设的投入，把社会治安综合治理工作经费纳入同级财政预算，并注意向基层倾斜，从人力物力财力上保证社会治安综合治理工作的顺利开展；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)正确处理改革发展稳定的关系，及时分析研判社会治安、社会稳定形势，标本兼治、重在治本，维护社会大局持续稳定，维护国家安全和社会政治稳定，预防和化解社会矛盾，落实社会稳定风险评估制度，健全立体化社会治安防控体系，加强社会治安综合治理基层基础建设，确保公众安全感达到90%以上，力争不发生在全国有重大影响的危害国家安全和政治稳定案事件、暴力恐怖案件、邪教类案事件、极端上访事件和群体性事件、刑事治安案事件、公共安全事故、执法司法人员违法违纪案件；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)对本地社会治安综合治理工作情况和下级领导班子、领导干部落实社会治安综合治理领导责任制情况进行监督检查；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(六)领导、组织并支持社会治安综合治理部门依法履行职责，加强社会治安综合治理组织机构建设，配齐配强领导干部和工作人员，及时听取工作汇报，充分发挥其职能作用；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(七)其他应当履行的社会治安综合治理方面的职责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第八条各部门各单位对本部门本单位社会治安综合治理工作负总责，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)认真落实党委、政府和社会治安综合治理委员会(以下简称综治委)的安排部署，把社会治安综合治理工作纳入本部门本单位年度工作计划，与业务工作同规划、同部署、同检查、同落实；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)结合自身业务，认真抓好本系统参与社会治安综合治理的工作，主动承担预防和减少违法犯罪、维护社会治安和社会稳定的责任，加强协调配合，形成齐抓共管合力；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)严格落实社会稳定风险评估制度，加强对执行关系民生政策措施情况的监督，防止决策不当或者政策落实不到位、执行偏差引发影响社会稳定问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)深入开展平安单位、平安行业创建活动，加强本部门本单位本系统及主管领域矛盾纠纷和不稳定因素的排查化解，加强单位内部安全防范，加强干部职工法治教育，有效预防和减少各类案事件的发生；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)加强对干部职工及服务管理对象参与社会治安综合治理宣传教育工作；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(六)严格执行综治委工作制度，认真完成综治委及其办公室交办的工作事项，及时向综治委报送重大问题信息并提出解决建议；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(七)其他应当履行的社会治安综合治理方面的职责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第九条党政主要负责同志是社会治安综合治理的第一责任人，负主要领导责任，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)把社会治安综合治理作为一把手工程来抓，切实加强调查研究、组织协调，指导和督促班子成员抓好分管领域的社会治安综合治理工作；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)及时主持召开党政领导班子会议，传达贯彻上级社会治安综合治理工作部署，研究制定工作举措，重要工作亲自部署并督促落实；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)每半年至少听取1次社会治安综合治理工作汇报，分析研判形势，对重大工作事项及时作出正确决策，着力解决重点难点问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)主持化解重大矛盾纠纷，督办解决影响社会治安的突出问题，指挥处置影响社会稳定的重大案事件；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)其他应当履行的社会治安综合治理方面的职责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十条党政分管负责同志是社会治安综合治理的直接责任人，负具体领导责任，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)协助主要负责同志围绕党委、政府总体部署，加强调查研究、形势研判和统筹谋划，积极主动提出工作意见；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)加强工作指导和督促检查，及时发现和解决工作中的突出问题，推动各项措施全面落实；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)创新思路举措，加强组织协调，抓好矛盾纠纷预防化解、社会治安防控体系建设、综治基层基础建设等重点工作；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)推动有关地方和部门完善体制机制，有效治理突出治安问题，着力解决影响社会稳定的源头性、根本性、基础性问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)跟踪督办重大案件，积极协助主要负责同志妥善处置各种影响社会稳定的重大问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(六)其他应当履行的社会治安综合治理方面的职责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十一条党政领导班子其他成员按照“一岗双责”的要求，承担分管工作范围内的社会治安综合治理工作责任，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)按照党委、政府和综治委的总体部署，协助主要负责同志、支持分管负责同志抓好措施落实，统筹谋划、指导推动分管部门、行业的社会治安综合治理工作；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)指导、推动和监督分管部门、行业依照规定开展社会稳定风险评估工作，依法、科学、民主决策，正确执行法律政策；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)加强调查研究，及时发现分管部门、行业中影响社会治安和社会稳定的重大隐患和突出问题，认真组织研究制定解决措施并抓好落实，防止矛盾纠纷激化升级蔓延，跟踪督办化解重大疑难复杂矛盾纠纷，组织开展群众反映强烈突出问题专项治理；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)指导、推动分管部门、行业落实责任、创新举措、破解难题、争先创优；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)其他应当履行的社会治安综合治理方面的职责。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十二条各级综治委及其办公室应当在党委、政府的统一领导下，认真组织各部门开展社会治安综合治理工作，履行下列职责：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)根据本地社会治安状况，研究提出社会治安综合治理的工作思路、措施，供党委、政府决策；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)对一个时期内的社会治安综合治理工作作出安排部署，并督促实施；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)加强调查研究，及时分析、通报社会治安形势，指导、协调、推动各地各部门落实社会治安综合治理的各项工作措施，协调解决工作中遇到的突出问题；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)总结推广典型经验，表彰先进，组织有关部门加强社会治安综合治理的理论研究；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)组织实施社会治安综合治理工作责任考核、责任督导，会同相关部门实施责任追究；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(六)办理党委、政府交办的有关事项。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三章责任落实</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十三条各地各部门各单位应当建立完善社会治安综合治理目标管理责任制，自上而下层层签订社会治安综合治理和平安建设工作目标责任书，把社会治安综合治理各项任务分解为若干具体目标，制定易于执行检查的措施，建立严格的督促检查制度、定量考核制度、评价奖惩制度，把社会治安综合治理各项任务落实到基层，落实到部门和单位，落实到责任人。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">责任书一年一签，一般在每年第一季度签订。主要内容包括应当完成的社会治安综合治理重点工作、应当达到的工作目标等。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十四条各级党委常委会应当将执行社会治安综合治理领导责任制的情况，作为向同级党的委员会全体会议报告工作的一项重要内容。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">各级党政领导班子和有关领导干部应当将履行社会治安综合治理责任情况作为年度述职报告的重要内容。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十五条综治委成员单位应当认真执行向同级综治委报告工作制度，重要情况即时报告，工作信息随时报送，年度工作总结于年底前报送。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十六条综治委委员应当严格落实委员述职制度，每年就执行社会治安综合治理领导责任制、参与齐抓共管、指导本系统本单位开展社会治安综合治理工作等情况向同级综治委述职，述职采取全体会议述职或者送交书面述职报告等形式。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十七条下一级综治委应当于年底前向上一级综治委报告年度工作。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十八条各级党委、政府应当将社会治安综合治理纳入工作督促检查范围，适时组织开展督促检查。督促检查的形式主要包括专项督查、暗访督查、巡视督查、半年和年度督查等。督查工作可由各级综治委及其办公室组织实施。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">专项督查应当针对某一项工作进行督促检查；暗访督查应当力求真实、准确地反映基层工作情况和群众意见；巡视督查应当根据工作需要，由综治委委员对地方、部门一定时间内贯彻落实社会治安综合治理和平安建设工作部署情况进行巡视督查；半年、年度督查应当对各地各部门开展社会治安综合治理和平安建设工作整体情况进行督促检查，年度督查一般与年度社会治安综合治理和平安建设考核工作一并进行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第十九条各级党委、政府应当健全落实社会治安综合治理和平安建设考核评价机制，完善考核评价标准和指标体系，明确考核评价的内容、方法、程序。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十条每年年底之前，各级综治委对本地部门单位年度社会治安综合治理和平安建设工作进行全面考核评价，考核评价内容包括整体工作情况、目标责任书完成情况以及执行领导责任制情况等。考核结果分为优秀、合格、不合格三个等次。年度考核结果为优秀的部门、单位，其全体干部职工按工资供给渠道可增发一个月的全额工资。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">各级综治委应当及时向党委、政府报告考核评价情况，并在适当范围内通报。对考核中发现的问题，应当认真研究解决，抓好督促整改。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十一条各级党委、政府应当强化社会治安综合治理和平安建设考核评价结果运用，把社会治安综合治理和平安建设工作实绩作为对领导班子和领导干部综合考核评价的重要内容，作为领导干部业绩评定、年度考核、干部任用、奖励惩处的重要依据。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十二条各级综治委及其办公室应当建立健全领导干部社会治安综合治理工作实绩档案。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">建档对象包括下级党委、政府主要负责同志和分管负责同志以及本级综治委成员单位主要负责同志和分管负责同志。建档内容主要包括领导干部个人基本情况、年度内履行社会治安综合治理职责情况、本地本部门本单位及领导干部个人受社会治安综合治理和平安建设奖惩情况、社会治安综合治理和平安建设考核评价情况，并按优秀、合格、不合格确定档次。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十三条各级组织人事部门对党政主要领导干部和社会治安综合治理分管领导干部进行任职考察、办理晋职晋级和综合性奖励，须征求同级综治部门的意见，了解和掌握相关领导干部抓社会治安综合治理工作的情况。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十四条各级综治委应当定期不定期召开综治、纪检、组织、人事、监察五部门联席会议，对社会治安综合治理和平安建设考核情况以及评比表彰、查究有关影响社会治安和社会稳定重大问题等进行研究，督促社会治安综合治理领导责任制的落实，协同做好有关奖惩工作。根据会议需要，联席会议可以通知有关部门负责同志列席。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十五条各级综治委每年应当至少召开一次综治委全体会议或扩大会议，通报社会治安综合治理工作情况，安排部署重点工作，督导推动解决工作中存在的突出问题。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四章表彰奖励</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十六条对真抓实干、社会治安综合治理和平安建设工作成绩突出的地方、部门、单位和个人，应当按照有关规定给予表彰和嘉奖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十七条根据年度社会治安综合治理和平安建设工作考核结果，每年评选表彰一批全省平安建设工作先进单位和先进个人。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十八条省财政设立平安建设专项奖励经费，以奖代补，用于社会治安综合治理和平安建设基层基础建设。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第二十九条对受到表彰的全国社会治安综合治理优秀市、全国平安建设先进县(市、区)的党政主要负责同志、分管负责同志，综治委按照干部管理权限，可向同级组织、人事部门书面提出同等条件下优先提拔重用的建议。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十条各级综治委和组织、人事、财政部门要配合做好全省平安建设工作先进单位和先进个人的评选表彰奖励工作。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第五章责任督导和追究</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十一条党政领导班子、领导干部违反本办法或者未能正确履行本办法所列职责，有下列情形之一的，应当进行责任督导和追究：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)不重视社会治安综合治理和平安建设，工作机制不健全，工作措施不落实，本地本系统本单位基层基础工作薄弱的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)区域性治安秩序严重混乱或阶段性刑事治安案件多发的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)本地本系统本单位发生严重暴力恐怖犯罪案件、危害国家安全和社会政治稳定重大案事件、重大邪教类案事件，或在敏感时期、重大活动、重要目标安全保卫工作中发生影响安全稳定的重大事件的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(四)本地本系统本单位在较短时间内连续发生重大刑事案件、群体性事件、公共安全事件的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(五)本地本系统本单位发生特别重大刑事案件、群体性事件、公共安全事件的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(六)对群众反映强烈的突出公共安全问题、严重治安问题等，没有采取有效整治解决措施或出现反弹的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(七)本地本单位发生执法司法人员违法违纪重大案件，造成恶劣影响的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(八)本地本单位没有完成年度社会治安综合治理和平安建设工作目标，或年度社会治安综合治理和平安建设工作考核评价不合格、不达标的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(九)各级党委、政府及综治委认为需要查究的其他事项。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十二条对党政领导班子、领导干部进行责任督导和追究的方式包括：通报、约谈、挂牌督办、实施一票否决权制、引咎辞职、责令辞职、免职等。因违纪违法应当承担责任的，给予党纪政纪处分；构成犯罪的，依法追究刑事责任。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">县级以上综治委和有关部门按照职责权限负责实施责任督导和追究，并建立工作档案。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十三条对具有本办法第三十一条所列情形的地方、单位，需要通报的，由相应县级以上综治委办公室(以下简称综治办)核实并提出意见，报综治委批准后，通报下一级综治部门和本级综治委、平安建设工作领导小组各成员单位，必要时由综治委进行通报，督促其于两个月内进行整改。通报抄送有干部管理权限的党委或垂直管理系统的本级(或上一级)主管部门。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">被通报的地方、单位应当及时报告整改措施和整改效果。综治办对整改情况进行督导检查。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十四条对受到通报后仍未按期完成整改目标，或者具有本办法第三十一条所列情形且危害严重或者影响重大的地方、单位，经相应的上一级综治办核实并提出意见，报综治委批准后，由综治办主任对其党政主要领导干部、社会治安综合治理工作分管领导干部和负有责任的其他领导班子成员进行约谈，必要时由综治委主任、副主任约谈，也可根据实际情况会同有关部门负责同志进行约谈，帮助分析原因，督促其于三个月内进行整改。约谈情况通报下一级综治部门和本级综治委、平安建设工作领导小组各成员单位，抄送有干部管理权限的党委或垂直管理系统的本级(或上一级)主管部门。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">被约谈人所在地方党委、政府或单位党组(党委)应当在约谈后10个工作日内报告整改措施，并每月报告一次整改情况。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">地方、单位整改期满后可书面申请综治办检查验收。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十五条对受到约谈后仍未按期完成整改目标，或者具有本办法第三十一条所列情形且危害特别严重或者影响特别重大但尚不够实施一票否决权制的地方、单位，相应的上一级综治委应当及时组织调查组核实情况，对符合挂牌督办条件的，经综治、纪检、组织、人事、监察五部门联席会议研究提出意见后挂牌督办，并按照本办法第三十四条的规定进行约谈，督促其于六个月内进行整改。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">省综治办每年从公共安全、治安问题相对突出的县(市、区)中，确定若干作为挂牌督办的重点整治单位，加强监督管理。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">挂牌督办决定印发下一级综治部门和本级综治委、平安建设工作领导小组各成员单位，抄送纪检监察机关、组织人事部门、有干部管理权限的党委或垂直管理系统的本级(或上一级)主管部门。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">挂牌督办期间，取消该地方、单位评选综合性荣誉称号的资格和该地方、单位主要领导干部、主管领导干部、分管领导干部和相关责任人评先受奖、晋职晋级的资格。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">被挂牌督办的地方党委、政府或单位党组(党委)应当在收到挂牌督办决定后10个工作日内报告整改措施，对存在的问题专题研究、认真整改，每两个月报告一次整改情况。整改期满后可书面申请综治委检查验收。验收合格的解除挂牌督办。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十六条省辖市、省直单位收到省综治委对辖区县(市、区)或本系统单位的挂牌督办决定后，应当明确一名领导干部为责任人，定期进行明察暗访，跟踪督导，帮助被挂牌督办的地方、单位进行整改。必要时，可派出工作组对挂牌督办地方、单位进行检查督办。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">挂牌督办期满后，由所在省辖市综治委或省直有关单位先行检查验收，认为整改到位、符合解除条件的，向省综治委提出解除挂牌督办的书面申请，由省综治委组织检查验收，对验收合格的解除挂牌督办。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十七条对受到挂牌督办后仍未按期完成整改目标，或者有本办法第三十一条所列情形且危害特别严重或者影响特别重大的地方、单位，按照《中共河南省委办公厅、河南省人民政府办公厅关于印发〈河南省社会治安综合治理一票否决权制实施办法〉的通知》(豫办〔2009〕23号)有关规定处理。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十八条发现本办法第三十一条所列情形的，综治委、平安建设工作领导小组各成员单位应当向综治办书面反映，其他单位和个人可以向综治办书面反映。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第三十九条党政领导干部具有本办法第三十一条所列情形，按照有关规定应当采取引咎辞职、责令辞职、免职等方式问责的，由纪检监察机关、组织人事部门按照管理权限和程序办理。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四十条党政领导班子、领导干部具有本办法第三十一条所列情形，并具有下列情节之一的，应当从重进行责任督导和追究：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)干扰、阻碍调查和责任追究的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)弄虚作假、隐瞒事实真相、瞒报漏报重大情况的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)对检举人、控告人等打击报复的；(四)党内法规和国家法律法规规定的其他从重情节。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四十一条党政领导班子、领导干部具有本办法第三十四条所列情形，并具有下列情节之一的，可以从轻进行责任督导和追究：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(一)主动采取措施，有效避免损失、挽回影响的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(二)积极配合调查，并且主动承担责任的；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">(三)党内法规和国家法律法规规定的其他从轻情节。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第六章附则</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四十二条省辖市、省直管县(市)、省直单位可根据本办法，结合实际制定配套制度。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四十三条本办法由省委解释，具体工作由省委办公厅商省综治委承担。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">第四十四条本办法自发布之日起施行。《中共河南省委办公厅、河南省人民政府办公厅关于强化平安建设工作责任制的意见》(豫办〔2006〕16号)，《中共河南省委办公厅、河南省人民政府办公厅关于印发〈河南省平安建设工作领导责任制规定〉的通知》(豫办〔2010〕11号)同时废止。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 仿宋_GB2312; color: rgb(128, 128, 128); font-size: 10.5pt;\">　　中共河南省委办公厅2016年12月16日印发</span></p><p><br/></p>', '为深入推进社会治安综合治理，健全落实领导责任制，全面推进平安河南建设，确保人民安居乐业、社会安定有序', '239', '2', '/data/upload/2017-11-22/5a152932399de.jpg', '1', '', '', '1462538523', '50', '0', 'p,d', '', '0', '0', '1', '0', '1', '2', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('2', '中国共产党第十九次全国代表大会在京开幕', '高级企业网站', '2', '0', '十九大', '', '1', '河南省交通运输厅机关服务中心', '<p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-size: 12pt; list-style-images: none;\"><span style=\"padding: 0px; margin: 0px; list-style-type: none; text-indent: 2em; font-size: 12pt; list-style-images: none;\">新华社北京10月18日电 绘就伟大梦想新蓝图，开启伟大事业新时代。举世瞩目的中国共产党第十九次全国代表大会18日上午在人民大会堂开幕。</span></p><p style=\"text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); line-height: 35px; list-style-type: none; font-size: 12pt; list-style-images: none;\"><span style=\"padding: 0px; margin: 0px; list-style-type: none; color: rgb(0, 0, 255); list-style-images: none;\"><img alt=\"\" src=\"http://www.china1cn.com/uploads/allimg/171019/6-1G019102634b7.jpg\" style=\"padding: 0px; border-width: 1px; list-style-type: none; margin: 0px; border-style: solid; border-color: rgb(51, 51, 51); width: 600px; height: 461px;\"/></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); line-height: 35px; list-style-type: none; text-indent: 2em; font-size: 12pt; list-style-images: none;\"><span style=\"padding: 0px; margin: 0px; list-style-type: none; color: rgb(0, 0, 255); font-size: 12pt; list-style-images: none;\">10月18日，中国共产党第十九次全国代表大会在北京人民大会堂开幕。习近平代表第十八届中央委员会向大会作报告。<span style=\"padding: 0px; margin: 0px; list-style-type: none; font-size: 12pt; list-style-images: none;\">新华社记者 鞠鹏 摄</span></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; color: rgb(51, 51, 51); list-style-images: none;\">&nbsp;</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-size: 12pt; list-style-images: none;\">习近平代表第十八届中央委员会向大会作了题为《决胜全面建成小康社会 夺取新时代中国特色社会主义伟大胜利》的报告。习近平指出，中国共产党第十九次全国代表大会，是在全面建成小康社会决胜阶段、中国特色社会主义进入新时代的关键时期召开的一次十分重要的大会。大会的主题是：不忘初心，牢记使命，高举中国特色社会主义伟大旗帜，决胜全面建成小康社会，夺取新时代中国特色社会主义伟大胜利，为实现中华民族伟大复兴的中国梦不懈奋斗。</p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51); font-size: 12pt; list-style-images: none;\">人民大会堂雄伟庄严，万人大礼堂气氛热烈。主席台上方悬挂着“中国共产党第十九次全国代表大会”的会标，后幕正中是镰刀和锤头组成的党徽，10面鲜艳的红旗分列两侧。二楼和三楼眺台上分别悬挂着“不忘初心，牢记使命，高举中国特色社会主义伟大旗帜，决胜全面建成小康社会，夺取新时代中国特色社会主义伟大胜利，为实现中华民族伟大复兴的中国梦不懈奋斗！”“伟大、光荣、正确的中国共产党万岁！”的横幅。</p><p style=\"text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); line-height: 35px; list-style-type: none; font-size: 12pt; list-style-images: none;\"><span style=\"padding: 0px; margin: 0px; list-style-type: none; color: rgb(0, 0, 255); list-style-images: none;\"><img alt=\"\" src=\"http://www.china1cn.com/uploads/allimg/171019/6-1G019102G1b4.jpg\" style=\"padding: 0px; border-width: 1px; list-style-type: none; margin: 0px; border-style: solid; border-color: rgb(51, 51, 51); width: 600px; height: 333px;\"/></span></p><p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); line-height: 35px; list-style-type: none; text-indent: 2em; font-size: 12pt; list-style-images: none;\"><span style=\"padding: 0px; margin: 0px; list-style-type: none; color: rgb(0, 0, 255); font-size: 12pt; list-style-images: none;\">10月18日，中国共产党第十九次全国代表大会在北京人民大会堂开幕。这是习近平、李克强、张德江、俞正声、刘云山、王岐山、张高丽、江泽民、胡锦涛在主席台上。<span style=\"padding: 0px; margin: 0px; list-style-type: none; font-size: 12pt; list-style-images: none;\">新华社记者 兰红光 摄</span></span></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlynyk8_1xshv0zxq6ro584e81a33e4c1.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlynx0o_4a08d6h5uoow584e81a189780.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwlynupc_3sdacafv7o8w584e819e79b9b.jpg\" style=\"\"/></p><p><br/></p>', '中国共产党第十九次全国代表大会在京开幕', '204', '0', '/data/upload/2017-11-15/5a0b87ae73387.jpg', '2', '/data/upload/2016-05-06/572c8982020a4.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4faao_53auzeeb8z8c584ea76ca39e4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f9iw_252erwau32xw584ea76b44ca9.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f7zc_6inln0u3cj4s584ea769d1752.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f77k_k41mlxegj8g584ea76811f3e.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f5o0_4kqm510d9g8w584ea766930c9.jpg,', '', '1462536578', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('3', '南阳市委组织部调研组 莅淅调研基层党建工作', '志和第三方公司网站', '2', '0', '调研基层', '', '1', '河南省交通运输厅机关服务中心', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">市委组织部研究室主任王兵带领调研组到淅川县调研基层党建工作。调研组一行围绕党建信息平台建设、学校党建、企业党建、农村基层党建、农村集体经济建设、抓党建促脱贫攻坚等工作，实地考察了淅川县党建信息平台、电商服务中心、福森集团、金河镇彪池村、上集镇张营村、马蹬镇初中。淅川县委组织部副部长张福振陪同调研。</span></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwg8hdlk_5i1aayr4us08584938dfb0c52.jpg\" style=\"\"/></p><p><img src=\"http://ohjmksy46.bkt.clouddn.com/images/iwg8d7wo_6kxpx7xyptkw5849381dd37e6.jpg\" style=\"\"/></p><p><br/></p><p><br/></p>', '南阳市委组织部调研组 莅淅调研基层党建工作', '206', '0', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg', '1', '/data/upload/2016-05-06/572c89f8c6383.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4dee8_422efzz8fdog584ea7148261b.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ddmg_3hxo056be2gw584ea71370697.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4dcuo_5jtzj2havh4w584ea712b25fd.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4dc2w_25ar0eq96yw0584ea71144ff8.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_68ptyg9t8wco584ea710c8963.jpg,', '', '1462536696', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('4', '新野县：选强将 配尖兵 扎实做好第一书记轮换工作', '企业网站开发设计', '2', '0', '新野县', '', '1', '河南省交通运输厅机关服务中心', '<p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">近日，新野县坚持“选人标准提升、总体规模增加、联村扶贫单位不换”的原则选强将、配尖兵，扎实做好第一书记轮换工作。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">&nbsp; &nbsp; 抬高门槛。新选派的第一书记，必须是政治过硬、作风扎实、甘于奉献、有培养潜力的中层以上优秀后备干部，绝不允许降格以求、敷衍应付。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">&nbsp; &nbsp; 精准对接。选派农机、水利等农口单位骨干到缺技术村，选派金融系统骨干到缺资金村，选派发改、交通等单位骨干到基础设施薄弱村，做到有的放矢选派干部，因村定人、精准选派。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">&nbsp; &nbsp; 挽留强将。组织出面与在前段第一书记考评中发现的作风硬、能力强、实绩突出、群众口碑好的第一书记进行谈话，争取留下。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">&nbsp; &nbsp; 严格筛选。严把“素质关”“身体关”和“思想关”，对身体不适宜在基层的、缺乏为民情怀主观上不愿意扎根基层的干部，一律不予选派，真正把想干事、能干事、敢担当、善作为的优秀干部选出来，用起来。</span></p>', '新野县：选强将 配尖兵 扎实做好第一书记轮换工作', '210', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4aaig_hcedy3x46f4584ea6830f7b6.jpg', '1', '', '', '1462537144', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('5', '方城县：十九大精神进贫困村', '网站UI设计', '2', '0', '十九大精神', '', '1', '河南省交通运输厅机关服务中心', '<p><span style=\"padding: 0px; margin: 0px; font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">11月1日一大早，方城县小史店镇党委副书记邵玉民安排党政办通知机关中层以上干部8:30以前赶到东沟村党群服务中心门外广场集合参加党的十九大精神宣讲报告会。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(248, 253, 255);\"/><span style=\"padding: 0px; margin: 0px; font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">&nbsp; &nbsp; 东沟村位于方城县小史店镇西北部，辖16个自然村，22个村民小组，707户2600多人，是方城县委书记褚清黎分包的贫困村。如何让村里所有党员干部学懂弄通做实党的十九大精神？如何更好地发展产业加快脱贫攻坚奔小康步伐？如何消除人民群众对“三农”政策的疑虑？如何激励广大基层干部干事创业……这些问题一直牵动着褚清黎的心。<br/>听说县委书记要来村里宣讲十九大精神，东沟村一片沸腾。从上午8时许开始，部分党员干部和群众陆续来到村党群服务中心门外广场等候。方城县委书记褚清黎，县委常委、办公室主任侯磊，县人大常委会副主任余瑞平，县政府副县长马伟，县政协副主席沈林生，县检察院检察长李相峰和17个县直单位负责人、小史店镇机关中层以上干部、小史店镇各村党支部书记、东沟村“两委”班子及全体党员、东沟村驻村干部、部分群众共100多人参加。宣讲报告会由小史店镇党委书记李清波主持，东沟村、小史店镇、县交通局等单位代表分别发言，县委书记褚清黎作了宣讲报告。<br/><br/>&nbsp; &nbsp; 褚清黎着重从当前主要矛盾转化、实施乡村振兴战略等领域入手，紧密结合实际对贯彻落实党的十九大精神谈了认识。<br/><br/>&nbsp; &nbsp; 褚清黎指出，乡村振兴战略作为七大战略之一，是决胜全面建成小康社会、建设社会主义现代化强国的一项重大战略任务，是以习近平同志为核心的党中央对“三农”工作作出的一个新的战略部署、提出的一个新的要求，回应了百姓的呼声，反映了群众的心声，回答了农民的疑虑，消除了大家的担忧，解开了农村的困惑，对大家最关心、最直接、最现实的问题进行了一一解答。第一，大家最希冀的愿景是什么？就是十九大描绘的“人民日益增长的美好生活”图景。第二，大家最担心的问题是什么？就是“乡村振兴战略”如何定性“土地承包问题”。第三，大家最关心的问题是什么？就是“乡村振兴战略”将给哪些人群带来实惠。第四，大家最期盼的问题是什么？就是“乡村振兴战略”如何建设美丽乡村。第五，大家最困惑的问题是什么？就是“乡村振兴战略”实施后“地由谁种”的问题。第六，大家最动心的问题是什么？就是“乡村振兴战略”会给你的生活带来哪些变化。第七，大家最现实的问题是什么？就是有一个能够带领大家脱贫致富的好支部。</span></p>', '方城县：十九大精神进贫困村', '213', '2', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4a20w_5fwu72e5ltog584ea678aedfe.jpg', '1', '', '', '1462537217', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('6', '培训中心举办消防安全专题讲座', '', '5', '0', '消防安全', '', '1', '机关服务中心', '<p>7月27日上午，培训中心按照工作部署，举办一期消防安全专题讲座。培训中心班子对这次消防安全培训非常重视，安排全体职工参加并进行工作指导</p><p>&nbsp;</p><p>专题培训活动中，市消防支队的同志细致讲解了当前的消防形势，对各种消防设施的维护、保养和使用情况，对如何在各种复杂状况下应对险情，并与职工们进行了面对面的互动交流。活动提升了职工应对险情的信心，增强了消防安全意识及应急避险能力，并达到了预期的培训目的。</p><p>&nbsp;</p><p>培训中心主任张传丰结合本次培训活动以及目前高温天气、险情易发等客观现状，安排布置了下一步对消防工作的具体要求及注意事项。</p><p><br/></p>', '7月27日上午，培训中心按照工作部署，举办一期消防安全专题讲座。培训中心班子对这次消防安全培训非常重视，安排全体职工参加并进行工作指导', '202', '2', '/data/upload/2017-11-22/5a1527aa10b1f.jpg', '1', '', '', '1462537270', '50', '0', 'c,p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('7', '物业公司进行中秋节前安全大检查', '', '5', '0', 'YFCMF的二次开发', '', '1', '雨飞工作室', '<p><span style=\"color: rgb(128, 128, 128); font-family: 幼圆; text-indent: 32px; background-color: rgb(255, 255, 255);\">2016年9月12日至13日，物业公司对厅综合办公楼和西区交通大厦及家属区进行中秋节前安全大检查，物业公司组织消防、维修、保洁等部门负责人对厅消防、配电、电梯等设施设备进行安全检查，重点检查消防安全、设备设施安全、电动车充电安全等消防重点部位，检查出消防、设施设备隐患八处，已排除隐患七处，一处正在整改，确保中秋节日期间安全稳定。</span></p>', '2016年9月12日至13日，物业公司对厅综合办公楼和西区交通大厦及家属区进行中秋节前安全大检查', '200', '2', '/data/upload/2017-11-22/5a1528250bce6.jpg', '1', '', '', '1462537316', '50', '0', 'c,p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('8', '物业公司组织消防演练', '', '5', '0', '消防演练', '', '1', '机关服务中心', '<p>为了确保我厅综合办公楼的安全，10月14日下午，物业公司在厅机关院内东北角进行了消防演练。物业公司及餐饮公司员工参加消防演练，对发生火灾后处置初期火情、报警、人员疏散、灭火器的使用操作等常识进行了全面了解，并模拟起火点进行喷射。在灭火过程中，由专职消防员对实际操作出现的问题进行指导，使演练人员熟练掌握扑灭初期火情。</p><p>&nbsp;</p><p>通过此次消防演练，不仅提高了人员的安全意识和责任意识，并锻炼了他们的实际操作能力，确保了厅综合办公楼的安全与稳定。</p>', '为了确保我厅综合办公楼的安全，10月14日下午，物业公司在厅机关院内东北角进行了消防演练。', '204', '2', '/data/upload/2017-11-22/5a152883612e0.JPG', '1', '', '', '1462537365', '50', '0', 'c,p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('9', '忠孚公司组织车辆冬季检查', '', '5', '0', '冬季检查', '', '1', '机关服务中心', '<p>冬季来临，天气寒冷。为保障车辆行驶安全，做好为厅属单位和机关服务中心的用车服务保障，郑州忠孚会议有限公司结合“车场日”活动。11月11日上午，在公司董事长李晖的带领下，组织全体司务人员对车辆的水、电、油、暖风等各项进行逐一检查，并做好详细登记，对发现的问题及时处理解决。</p>', '冬季来临，天气寒冷。为保障车辆行驶安全，做好为厅属单位和机关服务中心的用车服务保障，郑州忠孚会议有限公司结合“车场日”活动', '216', '2', '/data/upload/2017-11-22/5a1528c7c9f6b.jpg', '1', '', '', '1462537410', '50', '0', 'c,p', '', '0', '0', '1', '0', '1', '2', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('11', '探讨企业经营理念设计', '', '15', '0', '企业经营', '', '1', '机关服务中心', '<p>一、企业的经营是品牌的经营</p><p>品牌经营是企业经营战略的王道。品牌是一个企业成功进行生产经营的重要标志，产品可模仿、管理可复制，惟有品牌文化不可复制，而无法复制的系统才能真正为企业创造竞争优势。</p><p>品牌经营是一种核心的信念，贯穿于整个企业之中，是形成企业文化的核心，是构成企业核心竞争力的一个基本要素。品牌的竞争力包含企业在资源、能力、技术、管理、营销、人力资源等方面的综合优势，是形成并实现企业可持续增长的动力源泉，是企业核心竞争力的外在表现。</p><p>二、企业的运作是资本的运营</p><p>公司运作，顾名思义，是指如何让一个公司运转起来，生产出商品，创造利润、建立品牌。资本运作，简单的说就是通过投资，让资本不断增值，给投资者带来投资回报。在很多情况下，这两者是密&nbsp; 切联系在一起的，两者呈现一种正相关性。从长期来看，良好的公司运作，会带来资本的不断增值，而良好的资本运作，会使公司运作更加规范与健康，两者的共同发展促进，带来经济的良性增长。资&nbsp; 本运营是在企业内部形成的以资本效率和收益为核心的、实现资本有效增值的一种经营方式。资本运营必须以核心能力为基础，只有二者结合起来，才能实现企业规模扩大和效益提高的同步运行。</p><p>三、企业的发展是资源的整合</p><p>企业资源整合是现代企业成长和扩张的重要途径，是在经济全球化过程中发展起来的一种新的企业组织方式。如并购、联盟、重组都是以资本为纽带的资源整合，企业的内部资源整合则以优化为主，是指针对现有资源，如何发挥它的功能最大化、最优化而言的。包括组织优化、改善公司治理结构、人员优化组合、市场资源优化组合等等。现代一些学者认为，所谓企业资源是指企业在向社会提供产品或服务的过程中所拥有、控制或可以利用的、能够帮助实现企业经营目标的各种生产要素的集合。其实可以从更加广泛的角度来理解企业资源——凡是能转化为支持、帮助和优势的一切物质和非物质都是企业资源。企业的资源可以分为外部资源和内部资源。企业的内部资源可分为：人力资源、财物力资源、信息资源、技术资源、管理资源、可控市场资源、内部环境资源；而企业的外部资源可分为：行业资源、产业资源、市场资源、外部环境资源。</p>', '品牌经营是企业经营战略的王道。品牌是一个企业成功进行生产经营的重要标志，产品可模仿、管理可复制，惟有品牌文化不可复制，而无法复制的系统才能真正为企业创造竞争优势。', '212', '4', '/data/upload/2017-11-22/5a1529dcf006d.jpg', '1', '', '', '1462539100', '50', '0', 'c,p', '', '0', '0', '1', '0', '1', '10', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('12', '对服务管理的探讨', '', '15', '0', '服务管理', '', '1', '机关服务中心', '<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">服务管理是伴随着服务而产生的，是目前管理界一个新的重要的研究领域。因服务具有无须性、同时并发性、异质性与易逝性等特性。开展服务管理的研究对于促进服务竞争社会的进步、提高企业的竞争能力具有重要的现实意义</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">本文就服务管理产生的背景和服务管理研究的重要成果及实际现状等加以浅析。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">一、服务管理产生的背景分析</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">20</span><span style=\";padding: 0px\">世纪</span><span style=\";padding: 0px\">60</span><span style=\";padding: 0px\">年代以后</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">服务业在社会经济中的地位与日俱增。一些发达国家的服务业占国民生产总值的比重超过</span><span style=\";padding: 0px\">60%,</span><span style=\";padding: 0px\">部分国家接近</span><span style=\";padding: 0px\">80%</span><span style=\";padding: 0px\">。改革开放以来</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">我国的服务业也得到了长足发展。服务业在国民经济中的比重已达到了</span><span style=\";padding: 0px\">30%,</span><span style=\";padding: 0px\">个别发达地区接近</span><span style=\";padding: 0px\">50%</span><span style=\";padding: 0px\">。由于“服务是过程而不是物件”</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">服务产出与实体产品存在本质差异</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">所以服务业的管理方法应当有别于制造业的管理方法。七十年代时</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">欧美的一些营销学者发现</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">基于实体产品的营销理论和方法不能适应服务业营销的客观情况。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\">二、“服务管理”研究的理论综述</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">从上世纪</span><span style=\";padding: 0px\">60</span><span style=\";padding: 0px\">年代开始到现在</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">服务管理已成为国内外管理界一个新的重要研究领域</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">并获得了丰硕的成果。对服务问题最早进行专门研究的是一些北欧的营销研究人员。他们根据营销活动中的服务、服务产出和服务传递过程的特性</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">进行了大量卓有成效的研究</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">提出了一系列新的模型、概念和工具</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">并把这些研究成果归类为“服务营销”。服务营销是指依靠服务质量来获取客户的良好评价，以口碑的方式吸引、维护和增进与客户的关系，从而达到营销的目的。在我国，对服务利润链的解析</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">服务的交互过程与交互质量、服务质量管理中的信息技术、服务业产品营销与制造业产品营销的比较及旅游业管理等热点与关键问题等都有所研究</span><span style=\";padding: 0px\">,</span><span style=\";padding: 0px\">并在理论和方法上取得了重大突破。</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">三、当前服务管理的现状及对策</span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";padding: 0px;font-family: 幼圆\"><span style=\";padding: 0px\">在国内市场国际化、国际市场一体化、竞争无边界化的今天，同质化现象异常严重，企业的服务管理应担当重要的角色，利用服务的差异化优势来获取竞争优势。但当前企业在服务及其管理过程中，存在一些问题，主要表现在：（</span><span style=\";padding: 0px\">1</span><span style=\";padding: 0px\">）概念模糊。在某些产品的广告与宣传单叶上，“三年质保、三年保修、三年包修”等不同词语让纵多消费者难以理解。（</span><span style=\";padding: 0px\">2</span><span style=\";padding: 0px\">）过度承诺。一些商家给客户的承诺纯粹属于信口开河，只要消费者能够提出来的就全部应承下来，但实际上，某些承诺商家根本不可能做到，比如三年、五年甚至更长时间的保修。过不了多久，可能当初的销售商已在市场上消失了。</span>&nbsp;<span style=\";padding: 0px\">（</span><span style=\";padding: 0px\">3</span><span style=\";padding: 0px\">）以偏概全。如当前电脑行业内绝大多数的商家都是一年上门服务，第二、三年客户送修的服务，主要部件三年保修、其他部件一年保修。个别商家根据产品的型号不同，推出了某个系列的电脑或某几款电脑实行三年上门政策，但在宣传上，却笼统地称为“全系列产品超值服务”，让消费者搞不清其具体的含义。</span>&nbsp;</span></p><p><br/></p>', '服务管理是伴随着服务而产生的，是目前管理界一个新的重要的研究领域。因服务具有无须性、同时并发性、异质性与易逝性等特性。', '346', '4', '/data/upload/2017-11-22/5a152a58c7560.png', '1', '', '', '1462539160', '50', '0', 'a,p', '', '0', '0', '1', '0', '1', '49', '{\"showdate\":1462464000}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('13', '浅谈企业管理者管理创新的7个层次', '', '15', '0', '企业管理', '', '1', '机关服务中心', '<p>这是一个自主创新的时代，也是一个跟风模仿的时代。这是一个微创新的时代，也是一个巨创新的时代。创新好像活力四射，创新似乎杂乱无章。中国管理到底有没有创新?</p><p>《经理人》总结最近一年来中国企业管理，包括商业模式、领导力、战略、组织、资本运作、营销、公司治理、全球化等8个领域的创新实践。我们发现，中国企业的管理创新，或先后，或同时历经7个不同的层次：扎根中国传统文化(儒道法墨)的土壤，中国管理从引进模仿起步，到微创新，到错位创新、越位创新、包容创新，再到巨创新，甚至已经开始世界前沿的塔尖式创新。我们称这七层为“塔式创新”。</p><p>第一层：模仿层</p><p>中国管理创新，始于引进与模仿，始于引进一些管理技术层面的东西。然而，生搬硬套，生吞活剥，并不能包治中国企业百病。无论企业规定了多么完善的规章制度，还是阻挡不住有的员工“盗窃”，于是还得回归搞孔学堂，教化员工向上向善。“中魂西制”，这是中国人民大学商学院王利平教授总结出的中国式管理之道—我们只能借鉴西方的一些能帮助企业提高效率的技术、工具、流程，但这些“制度”解决不了企业的根本问题，还必须依靠企业的价值意义系统，也就是“魂”来指引企业;“魂”则须来源于中国传统文化。中国管理创新的基础是中国管理传统文化—儒道法墨，所有的管理创新，无论道还是术，都离不开这一创新的“塔基”。</p><p>第二层：微创新</p><p>对大多数没有强大创新能力和强大资源实力的企业来说，模仿并不是最佳出路，因为模仿依葫芦画瓢，很难模仿到精髓。微创新可能是这类企业的最好出路。微创新，就是集中核心优势，从小处入手，单点突破，狙击单一小蓝海，满足客户最揪心的需求，做大公司可能不屑于做的事情。例如，快书包只卖少数畅销书，保证一小时到货，只做北上广三大城市的核心商务圈。李开复投资的点心网，只做Android的本地化，让本地用户有更流畅的使用体验。</p><p>第三层：错位创新</p><p>错位创新，又称逆向创新—我的打法跟你完全相反，你往东来，我却往西去，你说黑好，我说白靓，正如相反车道的跑车，尽管都在同一条公路上，但永远不可能碰头。</p><p>例如美特斯邦威，高举新国货营销旗帜，就是很好的错位创新思维。熟悉服装行业的都知道，不少服装企业明明是中国人运作的，却要去国际上注册洋名称和洋公司，声称是“意大利品牌”、“法国品牌”等等，迷惑消费者。美特斯邦威敏锐地发现，当今90后群体，已不再盲目崇洋媚外，因此，在市场普遍对国货失去信心的时候，喊出了“新国货”口号，推出新品牌MTEE，倡导“中国风格”。同样，当别的国际国内化妆品公司都在高呼国际元素的时候，上海家化反其道行之，来个中草药的中国元素，也属于错位创新的成功示范。</p><p>第四层：越位创新</p><p>越位创新的基本思维，就是要以跨公司、跨产业、跨产业链上下游的视角，分析和判断市场变化带来的商机。尤其是商业模式的创新，战略的创新，其边界往往大于单一公司、单一产业的边界，能越位到不同的行业，以整合的视角，创新出全新的商业模式和战略性蓝海。某上规模企业董事长心血来潮时，经常调侃几个副总裁：“你们几个大老总，进入行业时间比我长，行业经验比我丰富很多倍，到头来只能在我这个行业新兵手下打工，你们应该反思为什么”。能够以越位的视角，在产业的边界发现商机，是他的成功之处。</p><p>富士康盘活工业用地资源，利用商业地产做零售，与麦德龙合资成立万得城，开设IT卖场赛博数码;万达介入旅游;华谊兄弟介入网游;云南白药做白药牙膏，都属于越位创新思维的良好运用。越位创新的前提是，创新企业必须打造出一个坚实的核心业务，有团队和管理的坚实基础，有资本市场的支持;否则，擅自越位，就存在过度扩张、管控失效的风险。</p><p>第五层次：包容创新</p><p>企业越界创新发展，最终国内的产业容量，已经无法满足要求，必须进行全球化扩张。全球化发展，不同国家、地区、种族，其文化、发展程度、语言，都很不相同，企业必须跳出在中国本土形成的狭隘视野，实行多元文化下的包容创新。当然，包容创新，并不代表没有主线、核心，包容必须是“以我为主，包容并蓄。”</p><p>吉利通过一“国”两“制”、文化“统一”的实践，以包容创新式组织结构和组织文化，破解国际并购难题，并设立全球型企业文化研究中心，塑造吉利全球的、包容的企业文化。包容创新，不仅包括文化包容，也包括战略的协同。</p><p>在公司内部管理上，万科总裁郁亮领导力与追随力兼备，新东方从合伙制走向开放式权力结构和股权结构，都属于包容创新的典型。</p><p>第六层次：巨创新</p><p>巨创新，是指企业所实施的创造活动，对整个产业甚至人类历史，具有革命性意义，具有淘汰旧产业、形成新的规模产业的作用。人类历史上，蒸汽机、汽车、飞机、火车、航天器、互联网等等，都属于巨创新的范畴，遗憾的是，这些巨创新都没有发生在中国。</p><p>高层级的巨创新，需要一些伟大的发明家，在一些具实力财团或机构支持下，做出一些关键核心技术的创造和发明。这需要整个社会政治、经济制度环境的配套支持，包括人才培养、资本机制、创新制度等。</p><p>次高层级的巨创新，如苹果公司，围绕消费者未被满足的潜在需求—往往是基于人性的需求，开发高体验的解决方案。研究表明，过于强调团队的组织环境，不利于创新，而创新点子辈出的组织，往往都是个人英雄主义盛行，相互竞争大于合作的组织。当然，这种文化或将带来不稳定。</p><p>第七层次：塔尖创新</p><p>塔尖创新，是为了探索人类未来技术进步、管理进步而做的探索性创新。实验室里成千上万的尖端技术探索，管理思想家们长年扎根企业，试图发现推动人类生产力进步的种种管理因素、制度因素，都属于此类创新的范畴。这种塔尖式前沿研究，不再与短期的经营利润挂起钩来。从技术的层面，一旦探索成功，就很可能转化成为巨创新实践，如美国军方发明互联网，推动人类历史前进。又如西方理论家们提出的“创新”、“企业家精神”等等。</p><p>塔式创新的七个层次，正如马斯洛人类需求层次一样，有所区分，但又不可能截然分开，有时候可能混合共存，有时可能依次升级，有时也不会循序渐进，而有可能从第一层直接跨越进入了第三四五六七层中某一两层。七层次区分还很不完善，需要共同探讨。</p><p><br/></p>', '这是一个自主创新的时代，也是一个跟风模仿的时代。这是一个微创新的时代，也是一个巨创新的时代。创新好像活力四射，创新似乎杂乱无章。', '200', '0', '/data/upload/2017-11-22/5a152ac9aa80a.png', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4lbw0_3o5ivzzn33s4584ea8867634e.jpg,', '', '1462579633', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('14', '一些知名企业的经营理念', '', '15', '0', '企业经营', '', '1', '机关服务中心', '<p>企业管理是一门艺术。普通都包括人本管理，质量管理，财务管理和战略管理等四个方面。古代企业管理是以人为重心的管理，所有管理的好坏都是人所缔造、影响与确定的。世界上任何一家成功企业都把质量当成企业的生命线的。一个企业财务管理程度的上下确定了该企业的全体管理程度。运营战略是企业生活的基本，它是站在战略的高度以迷信的程序和方法来制定企业的久远开展大计。上面罗列少许企业来看看他们的运营管理理念是怎样的。</p><p>1.韩国三星电子：三星公司的经营理念是与员工共同成长，产品理念是让市场决定产品。质量理念是质量是三星人的尊严。服务理念是有开始的日子，没有终止的日子。细致、周到、尽显至善、至美。还从工作目标，精神，作风等十多歌角度来诠释三星公司的理念，该公司的CEO也说：经营的好坏在于用人，把企业当作自己的身体来看待。有如此人性化的理念才早就了三星今天在世界上不可忽视的地位。</p><p>2.海尔公司：海尔公司在实现向现代经营方式转变中,一个重要方面就是率先实施“先服务,后制造”的经营理念,把为消费者服务放到了市场营销的前位。海尔公司推出的“市场链”经营模式,就突出了“先服务”的重要经营思想。他们创出B2X定制产品,即企业对商家及企业对用户为特点的海尔“迷你”生产线,围绕消费者实行“你设计、我生产”,实现了企业瞬时转产,及时满足消费者的特殊需求,真正做到了产品的特殊设计由用户说了算,制造产品物有所值和物超所值。正是如此，海尔由来今天的成就。</p><p>3.花花公子公司:花花公子“服装、鞋类、皮具等系列产品在国际上享有万盛誉，在国内更受到广大群众特别是青年的喜爱。”花花公子“产品进入中国只短短五年，其知名度已遍及大、中、小城市，深入消费者心中，成为众多青年所追求的时髦商品。“花花公子”的经营理念是：永远由现在开始！意味着永远创新，永远流行，永远走在时代尖端。</p><p>4.TCL公司:TCL 提倡“以人为本”的理念，非常重视对人力资源的培养与挖掘工作，公司每年都要实施一项员工满意度的调查，以此来发现经营理念是否体现、针对人力资源的各项目标是否完成，以及听取员工各方面的反馈，为下一年度的经营管理提供决策依据。</p><p>5.sony公司：不拘泥于现有的技术、独立研究开发出前所未有、\"触动消费者心弦\"的产品、创造全新的市场与需求正是在这50年间取得巨大发展的动力 Sony诞生五十多年来，依旧秉承着井深--盛田式的经营理念，即通过独特的产品研发，为顾客创造新的娱乐生活方式。</p><p>6.麦当劳：麦当劳的黄金准则是顾客至上，顾客永远第一。提供服务的最高标准是质量（Quality）、服务（Service）、清洁（Clean）和价值（Value），即QSC＆V原则。这是最能体现麦当劳特色的重要原则。</p><p>7.迪斯尼公司：迪斯尼乐园已经形成了一种文化，她所提倡的“爱心、友谊、善良、真诚”，已经成为人们宝贵的精神财富。但是从经营的角度来说，如果迪斯尼不能在开发新卡通形象的同时，让原有的卡通人物跟随着时代的发展而发展，要造就迪斯尼乐园的百年辉煌可能将困难重重。</p><p>8.雀巢公司：无论何时何地，当人们看见母鸟喂小鸟的商标，就会联想到安全，责任，温暖，母爱，自然及家庭的意义。这就是雀巢经营理念缔造者给人们想要描绘的。雀巢公司的经营理念是“Good food，Good life”，亦即“通过提供优质的食品，为人类的健康生活作出贡献。”</p><p>9.耐克公司：耐克公司在仿效他人的同时，注重发展自己的个性，培育自主创新的能力。在重大体育竞赛中让运动员穿用带有公司标志的产品，不断使产品更新换代。运动员成为耐克推销员“一切为了运动员”的理念使大批运动员和体育爱好者聚集在耐克公司周围。耐克的成功来自于将自己的服务对象视为上帝，鞠躬尽瘁、一切为了运动员的企业理念。耐克对运动员的诚心奉献、对社会体育事业的诚心奉献同样也得到了无比热情的回报，那就是炫目的世界运动“鞋王”的桂冠。</p><p>10.奔驰公司：作为一个拥有百年历史的著名汽车品牌，奔驰已形成了一个核心企业精神：公平、尽责。“公平”是指公平竞争、公平经营。奔驰的经营理念：传统理念。快乐感理念：人们更进一步追求汽车外观优美、内部豪华、驾驶舒适，从而尽显自身价值。共同责任理念：奔驰将其作为自身的任务不断改进生产技术、降低污染的可能性、减少废气排放的数量、采用可多次循环使用的材料生产，以最大程度地保护环境</p><p>“索尼的先驱精神”，诺基亚“科技以人为本”，松下“造人先</p><p>于造物”，惠普之道，迪斯尼“想象力与魔力文化”</p><p>微软： 成功诀窍 = 人才 + 创新</p><p>管理 = 合适的时间 + 应做的事</p><p>惠普： 财富= 人才 = 资本 + 知识</p><p>飞利浦： 新产品 = 技术内涵 + 观念创新</p><p>清华同方： 发展战略 = 技术 + 资本</p><p>优秀经营思想 = 一分钟目标 + 一分钟赞美 + 一分钟惩罚</p><p>中美星捷联合发展中心： 决策 = 企业家的智能 + 健全透明的信息网络</p><p>万里石： 成功 = 机遇 + 超常思维 + 胆略</p><p>资华： 成功 = 随时找准市场空白</p><p>海信： 成功 = 向技术创新要市场</p><p>欧姆龙： 成功 = 阳刚之气 + 和蔼可亲</p><p>麦当劳： 企业的活力 = 原材料 ? 设备 ? 人力资源</p><p>人力资源 = 人数 ? 能力 ? 态度</p><p>东芝： 企业活力 = 智力 ? （毅力 + 体力 + 速度）</p><p><br/></p>', '企业管理是一门艺术。普通都包括人本管理，质量管理，财务管理和战略管理等四个方面。古代企业管理是以人为重心的管理，所有管理的好坏都是人所缔造、影响与确定的', '201', '0', '/data/upload/2017-11-22/5a152b21a157c.jpg', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4kyrs_190vi332wps0584ea87528308.jpg,', '', '1462580217', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('15', '企业经营管理注意事项', '', '15', '0', '企业经营', '', '1', '机关服务中心', '<p>大多企业，在初具规模时，想到的都是如何进行企业经营管理并快速发展，如何快速壮大。企业实现国际化、企业实现现代化、企业实现信息化、企业实现多元化、企业上市等等陈词，已成为他们的发展目标或手段。企业发展有远大的理想与目标，固然可喜可贺，然，一着不慎，全盘皆输。那么企业在经营管理中要注意哪些事项事项呢？</p><p>一、防止在企业经营管理战略上出现失误。</p><p>每个企业在发展过程中，或多或少都有自己的战略目标，企业的成功与否，取决于战略的成功与否。正确的战略，会促使企业的发展，而错误的战略，则很有可能导致企业的失败。从古至今，从洋到中，无不重视战略，《孙子兵法》始为“计”，三国争雄，成于“谋”；现代企业，古为今用，洋为中用，几乎百分之百的成功企业，都将“战略”放在第一位。</p><p>如何防止企业在经营战略上的失误</p><p>１、防止企业经营管理盲目多元化；</p><p>２、防止企业经营管理太单一化；</p><p>３、防止企业扩张过快，致使其他各方面跟不上企业的快速扩张需要。</p><p>二、 企业经营管理中防止资金出现危机</p><p>企业经营管理的失败，导火线都只有一条：企业资金跟不上企业发展需要，导致资金颈瓶。导致资金颈瓶现象的原因，则具有综合性，复杂性。三、 防止企业经营管理机制跟不上企业的发展</p><p>无论是国外的企业，还是中国的企业，尤其是中国的民营企业，一般都有两个过渡期：一为企业权力交接过渡期，一为企业发展过渡期。这两个过渡期，都是企业的敏感期与危险期。</p><p>四、 防止企业文化跟不上企业的发展，企业经营管理的最高境界是用文化来管理企业。</p><p>五、防止人才跟不上企业经营管理的发展</p><p>六、防止信息、技术跟不上时代发展的变化需要</p><p>七、防止企业经营管理在发展过程中不愿改变现状</p><p>八、 企业经营管理防止恶性竞争</p><p>九、 防止企业经营管理的内部失控&nbsp;</p><p>人员管理失控的典型例子举不胜举，主要体现在</p><p>１、子公司、分公司各自为阵，不服从总公司的领导；</p><p>２、员工对企业不负责任，没有忠诚度；</p><p>３、员工做一些违背社会道德的事情；</p><p>４、一些公司骨干辞职，要么自己开公司，进行同一产品的开发，同企业竞争，削弱公司势力；要么带着技术、市场到其他公司发展，严重削弱公司的竞争力；</p><p>５、企业内部关系复杂，将社会上的一些不良习气带入企业，阻碍着企业经营管理的正常发展；</p><p>６、企业老资格与新一代不能融洽等。</p><p>十、注重企业核心竞争力的培育。</p><p><br/></p>', '大多企业，在初具规模时，想到的都是如何进行企业经营管理并快速发展，如何快速壮大。企业实现国际化、企业实现现代化、企业实现信息化、企业实现多元化、企业上市等等陈词', '212', '0', '/data/upload/2017-11-22/5a152b7206111.png', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4kkvs_2b1htrd6pw2s584ea8634a1fd.jpg,', '', '1462580295', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('16', '上饶市信州区福海老年公寓荣获“全国文明单位”称号', '', '3', '0', '老年公寓', '', '1', '机关服务中心', '<p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helvetica, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 37px;text-align: justify\">按照从严把关、确保质量的原则，经过严格评审，在11月17日的全国精神文明建设表彰大会上，中央文明委授予一批精神文明和思想道德建设先进典型荣誉称号，上饶市信州区福海老年公寓被授予第五届“全国文明单位”称号。</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helvetica, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 37px;text-align: justify\">据悉，上饶市信州区福海老年公寓是信州区至今为止唯一荣获“全国文明单位”称号的单位；是江西省社会组织唯一荣获“全国文明单位”称号的单位；是全国注册的1.8万多个公民办养老机构首次荣获“全国文明单位”四家之一。</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helvetica, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 37px;text-align: justify\">上饶市信州区福海老年公寓自2008年3月成立以来，高度重视社会主义精神文明建设，一步一个脚印、一步一个台阶，从创建信州区文明窗口开始，先后被授予“信州区文明窗口”、“上饶市文明单位”，“江西省首届敬老文明号”、十二届、十三届、十四届“省文明单位”、“全国首届敬老志愿服务模范单位”、“全国首届敬老文明号”、“全国敬老模范单位”，“第五届全国文明单位”。</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helvetica, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 37px;text-align: justify\">上饶市信州区福海老年公寓以创先争优为契机，把每一项荣誉作为动力，作为新的起点，自我加压。先后获全国性荣誉15项，省级荣誉8项。近三年来连续获全国性大奖：2015年11月被授予“中国老年宜居环境建设先进单位”称号，2015年12月被民政部授予“全国先进社会组织”称号，2016年7月1日被中共中央授予“全国先进基层党组织”称号（全国养老机构中唯一），2017年1月被民政部授予“全国民政标准化示范单位”，2017年11月被中央文明委授予“全国文明单位”称号。2017年11月，民政部<strong>主</strong><strong>办</strong>的《中国社会》杂志2017年第21期以《一家民办养老机构为何屡获全国性荣誉？》一文报道了公寓开办九年多来以“创先争优”为载体，不断提升公寓的品质，不断上台阶，多项工作走到了全国先进行列，为老人提供亲情化服务、标准化质量、精准化护理，让老人晚年生活更幸福，成为老人、子女、社会“三满意”的老年公寓。</p><p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helvetica, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);text-indent: 37px;text-align: justify\">福海老年公寓决心按照中央文明委的要求，在以习近平同志为核心的党中央坚强领导下，不忘初心、牢记使命，珍惜荣誉、再接再厉，发挥榜样表率作用，认真学习贯彻党的十九大精神，认真学习贯彻习近平新时代中国特色社会主义思想，坚持培育和践行社会主义核心价值观，不断加强社会主义精神文明建设，持续深化群众性精神文明创建活动，着力提高人民思想觉悟、道德水准、文明素养和文明程度，为决胜全面建成小康社会、夺取新时代中国特色社会主义伟大胜利、实现中华民族伟大复兴的中国梦作出更大贡献。</p><p><br/></p>', '按照从严把关、确保质量的原则，经过严格评审，在11月17日的全国精神文明建设表彰大会上，中央文明委授予一批精神文明和思想道德建设先进典型荣誉称号', '200', '0', '/data/upload/2017-11-22/5a152c40d815f.png', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4k4og_4ziykz4obusk584ea84ea03fa.jpg,', '', '1462580360', '33', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('17', '天津东方养生堂 | 趣味生活 乐享人生', '', '3', '0', '养生堂', '', '1', '机关服务中心', '<p>为展现天津东方养生堂 “优享生活、颐养东方”享老俱乐部形式的专业化服务，为丰富老年人的精神文化生活，展现老年风采，天津东方养生堂开展了一系列趣味性活动，跟着小编的脚步一起来看看吧！</p><p><br/></p><p>01</p><p>书法班</p><p><br/></p><p>不少医学家认为，书法与气功有着密切的内在联系，书法也能起到促进身心健康，使人精力充沛，益寿延年的作用。书法好似大都市中的一派田园风光，自然、质朴、宁静，给人无限的美好空间。</p><p><br/></p><p>02</p><p>早课班</p><p><br/></p><p>练习八段锦有强身健体的作用，它能起到调节神经体液和加强血液循环的作用，对腹腔脏器有柔和的按摩作用，对神经系统、心血管系统、消化系统、呼吸系统及运动器官都有良好的调节作用，是一种较好的体育运动。</p><p><br/></p><p><br/></p><p>我们早课的队伍越来壮大了</p><p><br/></p><p>03</p><p>DIY趣味手工班</p><p><br/></p><p>体验乐趣，浓缩感情：艺术品全手工制作，每件都是独一无二，同时凭个人的灵感及意念可随意创造造型、花色等，在制作中不仅让你体验无限的乐趣，还能增加手眼协调能力和手指灵活性。</p><p><br/></p><p>04</p><p><br/></p><p>健康知识讲堂</p><p><br/></p><p>通过举办健康知识讲座，让老人了解了基本疾病常识和养生保健知识，提高老人的预防疾病能力和健康知识知晓程度，有力的增强了他们的健康意识。</p><p><br/></p><p>入住的长辈们纷纷表示，通过专家的讲解，懂得了许多健康知识，对保持身体健康起到了很大的帮助，希望东方养生堂一直延续举办健康知识讲座，以及开展有益身心健康而又丰富的兴趣活动。</p><p><br/></p>', '为展现天津东方养生堂 “优享生活、颐养东方”享老俱乐部形式的专业化服务，为丰富老年人的精神文化生活，展现老年风采，天津东方养生堂开展了一系列趣味性活动，跟着小编的脚步一起来看看吧！', '200', '0', '/data/upload/2017-11-22/5a152cbef2f59.jpeg', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4jle0_6pcvxqfazx0c584ea835d770b.jpg,', '', '1462580412', '11', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('18', '北京民政局领导一行赴燕达考察调研', '', '3', '0', '民政局', '', '1', '机关服务中心', '<p>2017年11月14日，北京市民政局副局长李红兵率队赴燕达国际健康城实地调研，燕达国际健康城董事长李怀、燕达国际健康城副总裁李海燕、燕达金色年华健康养护中心总经理周素娟及常务副总经理崔凯等陪同调研。</p><p>参观过程中，李怀董事长向李副局长介绍了燕达国际健康城的设施规划建设及运营情况，并针对燕达模式“医养结合”进行详细阐述，重点展示了养护中心二期项目的在建进度。李怀董事长还透露，正在建设的养护中心二期，将着重建设远程医疗健康中心等功能板块，主要以养老智能化为主，加快推动互联网与养老行业、大健康产业融合创新发展。</p><p>&nbsp;</p><p>北京市民政局副局长李红兵在参观结束后对燕达养老项目予以高度评价，并鼓励燕达养老项目在原有基础上不断创新服务，继续践行“医养结合”模式，发挥自身示范作用，使更多的京津冀老年群体从中受益。</p><p>&nbsp;</p><p>根据京津冀协调发展规划，北京市不再新建大型养老机构，而将支持在北京周边地区建设具备医院、护理院、养老院功能的“养老社区”。近年来，津冀密集发力环京养老圈，河北、天津内多城市都接连打造了不少针对北京老人出京养老需求的养老机构。而北京老人到天津、河北等地异地养老已悄然成为一种新趋势。</p><p>&nbsp; &nbsp; 在这样的背景下，燕达养老项目凭借特有的“医养结合”模式、离北京近的优越区位条件，被选为京津冀养老试点单位，享受京津冀相关政策支持，吸收三地尤其是北京地区的医疗健康资源，使养护中心在住老人得以享受与北京同质化的医疗健康服务。</p><p>&nbsp; &nbsp; 除此之外，养护中心于2017年6月收到了2016年度第四季度北京市养老机构运营补贴，并顺利发放至养护中心在住京籍老人手中，与补贴正式落地同时，在京冀相关部门的有效推动下，北京通-养老助残卡首次跨区域在养护中心使用，是京津冀养老协同发展带来的系列政策利好的具体体现。</p><p><br/></p>', '北京市民政局副局长李红兵率队赴燕达国际健康城实地调研，燕达国际健康城董事长李怀、燕达国际健康城副总裁李海燕', '201', '0', '/data/upload/2017-11-22/5a152d54ac6a7.jpg', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4j7i0_3the3kt5h44k584ea8237ab84.jpg,', '', '1462580465', '50', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('19', '世间万物，唯有爱与美食不可辜负！', '', '3', '0', '美食', '', '1', '机关服务中心', '<p>食物，唯有真心与用心烹制，才有齿间留香的余味，</p><p>冬天已经悄悄来临，一起来看看我们老人的日常饮食.</p><p><br/></p><p>（红枣鸡蛋羹）有营养胃肠,保护胃肠的功效,还可以开胃口 治胃疼呢!</p><p>早、中、晚餐，我们的食谱每天都是不一样的，尽量满足老人身体的营养需求，合理膳食，健康搭配。</p><p><br/></p><p>（葱花饼）它并不惊艳，它朴实无常，确有着它独特的香味以及营养！看起来都想吃~</p><p><br/></p><p>（最美不过饺子）有种家的感觉......</p><p>生活是一件严肃且慵懒的事情。食物，滋养着我们的心肝脾肺；它是什么样的，我们就是什么样的。&nbsp;</p><p>唯有美食与爱，不可辜负。</p><p><br/></p>', '食物，唯有真心与用心烹制，才有齿间留香的余味， 冬天已经悄悄来临，一起来看看我们老人的日常饮食.', '205', '0', '/data/upload/2017-11-22/5a152d9c369b7.png', '1', 'http://ohjmksy46.bkt.clouddn.com/images/iwm4is2g_48842mspe6o584ea80f03c64.jpg,', '', '1462580522', '45', '0', 'p', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1462550400}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('20', '五彩秋天 大美中原', '', '3', null, '中原', '', '1', '河南交通运输', '<p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"330\" src=\"/data/upload/2017-11-15/5a0c33f518a8b.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">商城金刚台秋意浓</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"343\" src=\"/data/upload/2017-11-15/5a0c33f563f12.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">豫西山区柿子红</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"306\" src=\"/data/upload/2017-11-15/5a0c33f58ed6e.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">宜阳花果山色彩斑斓</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"650\" height=\"224\" src=\"/data/upload/2017-11-15/5a0c33f5bcb86.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">辉县秋叶映山红</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"366\" src=\"/data/upload/2017-11-15/5a0c33f60b84f.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">菊韵开封</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"373\" src=\"/data/upload/2017-11-15/5a0c33f63beed.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">许昌“彩菊”展笑脸</span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"359\" src=\"/data/upload/2017-11-15/5a0c33f672ee8.jpg\"/></span></p><p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\">秋染太行小山村</span></p><p><br/></p>', '五彩秋天 大美中原', '204', '0', '', '1', '', '', '1510749175', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('21', '李小鹏部长来豫调研 部省合力久久为功为经济社会发展当好先行', '', '1', null, '李小鹏', '', '1', '河南交通', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">5月22日至23日，交通运输部部长李小鹏到河南省开封市兰考县和郑州市，就河南交通运输供给侧结构性改革、“四好农村路”以及自贸区建设等工作开展调研和座谈，李小鹏在调研时强调，要深入贯彻落实习近平总书记系列重要讲话特别是关于交通运输发展的重要指示批示精神，坚持稳中求进工作总基调，牢固树立新发展理念，不断完善综合交通运输体制机制，深化交通运输供给侧结构性改革，加快“四好农村路”建设，大力发展多式联运，坚决打赢交通扶贫脱贫攻坚战，部省合力，久久为功，推进交通运输为地方经济社会发展当好先行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">5月22日，李小鹏部长在开封市兰考县固阳镇现场考察了产业园区物流中心，了解了通村公路支撑当地特色产业发展的情况；在谷营镇姚寨村调研了“四好农村路”建设和黄河滩区居民迁建安置村通路、通邮、通班车情况，实地察看了中国邮政集团公司邮乐购网点的邮政服务和网购有关情况。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">在随后召开的交通运输助力兰考科学发展座谈会上，李小鹏部长充分肯定了交通扶贫在兰考脱贫中作出的积极贡献。他指出，兰考率先脱贫在全国具有重大示范效应和里程碑意义，交通运输在兰考打赢脱贫攻坚战中发挥了重要的先行引领和支撑、保障作用。这是以习近平同志为核心的党中央正确决策、坚强领导的结果，也是河南省委、省政府大力支持和兰考全县人民共同努力奋斗的结果。李小鹏部长强调，一是要充分肯定交通扶贫在兰考脱贫当中做出的积极贡献，进一步坚定信心，认真总结经验，为全国交通扶贫脱贫提供可以复制和推广的样板，坚决打赢交通扶贫脱贫攻坚战。二是要以习近平总书记重要指示精神为指引，以钉钉子的精神，坚持改革创新，坚持协调发展，坚持久久为功，努力把兰考建设成“四好农村路”全国示范县。三是要进一步加大力度，省部合力，推动兰考交通运输进一步发展，充分发挥交通运输服务人民、服务大局、服务基层的作用，为兰考科学发展、稳定奔小康当好先行。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">5月22日晚，河南省委书记谢伏瞻、省长陈润儿会见了李小鹏部长一行，对李小鹏部长来豫调研表示欢迎，对交通运输部一直以来给予河南经济社会发展的支持表示感谢。双方就推进河南交通运输改革发展交换了意见，共同签署了加快河南交通运输发展部省合作协议。根据协议，交通运输部和河南省将通过省部合作，以完善综合交通基础设施网络、打赢交通扶贫脱贫攻坚战、提升交通运输行业治理能力为重点，共同推进河南省综合交通运输体系建设，着力落实交通建设有效投资、着力扩大运输服务有效供给、着力降低物流成本、着力培育新的发展动能，为中部崛起、中原更加出彩提供支撑，到2020年基本建成安全、便捷、绿色、高效的现代综合交通运输体系，更好发挥交通运输“先行官”作用，为河南省全面建成小康社会提供坚实的交通运输保障。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">5月23日，李小鹏部长调研了河南交通运输厅联网监控中心，在河南机场集团西货站考察了陆空联运、“卡车航班”等情况，在郑州国际陆港公司调研了中欧班列运行情况，在保税物流中心察看了职能分拨、分拣中心以及第三方物流信息中心建设情况，在郑州客运东站了解了公路联网售票、安全管理，以及多种客运方式换乘情况。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">李小鹏部长对河南发挥区位优势、构建现代立体交通体系和现代物流体系的经验做法表示肯定。他强调，要以习近平总书记重要指示批示精神为指引，抓住交通运输发展的黄金时期，坚持改革创新，坚持协调发展，积极推进降成本、补短板、强服务，加大固定资产投资力度，创新投融资体制机制，着力推进“交通运输+特色产业”发展，着力推进城乡交通一体化发展，着力推进综合交通运输体系建设，部省共同努力，为实现全面建成小康社会目标提供有力支撑。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">陈润儿省长一同调研了河南自贸区郑州国际陆港公司和保税物流中心，省委秘书长穆为民、副省长徐光，部机关有关司局和交通运输部门及有关市（县）负责同志参加相关调研和座谈。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">调研期间，李小鹏还在兰考县瞻仰了焦裕禄烈士纪念碑，参观了焦裕禄同志纪念馆。（厅办公室）</span></p><p><img border=\"0\" alt=\"\" src=\"/data/upload/2017-11-15/5a0c426e7d7e7.jpg\" align=\"center\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: none; max-width: 923px; text-align: center; text-indent: 0em;\"/></p><p><img border=\"0\" alt=\"\" src=\"/data/upload/2017-11-15/5a0c426e9d6ff.jpg\" align=\"center\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: none; max-width: 923px; text-align: center; text-indent: 0em;\"/></p><p><img border=\"0\" alt=\"\" src=\"/data/upload/2017-11-15/5a0c426ec707c.jpg\" align=\"center\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: none; max-width: 923px; text-align: center; text-indent: 0em;\"/></p><p><br/></p>', '交通运输部部长李小鹏到河南省开封市兰考县和郑州市，就河南交通运输供给侧结构性改革、“四好农村路”以及自贸区建设等工作开展调研和座谈', '200', '0', '', '1', '', '', '1510752881', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('22', '周口市加快推进阳新高速周口段项目建设', '', '1', null, '阳新高速', '', '1', ' 河南交通', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">11月9日，周口市政府召开会议，安排部署阳新高速周口段勘测定界、附着物清点和土地组卷报批等工作，周口市政府副市长路云出席会议。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">路云副市长强调，一是要提高认识，高度重视，迅速行动，立即启动阳新高速周口段的勘测定界、土地组卷报批等工作，为项目顺利开工奠定基础。二是要明确职责，明确节点，集中人力、物力、财力首先完成勘测定界、附着物清点和土地组卷报批工作，重中之重是加快完成阳新高速公路与郸淮一级公路互通立交开工点先行用地手续上报，确保今年12月20日前顺利开工。三是要强化措施，落实责任。各单位、各部门要按照职责分工，履职尽责，密切配合，快字当头，急事急办，特事特办，开辟绿色通道，全力支持阳新高速项目建设；郸城县、沈丘县要强化组织领导，加强对沿线群众的宣传动员；市指挥部要按照时间节点，加强督导检查，确保工程顺利推进，按时完成各项既定目标任务。（周口市交通运输局）</span></p><p><br/></p>', '周口市政府召开会议，安排部署阳新高速周口段勘测定界、附着物清点和土地组卷报批等工作，周口市政府副市长路云出席会议。', '200', '0', '', '1', '', '', '1510752936', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('23', '三门峡市交通运输局被授予“助力脱贫攻坚先进基层党组织”', '', '1', null, '三门峡市交通运输局', '', '1', '三门峡市交通运输局', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">近日，三门峡市交通运输局党委被中共三门峡市委组织部、中共三门峡市委市直工委、三门峡市扶贫开发办公室授予“助力脱贫攻坚先进基层党组织”。</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 三门峡市陕州区宫前乡西坡村是三门峡市交通运输局定点扶贫的省级贫困村，全村102户285人，其中建档立卡贫困户68户168人，贫困发生率为58.9%。自结对帮扶工作开展以来，三门峡市交通运输局党委认真贯彻中央、省、市关于脱贫攻坚的一系列决策部署和各项重大举措，严格按照“帮扶对象准、帮扶任务明、帮扶责任清、帮扶措施实、帮扶效果好”的全员帮扶模式，精心选配驻村帮扶队员，加强党员教育，开展党员活动，引导该村农村党员干部群众积极协助“识真贫”，主动配合“真扶贫”，全力助推“扶真贫”，确保实现了扶贫工作抓得准，帮扶工作做得实的良好效果。</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 一是加强学习教育，锤炼党员素质。成立了由局党委主要负责人任组长的交通运输扶贫攻坚领导小组，研究制定全市交通运输扶贫工作规划，统筹协调扶贫工作重大难题，认真做好驻村帮扶工作。二是聚焦脱贫攻坚，深入调查研究。局机关27名党员干部深入西坡村，与该村68户贫困户一对一结对帮扶，与村“三委”一道共同制定了《精准扶贫实施方案》、《脱贫规划》，做到了目标明确、任务明确、责任明确、措施明确。三是抓好项目龙头，促进增收脱贫。结合该村实际，充分发挥交通脱贫攻坚的行业优势，协调项目资金115万元，为西坡村改造道路6.65公里，修建敬老院1座，建造饮用水井一口；积极引导、鼓励贫困户发展短期增收项目。四是情系贫困群众，着力改善民生。每逢春节等重要节日，局领导班子和机关党员干部向结对帮扶群众送去大米、食用油、慰问品和慰问金，把关爱和温暖送到了贫困户的心坎上，切实解决了贫困户的实际困难和生活问题，让困难群众切实感受到党和政府的关心和温暖。2017年夏天，西坡村遭受冰雹灾害，市交通运输局党委积极动员党员干部捐资购买种子、化肥，和群众一起开展生产自救，风雨同舟、同甘共苦，让人民群众充分感受到党时刻在自己身边，党时刻关心人民群众。(三门峡市交通运输局）</span></p>', '三门峡市交通运输局党委被中共三门峡市委组织部、中共三门峡市委市直工委、三门峡市扶贫开发办公室授予“助力脱贫攻坚先进基层党组织”', '204', '0', '', '1', '', '', '1510752976', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('24', '全国多式联运现场推进会在郑州召开', '', '1', null, '全国多式联运现场', '', '1', '厅办公室', '<p style=\"text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">11月10日至11日，全国多式联运现场推进会在河南郑州召开。此次会议由交通运输部和国家铁路局、中国民航局、国家邮政局、中国铁路总公司共同主办，河南省交通运输厅承办。河南省人民政府省长陈润儿出席并致辞，交通运输部副部长刘小明出席会议并强调，要深入学习贯彻落实党的十九大精神，以习近平新时代中国特色社会主义思想为指引，着眼于增强国民经济竞争力，以供给侧结构性改革为主线，以提升多式联运服务品质、促进物流降本增效为核心，着力促进基础设施无缝化衔接、运输装备标准化升级、信息资源交互化共享、市场主体多元化培育、联运模式多样化创新，加快构建便捷经济、安全可靠、集约高效、绿色低碳的多式联运体系，为建设交通强国作出积极贡献，为社会主义现代化强国建设提供有力支撑。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">陈润儿省长指出，此次会议在河南举办，为河南提供了难得的学习和交流机会，河南将认真借鉴兄弟省市的先进经验，紧紧围绕河南自贸试验区的战略定位，以制度创新为核心、以复制推广为目标、以多式联运为抓手，促进铁、公、空、水多种运输方式无缝衔接、信息共享、互联互通，建设网络联通内外、运转顺畅高效、标准衔接协同、支撑保障有力的现代立体交通体系和现代物流体系，努力把河南打造成为多式联运国际物流中心。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">刘小明副部长充分肯定了近年来多式联运发展取得积极成效。同时指出我国多式联运发展还处于初级阶段，存在着思想认识不到位、基础设施衔接不畅、技术装备水平落后、信息服务能力不足等问题，希望全国各有关部门准确把握多式联运发展面临的新形势，围绕实施交通强国战略、推进物流降本增效、促进绿色低碳发展、支撑现代供应链体系等要求，加快补齐多式联运发展短板，着力提高服务水平，不断拓展服务链条，加快多式联运发展新旧动能转换，为支撑现代化强国建设、提升经济竞争力、深化供给侧结构性改革提供支撑。一是要深入学习贯彻落实党的十九大精神，以新的思维、新的视野、新的理念，系统谋划多式联运工作。二是要加快通道与枢纽站场建设，完善枢纽站场集疏运体系，不断提升多式联运基础设施水平。三是要大力推进标准化建设，发展专业化装备，推进装备技术升级。四是要加快培育多式联运经营主体，推进联运组织模式创新，激发市场主体活力。五是要强化政策法规支持，进一步优化多式联运发展市场环境。六是要加强统计监测分析，强化人才队伍、信用体系建设，不断夯实发展基础。七是要推进信息资源互联共享，进一步完善部门间、企业间的协同工作机制。八是要强化多式联运工作组织领导，进一步发展凝聚共识。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">徐光副省长在总结会上强调，要认真贯彻落实本次会议精神，密切结合河南实际，进一步加快多式联运基础设施建设，开展重大关键技术研发，切实做好3个国家多式联运示范工程项目建设，扎实开展20个省级多式联运示范工程创建，争取在多式联运制度体系、标准规范、平台建设、信息交互等方面实现新突破，为全国多式联运发展作出新贡献。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">会上发布了第二批多式联运示范工程名单，天津港中蒙俄经济走廊多式联运示范工程等30个项目入选。河南省交通运输厅、湖北省交通运输厅、成都铁路局、青岛港集团、重庆港务物流集团、顺丰速运公司6家单位作了典型经验介绍。会议期间，与会代表调研了郑州铁路集装箱中心站、新郑机场西货站和河南保税物流中心，现场观摩了公铁驮背运输、商品车公铁联运、陆空联运带板运输换装等生产作业，考察了多式联运数据交易服务、国际多式联运“单一窗口”和“一单制”的业务流程。与会代表还就实际发展中关心的设施装备、标准规范、服务模式等问题进行了座谈交流。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-family: 宋体; font-size: 14px;\">河南省政府徐光副省长全程出席会议。国家铁路局副局长苏全利、中国民航局副局长王志清、国家邮政局副局长赵晓光、中国铁路总公司副总经理李文新出席会议并讲话。各省（区、市）交通运输厅（局、委）及计划单列市交通运输主管部门和部机关有关司局、部属科研单位代表，部分铁路、民航、邮政系统地方管理部门、科研机构代表，多式联运经营企业代表参加会议。国家发展改革委、海关总署、质检总局等部门代表出席会议。(厅办公室）</span></p><p><br/></p>', '天津港中蒙俄经济走廊多式联运示范工程等30个项目入选。河南省交通运输厅、湖北省交通运输厅、成都铁路局、青岛港集团、重庆港务物流集团、顺丰速运公司6家单位作了典型经验介绍', '204', '0', '', '1', '', '', '1510753022', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('25', '郑州市2017年农村公路交通情况比重调查工作圆满完成', '', '1', null, '农村公路交通', '', '1', '郑州市交通运输委', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为认真做好全市范围内农村公路交通情况比重调查工作，全面了解新规划后郑州市农村公路中县、乡道上的交通流量情况，郑州市地方公路管理处于2017年11月7日7时起至23时止在全市范围内开展了一年一度的农村公路一次性交通情况比重调查工作。此次交调全市共设立38个观测点，共观测583.585公里县乡公路。其中：县道30个、490.116公里，乡道8个、93.469公里。此次交通情况调查工作中，各县（市）、区严格按照要求认真选择场所，合理设置观测点。经过17个小时的共同努力，38个观测点的交通流量调查工作圆满完成。此次交调不仅使我市更好地掌握了农村公路各路段的交通出行分布情况，也为下一步规划、养护、管理县乡公路提供了科学、真实的基础资料。(郑州市交通运输委）</span></p>', '为认真做好全市范围内农村公路交通情况比重调查工作，全面了解新规划后郑州市农村公路中县、乡道上的交通流量情况', '202', '0', '', '1', '', '', '1510753058', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('26', '济源市人大常委会主任李军星一行对交通基础设施建设项目进行实地查看', '', '1', null, '李军星', '', '1', '济源市交通运输局', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">11月8日，济源市人大常委会主任李军星带领部分常委会组成人员，深入交通工程一线，对济源市2017年度交通基础设施建设项目进行实地察看。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">李军星一行先后察看了温邵线堽头至李八庄段一级公路改建工程、沿太行高速西延项目、济阳高速公路、济源至洛阳西高速公路、邵吉线寺郎腰大修工程、克留线栲栳至花石道路改建项目、卫柿线济源境一级公路改建工程</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">在结束实地察看后，李军星指出，济源市今年交通项目多，工地多，推进快、效果好，与交通运输局坚强有力的组织领导、合理分工的人员摆布、务实重干的工作作风密不可分，与相关镇办、相关业务部门的积极配合、通力协作密不可分，各单位各部门要持续发扬成绩，为济源交通事业的跨越发展继续贡献力量。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">对下一步交通运输工作，李军星提出了三点具体要求，一是要借助十九大的东风，进一步增强交通先行意识。济源大发展，交通要先行。交通部门要规划好，谋划好、储备好更多交通项目。二是要围绕产城融合、城乡一体、全域旅游、建设区域性中心城市，进一步树立大交通观念，增强使命感、责任感，积极争取上级支持、争取项目资金，紧盯呼南高铁、城市轨道等重点项目不放，专班专人，全力以赴，千方百计争取项目早日落地、早日建成、早日投用。三是要抓紧今年项目建设，高度重视拆迁影响施工的问题，解决好“卡脖子”问题，争取圆满完成年度目标。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51);\" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-size: 14px; font-family: 宋体;\">济源市人大常委会副主任吴丽鸣、杨随林，副市长李拴根陪同察看。</span></p>', '济源市人大常委会主任李军星带领部分常委会组成人员，深入交通工程一线，对济源市2017年度交通基础设施建设项目进行实地察看。', '241', '0', '', '1', '', '', '1510753093', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('27', '滑县交通运输局 安全生产专项整治行动圆满结束', '', '1', null, '滑县交通运输局', '', '1', '滑县交通运输局', '<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为全面贯彻落实省局方案，遏制安全事故的发生，县交通运输局积极开展道路运输安全生产专项整治行动。</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 通过此次专项整治活动，滑县“两客一危”和普货运输企业安全管理方面能够做到“五到位、五落实”。汽车站能够严格执行“三不进站、六不出站”管理规定，客运车辆驾驶员严格落实了发车前的安全承诺制度，从业人员的安全意识明显得到提高。在联网联控方面企业能够认真贯彻落实交通运输部55号令，落实道路运输企业动态监控主体责任,能够及时发现违规、危险驾驶以及系统终端存在的的故障等问题，严格整改措施落实，强化营运车辆动态监控管理，企业安全生产主体责任得到有效落实，道路运输安全形势稳定向好。</span></p>', '通过此次专项整治活动，滑县“两客一危”和普货运输企业安全管理方面能够做到“五到位、五落实”。汽车站能够严格执行“三不进站、六不出站”管理规定', '226', '0', '/data/upload/2017-11-21/5a141ac5610da.png', '1', '', '', '1510753128', '50', '0', 'c', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1510675200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('28', '河南体育界聚议体育产业发展 邓亚萍登台开讲', '', '18', null, '', '', '1', '服务中心', '<p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">邓亚萍最近忙啥呢？忙着投资体育产业呢！3月29日，久违的河南乒乓球名将邓亚萍现身全省体育产业发展会议，作为邓亚萍体育产业投资基金的创始人，介绍基金的运作情况。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　当天上午，2018年全省体育产业发展会议在郑州大河锦江饭店召开，会议新命名宜阳县、睢县、新县等3个省体育产业示范基地，河南建业足球俱乐部等16个省体育产业示范单位，郑开国际马拉松赛等4个省体育产业示范项目，登封市嵩皇运动休闲特色小镇等8个省运动休闲特色小镇。信阳市体育局、邓亚萍体育产业投资基金等10家单位做了交流发言。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　邓亚萍体育产业投资基金是河南省唯一一家专注于投资体育产业领域的投资机构，目前投资聚焦两条主线：一是在城区打造便民惠民的体育健身场馆，二是在郊区打造体育+旅游融合发展的体育特色小镇及户外运动休闲公园，形成“消费升级”度假目的地。“我十四岁就离开了河南，如今想为家乡做点事情。”会议结束后，邓亚萍向记者表示。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　体育产业是当下经济社会发展中的“热词”，发展体育产业是满足人民日益增长的美好生活需要的重要内容。目前我省体育产业已进入了快速发展的轨道，体育精品项目建设成效显著，体育产业实体经济发展迅速。尤其是郑州、焦作依托少林、太极两大武术优势资源，发展出了领跑全国的武术产业。据介绍，目前登封市有武术院校46所，在校学员近10万人，是全球最大的武术教育培训基地。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　与此同时，我省体育产业还存在规模小、品牌少、基础薄、区域发展不平衡等诸多亟待解决的问题。2016年河南全省体育产业总产出为817.97亿元，占全省国内生产总值(GDP)的比重为0.79%，低于全国0.9%的平均水平。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　省体育局副局长王炳奇在会议中提出，各地应明确任务，完善产业政策，培育体育产业基地，加强场馆建设运营，丰富体育赛事活动，推进健身休闲产业，加快体育制造发展，推动“体育+”和“+体育”，加强体育产业基础工作，推动全省体育产业又好又快发展。</p><p><br/></p>', '', '200', '0', '', '1', '', '', '1522421195', '50', '0', '', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1522339200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('29', '河南省发布办税“最多跑一次”清单 4月1日起施行', '', '18', null, '', '', '1', '服务中心', '<p><span style=\"font-family: 宋体; background-color: rgb(255, 255, 255);\">记者了解到，宣传月期间，河南省税务系统将紧紧围绕“优化税收营商环境，助力经济高质量发展”的主题，开展一系列宣传活动，具体包括举行河南省税务系统新闻通报会，介绍“便民办税春风行动”及办税事项“最多跑一次”清单有关情况；开展“国税地税征管体制改革”宣传活动，宣传改革对于更好发挥税收在国家治理中的基础性、支柱性、保障性作用，特别是对于优化税收营商环境的重大意义；举行“纳税人开放日”活动，邀请部分企业界人大代表、政协委员走进税务机关，深入办税服务厅和12366纳税服务热线呼叫中心，实地体验办税服务，增进对税收工作的理解和支持；联合公布河南省纳税信用A级纳税人名单，与郑州银行、农信社、平安银行等多家银行举行“征信互认税银互动”集中签约仪式；开展税收普法教育系列宣传活动，组织青少年学生收看“全国青少年税收法治宣传教育大课堂”录播课程，参观税收普法教育基地，加强青少年税收法治宣传教育；开展税收助力“一带一路”建设宣传活动，举办税企共话“一带一路”恳谈会，集中宣传解读税务总局最新《国别投资税收指南》，助力企业“走出去”。</span></p>', '', '200', '0', '', '1', '', '', '1522421223', '50', '0', '', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1522339200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('30', '农村教师住宿条件 河南48县市建8442套周转宿舍', '', '18', null, '', '', '1', '服务中心', '<p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">为改善农村教师住宿条件，建好教师周转宿舍，省教育厅、省财政厅近日联合下发《关于做好2018年河南省农村中小学教师周转宿舍建设工程有关工作的通知》(以下简称《通知》)，明确农村教师周转宿舍建设任务，要求加快项目建设进度。根据规划，2018年全省共下达42县（市）农村中小学教师周转宿舍建设项目304个，建设套数8442套，计划投资51710.162万元。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　2017年6月，河南省启动实施了农村中小学教师周转宿舍建设专项工程。根据规划，2018年全省共下达42县（市）农村中小学教师周转宿舍建设项目304个，建设套数8442套，计划投资51710.162万元。其中，省级建设项目154个，建设套数4195套，投资25705.182万元，县（市）级建设项目150个，建设套数4247套，投资26004.98万元。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　《通知》指出，省财政厅、省教育厅已于2017年11月提前下达了2018年农村中小学教师周转宿舍建设工程省级奖补资金27314.38万元。《通知》要求，各地要充分发挥优势，抓紧开工建设，积极抓好项目建设任务的组织实施，确保2017年建设项目在今年8月底前、2018年项目在今年11月底前全部竣工。工程建设条件成熟的以后年度建设项目，可提前开工建设。</p><p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">　　《通知》还要求，各地在项目推进过程中，要严格按照国家的相关法律法规及政策规定，实行招标投标制、工程监理制、合同管理制和竣工验收等基本制度，保证农村中小学教师周转宿舍项目工程质量。</p><p><br/></p>', '', '201', '0', '', '1', '', '', '1522421250', '50', '0', '', '', '0', '0', '1', '0', '1', '0', '{\"showdate\":1522339200}', 'zh-cn');
INSERT INTO `jt_news` VALUES ('31', '0000000000000', '', '3', null, '', '', '1', '服务中心', '<p>22<img title=\"5acf73cf35f03.jpg\" alt=\"5acf73cf35f03.jpg\" src=\"/data/upload/2018-04-12/5acf73cf35f03.jpg\"/></p>', '99', '200', '0', '/data/upload/2018-04-12/5acf73d36b581.png', '1', '', '', '1523545043', '50', '0', 'h,c,f,a,s,p,j,d,cp', '', '0', '1', '1', '0', '1', '0', '{\"showdate\":1523462400}', 'zh-cn');

-- ----------------------------
-- Table structure for `jt_oauth_user`
-- ----------------------------
DROP TABLE IF EXISTS `jt_oauth_user`;
CREATE TABLE `jt_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `oauth_from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `user_status` tinyint(2) NOT NULL DEFAULT '1',
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  `unionid` varchar(40) DEFAULT '' COMMENT 'weixin wechat的unionid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方用户表';

-- ----------------------------
-- Records of jt_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `jt_options`
-- ----------------------------
DROP TABLE IF EXISTS `jt_options`;
CREATE TABLE `jt_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  `option_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='全站配置表';

-- ----------------------------
-- Records of jt_options
-- ----------------------------
INSERT INTO `jt_options` VALUES ('1', 'email_options', '{\"email_open\":\"0\",\"email_rename\":\"\",\"email_name\":\"\",\"email_smtpname\":\"\",\"smtpsecure\":\"\",\"smtp_port\":\"\",\"email_emname\":\"\",\"email_pwd\":\"\"}', '1', 'zh-cn');
INSERT INTO `jt_options` VALUES ('2', 'active_options', '{\"email_active\":\"0\",\"email_title\":\"YFCMF\\u8d26\\u53f7\\u6fc0\\u6d3b\\u901a\\u77e5\",\"email_tpl\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.rainfer.cn\\/\\\" style=\\\"white-space: normal;\\\">YFCMF<\\/a><br style=\\\"white-space: normal;\\\"\\/><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">---------------<\\/strong><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">---------------<\\/strong><br style=\\\"white-space: normal;\\\"\\/><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"font-family: Arial; color: rgb(51, 51, 51); line-height: 18px; background-color: rgb(255, 255, 255);\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fYFCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;&nbsp;<a title=\\\"\\\" href=\\\"http:\\/#link#\\\" target=\\\"_self\\\" style=\\\"white-space: normal;\\\">http:\\/\\/#link#<\\/a><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br style=\\\"white-space: normal;\\\"\\/><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; YFCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}', '1', 'zh-cn');
INSERT INTO `jt_options` VALUES ('3', 'weixin_options', '{\"wesys_name\":\"\",\"wesys_id\":\"\",\"wesys_number\":\"\",\"wesys_appid\":\"\",\"wesys_appsecret\":\"\",\"wesys_type\":\"2\"}', '1', 'zh-cn');
INSERT INTO `jt_options` VALUES ('4', 'email_options', '{\"email_open\":\"0\",\"email_rename\":\"\",\"email_name\":\"\",\"email_smtpname\":\"\",\"smtpsecure\":\"\",\"smtp_port\":\"\",\"email_emname\":\"\",\"email_pwd\":\"\"}', '1', 'en-us');
INSERT INTO `jt_options` VALUES ('5', 'active_options', '{\"email_active\":\"0\",\"email_title\":\"YFCMF Account activation notification\",\"email_tpl\":\"<p>This email comes from&nbsp;<a href=\\\"http:\\/\\/www.rainfer.cn\\/\\\" style=\\\"white-space: normal;\\\">YFCMF<\\/a><br style=\\\"white-space: normal;\\\"\\/><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">---------------<\\/strong><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">Account activation description<\\/strong><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp;<strong style=\\\"white-space: normal;\\\">---------------<\\/strong><br style=\\\"white-space: normal;\\\"\\/><br style=\\\"white-space: normal;\\\"\\/>Dear&nbsp;<span style=\\\"font-family: Arial; color: rgb(51, 51, 51); line-height: 18px; background-color: rgb(255, 255, 255);\\\">#username#,<\\/span><\\/p><p>&nbsp;If you are a new user of YFCMF, or use this address when modifying your registration Email, we need to verify your address validity in order to avoid spam or address abuse.<\\/p><p>&nbsp;You only need to click the link below to activate your account:&nbsp; &nbsp;&nbsp;<\\/p><p><a title=\\\"\\\" href=\\\"http:\\/#link#\\\" target=\\\"_self\\\" style=\\\"white-space: normal;\\\">http:\\/\\/#link#<\\/a><br style=\\\"white-space: normal;\\\"\\/>&nbsp;(If it is not linked to the form, please paste the address manually into the browser address bar to access.)<\\/p><p>&nbsp;Thank you for your visit, I wish you a happy!&nbsp; &nbsp;&nbsp;<\\/p><p><br\\/><\\/p><p>Best regards!<\\/p><p><br style=\\\"white-space: normal;\\\"\\/>&nbsp; &nbsp; YFCMF management team<\\/p>\"}', '1', 'en-us');
INSERT INTO `jt_options` VALUES ('6', 'weixin_options', '{\"wesys_name\":\"\",\"wesys_id\":\"\",\"wesys_number\":\"\",\"wesys_appid\":\"\",\"wesys_appsecret\":\"\",\"wesys_type\":\"2\"}', '1', 'en-us');
INSERT INTO `jt_options` VALUES ('7', 'site_options', '{\"site_name\":\"php\\u81ea\\u9002\\u5e94\\u5927\\u6c14\\u653f\\u5e9c\\u5355\\u4f4d\\u7f51\\u7ad9 \\u7ea2\\u8272\\u5341\\u4e5d\\u5927\\u653f\\u5e9c\\u7f51\\u7ad9\\u6a21\\u677f\",\"site_host\":\"http:\\/\\/www.tp.gl\\/\",\"site_tpl\":\"hnjtt\",\"site_tpl_m\":\"hnjtt\",\"site_icp\":\"\\u8c6bICP\\u590714000861\\u53f7\",\"site_tongji\":\"\",\"site_copyright\":\"php\\u81ea\\u9002\\u5e94\\u5927\\u6c14\\u653f\\u5e9c\\u5355\\u4f4d\\u7f51\\u7ad9 \\u7248\\u6743\\u6240\\u6709 2017-2018\",\"site_seo_title\":\"php\\u81ea\\u9002\\u5e94\\u5927\\u6c14\\u653f\\u5e9c\\u5355\\u4f4d\\u7f51\\u7ad9 \\u7ea2\\u8272\\u5341\\u4e5d\\u5927\\u653f\\u5e9c\\u7f51\\u7ad9\\u6a21\\u677f\",\"site_seo_keywords\":\"php\\u81ea\\u9002\\u5e94\\u5927\\u6c14\\u653f\\u5e9c\\u5355\\u4f4d\\u7f51\\u7ad9,\\u7ea2\\u8272\\u5341\\u4e5d\\u5927\\u653f\\u5e9c\\u7f51\\u7ad9\\u6a21\\u677f\",\"site_seo_description\":\"php\\u81ea\\u9002\\u5e94\\u5927\\u6c14\\u653f\\u5e9c\\u5355\\u4f4d\\u7f51\\u7ad9 \\u7ea2\\u8272\\u5341\\u4e5d\\u5927\\u653f\\u5e9c\\u7f51\\u7ad9\\u6a21\\u677f\",\"site_logo\":\"\\/data\\/upload\\/2017-11-22\\/5a156c38efe41.png\"}', '1', 'zh-cn');
INSERT INTO `jt_options` VALUES ('8', 'site_options', '            {\n            		\"site_name\":\"YFCMF内容管理框架\",\n					\"site_host\":\"http://www.tp.gl/\",\n					\"site_tpl\":\"default\",\n					\"site_tpl_m\":\"default\",\n					\"site_icp\":\"\",\n					\"site_tongji\":\"\",\n					\"site_copyright\":\"\",\n					\"site_co_name\":\"\",\n					\"site_address\":\"\",\n					\"map_lat\":\"23.029759\",\n					\"map_lng\":\"113.752114\",\n					\"site_tel\":\"+86 769 8888 8888\",\n					\"site_admin_email\":\"admin@qq.com\",\n					\"site_qq\":\"81818832\",\n					\"site_seo_title\":\"YFCMF内容管理框架\",\n					\"site_seo_keywords\":\"YFCMF,php,内容管理框架,cmf,cms,雨飞工作室\",\n					\"site_seo_description\":\"YFCMF是雨飞工作室发布的一款用于快速开发的内容管理框架\",\n					\"site_logo\":\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\"\n        }\n		', '1', 'en-us');

-- ----------------------------
-- Table structure for `jt_payment`
-- ----------------------------
DROP TABLE IF EXISTS `jt_payment`;
CREATE TABLE `jt_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(100) DEFAULT '' COMMENT '商品订单',
  `pay_trade_no` varchar(100) DEFAULT NULL COMMENT '支付订单号',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单金额',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `type` varchar(50) DEFAULT '' COMMENT '支付方式',
  `uid` int(11) DEFAULT NULL COMMENT '付款uid',
  `create_time` int(11) DEFAULT NULL COMMENT '排序',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '订单更新时间',
  `client_ip` varchar(50) DEFAULT '' COMMENT '支付ip',
  `product_name` varchar(200) DEFAULT '' COMMENT '商品名称',
  `product_body` varchar(200) DEFAULT '' COMMENT '商品描述',
  `product_url` varchar(100) DEFAULT '' COMMENT '商品地址',
  `extra_param` varchar(500) DEFAULT '' COMMENT '特殊扩展',
  `payment_cid` varchar(100) NOT NULL DEFAULT '未填写' COMMENT '前台栏目',
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `out_trade_no` (`out_trade_no`),
  UNIQUE KEY `pay_trade_no` (`pay_trade_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `jt_plug_ad`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_ad`;
CREATE TABLE `jt_plug_ad` (
  `plug_ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `plug_ad_name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `plug_ad_adtypeid` tinyint(5) NOT NULL COMMENT '所属位置',
  `plug_ad_checkid` tinyint(2) NOT NULL COMMENT '1=图片 2=JS',
  `plug_ad_js` varchar(255) NOT NULL COMMENT 'JS代码',
  `plug_ad_pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `plug_ad_url` varchar(200) NOT NULL DEFAULT '' COMMENT '广告链接',
  `plug_ad_content` text COMMENT '广告文字内容',
  `plug_ad_addtime` int(11) NOT NULL COMMENT '添加时间',
  `plug_ad_order` int(11) NOT NULL COMMENT '排序',
  `plug_ad_open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  `plug_ad_depid` int(5) NOT NULL COMMENT '广告投放单位或个人',
  `plug_ad_butt` int(5) NOT NULL COMMENT '广告内部对接人员（自己的员工）',
  `plug_ad_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`plug_ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_ad
-- ----------------------------
INSERT INTO `jt_plug_ad` VALUES ('1', '不忘初心，牢记使命 学习十九大精神', '1', '1', '', '/data/upload/2017-11-19/5a112c6597593.jpg', 'http://www.tp.gl/home/news/index/id/46.html', '不忘初心，牢记使命 学习十九大精神', '1451356484', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('2', '为老人营造一个温馨的家', '1', '1', '', '/data/upload/2017-11-19/5a112cb9e558b.jpg', 'http://www.tp.gl/home/news/index/id/45.html', '为老人营造一个温馨的家', '1462533829', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('5', '唐彦民副厅长一行到监控室检查、指导安全生产工作', '2', '1', '', '/data/upload/2017-11-19/5a11338ee4559.jpg', 'http://www.tp.gl/home/news/index/id/42.html', '唐彦民副厅长一行到监控室检查、指导安全生产工作', '1511076751', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('3', 'Why do you choose us?', '1', '1', '', 'http://ohjmksy46.bkt.clouddn.com/images/iw7upo8g_706ml271j1s858417cf6e11a9.jpg', '', 'Profound technical strength\nRich experience in the industry\nEfficient operation process\nPerfect service system\nA large number of successful cases', '1451356484', '50', '1', '0', '0', 'en-us');
INSERT INTO `jt_plug_ad` VALUES ('4', 'What can we do for you?', '1', '1', '', 'http://ohjmksy46.bkt.clouddn.com/images/iw7uq7iw_17vba6gddvdw58417d0f2728b.jpg', '', 'Enterprise website development and design\nWebsite UI design\nThinkPHP two development\nYFCMF two development\nTP plug-in development\nYFCMF function customization', '1462533829', '50', '1', '0', '0', 'en-us');
INSERT INTO `jt_plug_ad` VALUES ('6', '厅直党委检查组对服务中心全面从严治党情况进行专项检查', '2', '1', '', '/data/upload/2017-11-19/5a1133c1e77e1.jpg', 'http://www.tp.gl/home/news/index/id/42.html', '厅直党委检查组对服务中心全面从严治党情况进行专项检查', '1511076801', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('7', '服务中心副主任罗斌杰同志到濮阳县郎中乡马白邱村任职驻村第一书记', '2', '1', '', '/data/upload/2017-11-19/5a1133e7a2c4a.jpg', 'http://www.tp.gl/home/news/index/id/42.html', '服务中心副主任罗斌杰同志到濮阳县郎中乡马白邱村任职驻村第一书记', '1511076839', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('8', '观点前沿', '3', '1', '', '/data/upload/2017-11-19/5a114bd45ed1e.jpg', 'http://www.tp.gl/home/listn/index/id/6.html', '观点前沿', '1511082964', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('9', '党课教育', '4', '1', '', '/data/upload/2017-11-19/5a1150e1afb5b.jpg', 'http://www.tp.gl/home/news/index/id/5.html', '党课教育', '1511084257', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('10', '服务大讲堂', '4', '1', '', '/data/upload/2017-11-19/5a11510c0a18e.jpg', 'http://www.tp.gl/home/news/index/id/5.html', '服务大讲堂', '1511084300', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('11', '发展论坛', '4', '1', '', '/data/upload/2017-11-19/5a115128bdd51.jpg', 'http://www.tp.gl/home/news/index/id/5.html', '发展论坛', '1511084328', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('12', '服务之窗', '4', '1', '', '/data/upload/2017-11-19/5a115145c9ae7.jpg', 'http://www.tp.gl/home/news/index/id/5.html', '服务之窗', '1511084357', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('13', '喜迎十九大', '5', '1', '', '/data/upload/2017-11-20/5a12ca72ce00c.jpg', 'http://www.tp.gl/home/listn/index/id/1.html', '喜迎十九大', '1511180915', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('14', 'wwwwwww', '1', '1', '', '/data/upload/2017-12-14/5a31efea8f5f3.jpg', 'http://www.tp.gl/home/news/index/id/5.html', '', '1513222122', '50', '1', '0', '0', 'zh-cn');
INSERT INTO `jt_plug_ad` VALUES ('15', '中国梦中国造', '6', '1', '', '/data/upload/2018-03-30/5abe4b239117f.jpg', 'http://zf.nynds.com/home/news/index/id/10.html', '中国梦中国造', '1522420515', '50', '1', '0', '0', 'zh-cn');

-- ----------------------------
-- Table structure for `jt_plug_adtype`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_adtype`;
CREATE TABLE `jt_plug_adtype` (
  `plug_adtype_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `plug_adtype_name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `plug_adtype_order` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`plug_adtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_adtype
-- ----------------------------
INSERT INTO `jt_plug_adtype` VALUES ('1', '首页图片轮播', '50');
INSERT INTO `jt_plug_adtype` VALUES ('2', '首页轮播二（新闻中心左则）', '50');
INSERT INTO `jt_plug_adtype` VALUES ('3', '首页右侧-观点前沿', '50');
INSERT INTO `jt_plug_adtype` VALUES ('4', '首页右侧-精神文明', '50');
INSERT INTO `jt_plug_adtype` VALUES ('5', '列表页顶部广告', '50');
INSERT INTO `jt_plug_adtype` VALUES ('6', '首页推荐新闻图', '50');

-- ----------------------------
-- Table structure for `jt_plug_files`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_files`;
CREATE TABLE `jt_plug_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  PRIMARY KEY (`id`),
  KEY `uptime` (`uptime`),
  KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_files
-- ----------------------------
INSERT INTO `jt_plug_files` VALUES ('1', '1510704980', '278317', '/data/upload/2017-11-15/5a0b87548b175.png');
INSERT INTO `jt_plug_files` VALUES ('2', '1510704983', '278317', '/data/upload/2017-11-15/5a0b8757a1181.png');
INSERT INTO `jt_plug_files` VALUES ('3', '1510705045', '328008', '/data/upload/2017-11-15/5a0b879511912.jpg');
INSERT INTO `jt_plug_files` VALUES ('4', '1510705045', '192535', '/data/upload/2017-11-15/5a0b8795dec87.jpg');
INSERT INTO `jt_plug_files` VALUES ('5', '1510705070', '192535', '/data/upload/2017-11-15/5a0b87ae73387.jpg');
INSERT INTO `jt_plug_files` VALUES ('6', '1510749173', '317145', '/data/upload/2017-11-15/5a0c33f518a8b.jpg');
INSERT INTO `jt_plug_files` VALUES ('7', '1510749173', '537762', '/data/upload/2017-11-15/5a0c33f563f12.jpg');
INSERT INTO `jt_plug_files` VALUES ('8', '1510749173', '370419', '/data/upload/2017-11-15/5a0c33f58ed6e.jpg');
INSERT INTO `jt_plug_files` VALUES ('9', '1510749173', '364770', '/data/upload/2017-11-15/5a0c33f5bcb86.jpg');
INSERT INTO `jt_plug_files` VALUES ('10', '1510749174', '454233', '/data/upload/2017-11-15/5a0c33f60b84f.jpg');
INSERT INTO `jt_plug_files` VALUES ('11', '1510749174', '425787', '/data/upload/2017-11-15/5a0c33f63beed.jpg');
INSERT INTO `jt_plug_files` VALUES ('12', '1510749174', '482484', '/data/upload/2017-11-15/5a0c33f672ee8.jpg');
INSERT INTO `jt_plug_files` VALUES ('13', '1510752878', '126895', '/data/upload/2017-11-15/5a0c426e7d7e7.jpg');
INSERT INTO `jt_plug_files` VALUES ('14', '1510752878', '149302', '/data/upload/2017-11-15/5a0c426e9d6ff.jpg');
INSERT INTO `jt_plug_files` VALUES ('15', '1510752878', '259028', '/data/upload/2017-11-15/5a0c426ec707c.jpg');
INSERT INTO `jt_plug_files` VALUES ('16', '1511074917', '354171', '/data/upload/2017-11-19/5a112c6597593.jpg');
INSERT INTO `jt_plug_files` VALUES ('17', '1511075001', '391282', '/data/upload/2017-11-19/5a112cb9e558b.jpg');
INSERT INTO `jt_plug_files` VALUES ('18', '1511076750', '213884', '/data/upload/2017-11-19/5a11338ee4559.jpg');
INSERT INTO `jt_plug_files` VALUES ('19', '1511076801', '176123', '/data/upload/2017-11-19/5a1133c1e77e1.jpg');
INSERT INTO `jt_plug_files` VALUES ('20', '1511076839', '217544', '/data/upload/2017-11-19/5a1133e7a2c4a.jpg');
INSERT INTO `jt_plug_files` VALUES ('21', '1511082964', '44510', '/data/upload/2017-11-19/5a114bd45ed1e.jpg');
INSERT INTO `jt_plug_files` VALUES ('22', '1511084257', '162416', '/data/upload/2017-11-19/5a1150e1afb5b.jpg');
INSERT INTO `jt_plug_files` VALUES ('23', '1511084300', '76109', '/data/upload/2017-11-19/5a11510c0a18e.jpg');
INSERT INTO `jt_plug_files` VALUES ('24', '1511084328', '157113', '/data/upload/2017-11-19/5a115128bdd51.jpg');
INSERT INTO `jt_plug_files` VALUES ('25', '1511084357', '172267', '/data/upload/2017-11-19/5a115145c9ae7.jpg');
INSERT INTO `jt_plug_files` VALUES ('26', '1511180915', '274575', '/data/upload/2017-11-20/5a12ca72ce00c.jpg');
INSERT INTO `jt_plug_files` VALUES ('27', '1511267013', '85234', '/data/upload/2017-11-21/5a141ac5610da.png');
INSERT INTO `jt_plug_files` VALUES ('28', '1511335850', '22524', '/data/upload/2017-11-22/5a1527aa10b1f.jpg');
INSERT INTO `jt_plug_files` VALUES ('29', '1511335973', '26861', '/data/upload/2017-11-22/5a1528250bce6.jpg');
INSERT INTO `jt_plug_files` VALUES ('30', '1511336067', '36462', '/data/upload/2017-11-22/5a152883612e0.JPG');
INSERT INTO `jt_plug_files` VALUES ('31', '1511336135', '33976', '/data/upload/2017-11-22/5a1528c7c9f6b.jpg');
INSERT INTO `jt_plug_files` VALUES ('32', '1511336242', '20150', '/data/upload/2017-11-22/5a152932399de.jpg');
INSERT INTO `jt_plug_files` VALUES ('33', '1511336412', '20299', '/data/upload/2017-11-22/5a1529dcf006d.jpg');
INSERT INTO `jt_plug_files` VALUES ('34', '1511336536', '312616', '/data/upload/2017-11-22/5a152a58c7560.png');
INSERT INTO `jt_plug_files` VALUES ('35', '1511336649', '311884', '/data/upload/2017-11-22/5a152ac9aa80a.png');
INSERT INTO `jt_plug_files` VALUES ('36', '1511336737', '14103', '/data/upload/2017-11-22/5a152b21a157c.jpg');
INSERT INTO `jt_plug_files` VALUES ('37', '1511336818', '601594', '/data/upload/2017-11-22/5a152b7206111.png');
INSERT INTO `jt_plug_files` VALUES ('38', '1511337024', '581464', '/data/upload/2017-11-22/5a152c40d815f.png');
INSERT INTO `jt_plug_files` VALUES ('39', '1511337150', '114040', '/data/upload/2017-11-22/5a152cbef2f59.jpeg');
INSERT INTO `jt_plug_files` VALUES ('40', '1511337300', '112892', '/data/upload/2017-11-22/5a152d54ac6a7.jpg');
INSERT INTO `jt_plug_files` VALUES ('41', '1511337372', '436204', '/data/upload/2017-11-22/5a152d9c369b7.png');
INSERT INTO `jt_plug_files` VALUES ('42', '1511340506', '7576', '/data/upload/avatar/5a1539da22980.jpg');
INSERT INTO `jt_plug_files` VALUES ('43', '1511353401', '14003', '/data/upload/2017-11-22/5a156c38efe41.png');
INSERT INTO `jt_plug_files` VALUES ('44', '1513222122', '53033', '/data/upload/2017-12-14/5a31efea8f5f3.jpg');
INSERT INTO `jt_plug_files` VALUES ('45', '1522420515', '17966', '/data/upload/2018-03-30/5abe4b239117f.jpg');
INSERT INTO `jt_plug_files` VALUES ('46', '1523545039', '194888', '/data/upload/2018-04-12/5acf73cf35f03.jpg');
INSERT INTO `jt_plug_files` VALUES ('47', '1523545043', '754559', '/data/upload/2018-04-12/5acf73d36b581.png');

-- ----------------------------
-- Table structure for `jt_plug_link`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_link`;
CREATE TABLE `jt_plug_link` (
  `plug_link_id` int(5) NOT NULL AUTO_INCREMENT,
  `plug_link_name` varchar(50) NOT NULL COMMENT '链接名称',
  `plug_link_url` varchar(200) NOT NULL COMMENT '链接URL',
  `plug_link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '打开方式',
  `plug_link_typeid` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `plug_link_qq` varchar(20) NOT NULL COMMENT '联系QQ',
  `plug_link_order` varchar(10) NOT NULL DEFAULT '50' COMMENT '排序',
  `plug_link_addtime` int(11) NOT NULL COMMENT '添加时间',
  `plug_link_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0禁用1启用',
  `plug_link_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`plug_link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_link
-- ----------------------------
INSERT INTO `jt_plug_link` VALUES ('1', '河南人民政府', 'http://www.henan.gov.cn/', '_blank', '1', 'eee', '50', '1460260482', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('2', '联系我们', 'http://www.tp.gl/home/listn/index/id/4.html', '_blank', '2', '', '50', '1460362536', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('3', '河南交通运输厅', 'http://www.hncd.gov.cn', '_blank', '1', '', '50', '1461909470', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('4', 'Rainfer studio', 'http://www.rainfer.cn', '_blank', '1', 'eee', '50', '1460260482', '1', 'en-us');
INSERT INTO `jt_plug_link` VALUES ('5', 'Rainfer studio', 'http://www.rainfer.cn', '_blank', '2', '81818832', '50', '1460362536', '1', 'en-us');
INSERT INTO `jt_plug_link` VALUES ('6', 'YFCMF', 'http://www.rainfer.cn', '_blank', '1', '', '50', '1461909470', '1', 'en-us');
INSERT INTO `jt_plug_link` VALUES ('7', '中心简介', 'http://www.tp.gl/home/listn/index/id/4.html', '_blank', '2', '', '50', '1511163333', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('8', '观点前沿', 'http://www.tp.gl/home/listn/index/id/4.html', '_blank', '2', '', '50', '1511163358', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('9', '新闻中心', 'http://www.tp.gl/home/listn/index/id/4.html', '_blank', '2', '', '50', '1511163404', '1', 'zh-cn');
INSERT INTO `jt_plug_link` VALUES ('10', '专题', 'http://www.yunma.gl/zhuanti/index.html', '_blank', '2', '', '50', '1513154455', '1', 'zh-cn');

-- ----------------------------
-- Table structure for `jt_plug_linktype`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_linktype`;
CREATE TABLE `jt_plug_linktype` (
  `plug_linktype_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `plug_linktype_name` varchar(30) NOT NULL COMMENT '所属栏目名称',
  `plug_linktype_order` varchar(10) NOT NULL COMMENT '排序',
  PRIMARY KEY (`plug_linktype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_linktype
-- ----------------------------
INSERT INTO `jt_plug_linktype` VALUES ('1', '首页', '1');
INSERT INTO `jt_plug_linktype` VALUES ('2', '尾部导航', '50');

-- ----------------------------
-- Table structure for `jt_plug_sug`
-- ----------------------------
DROP TABLE IF EXISTS `jt_plug_sug`;
CREATE TABLE `jt_plug_sug` (
  `plug_sug_id` int(11) NOT NULL AUTO_INCREMENT,
  `plug_sug_name` varchar(200) NOT NULL DEFAULT '' COMMENT '留言人姓名',
  `plug_sug_email` varchar(50) NOT NULL DEFAULT '' COMMENT '留言邮箱',
  `plug_sug_addtime` int(11) NOT NULL COMMENT '留言时间',
  `plug_sug_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=已回复 0=未回复',
  `plug_sug_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '留言者IP',
  `plug_sug_content` longtext NOT NULL COMMENT '留言内容',
  PRIMARY KEY (`plug_sug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_plug_sug
-- ----------------------------

-- ----------------------------
-- Table structure for `jt_region`
-- ----------------------------
DROP TABLE IF EXISTS `jt_region`;
CREATE TABLE `jt_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3726 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_region
-- ----------------------------
INSERT INTO `jt_region` VALUES ('1', '0', '中国', '0');
INSERT INTO `jt_region` VALUES ('2', '1', '北京', '1');
INSERT INTO `jt_region` VALUES ('3', '1', '安徽', '1');
INSERT INTO `jt_region` VALUES ('4', '1', '福建', '1');
INSERT INTO `jt_region` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `jt_region` VALUES ('6', '1', '广东', '1');
INSERT INTO `jt_region` VALUES ('7', '1', '广西', '1');
INSERT INTO `jt_region` VALUES ('8', '1', '贵州', '1');
INSERT INTO `jt_region` VALUES ('9', '1', '海南', '1');
INSERT INTO `jt_region` VALUES ('10', '1', '河北', '1');
INSERT INTO `jt_region` VALUES ('11', '1', '河南', '1');
INSERT INTO `jt_region` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `jt_region` VALUES ('13', '1', '湖北', '1');
INSERT INTO `jt_region` VALUES ('14', '1', '湖南', '1');
INSERT INTO `jt_region` VALUES ('15', '1', '吉林', '1');
INSERT INTO `jt_region` VALUES ('16', '1', '江苏', '1');
INSERT INTO `jt_region` VALUES ('17', '1', '江西', '1');
INSERT INTO `jt_region` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `jt_region` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `jt_region` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `jt_region` VALUES ('21', '1', '青海', '1');
INSERT INTO `jt_region` VALUES ('22', '1', '山东', '1');
INSERT INTO `jt_region` VALUES ('23', '1', '山西', '1');
INSERT INTO `jt_region` VALUES ('24', '1', '陕西', '1');
INSERT INTO `jt_region` VALUES ('25', '1', '上海', '1');
INSERT INTO `jt_region` VALUES ('26', '1', '四川', '1');
INSERT INTO `jt_region` VALUES ('27', '1', '天津', '1');
INSERT INTO `jt_region` VALUES ('28', '1', '西藏', '1');
INSERT INTO `jt_region` VALUES ('29', '1', '新疆', '1');
INSERT INTO `jt_region` VALUES ('30', '1', '云南', '1');
INSERT INTO `jt_region` VALUES ('31', '1', '浙江', '1');
INSERT INTO `jt_region` VALUES ('32', '1', '重庆', '1');
INSERT INTO `jt_region` VALUES ('33', '1', '香港', '1');
INSERT INTO `jt_region` VALUES ('34', '1', '澳门', '1');
INSERT INTO `jt_region` VALUES ('35', '1', '台湾', '1');
INSERT INTO `jt_region` VALUES ('36', '3', '安庆', '2');
INSERT INTO `jt_region` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `jt_region` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `jt_region` VALUES ('39', '3', '池州', '2');
INSERT INTO `jt_region` VALUES ('40', '3', '滁州', '2');
INSERT INTO `jt_region` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `jt_region` VALUES ('42', '3', '淮北', '2');
INSERT INTO `jt_region` VALUES ('43', '3', '淮南', '2');
INSERT INTO `jt_region` VALUES ('44', '3', '黄山', '2');
INSERT INTO `jt_region` VALUES ('45', '3', '六安', '2');
INSERT INTO `jt_region` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `jt_region` VALUES ('47', '3', '宿州', '2');
INSERT INTO `jt_region` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `jt_region` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `jt_region` VALUES ('50', '3', '宣城', '2');
INSERT INTO `jt_region` VALUES ('51', '3', '亳州', '2');
INSERT INTO `jt_region` VALUES ('52', '2', '北京', '2');
INSERT INTO `jt_region` VALUES ('53', '4', '福州', '2');
INSERT INTO `jt_region` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `jt_region` VALUES ('55', '4', '南平', '2');
INSERT INTO `jt_region` VALUES ('56', '4', '宁德', '2');
INSERT INTO `jt_region` VALUES ('57', '4', '莆田', '2');
INSERT INTO `jt_region` VALUES ('58', '4', '泉州', '2');
INSERT INTO `jt_region` VALUES ('59', '4', '三明', '2');
INSERT INTO `jt_region` VALUES ('60', '4', '厦门', '2');
INSERT INTO `jt_region` VALUES ('61', '4', '漳州', '2');
INSERT INTO `jt_region` VALUES ('62', '5', '兰州', '2');
INSERT INTO `jt_region` VALUES ('63', '5', '白银', '2');
INSERT INTO `jt_region` VALUES ('64', '5', '定西', '2');
INSERT INTO `jt_region` VALUES ('65', '5', '甘南', '2');
INSERT INTO `jt_region` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `jt_region` VALUES ('67', '5', '金昌', '2');
INSERT INTO `jt_region` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `jt_region` VALUES ('69', '5', '临夏', '2');
INSERT INTO `jt_region` VALUES ('70', '5', '陇南', '2');
INSERT INTO `jt_region` VALUES ('71', '5', '平凉', '2');
INSERT INTO `jt_region` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `jt_region` VALUES ('73', '5', '天水', '2');
INSERT INTO `jt_region` VALUES ('74', '5', '武威', '2');
INSERT INTO `jt_region` VALUES ('75', '5', '张掖', '2');
INSERT INTO `jt_region` VALUES ('76', '6', '广州', '2');
INSERT INTO `jt_region` VALUES ('77', '6', '深圳', '2');
INSERT INTO `jt_region` VALUES ('78', '6', '潮州', '2');
INSERT INTO `jt_region` VALUES ('79', '6', '东莞', '2');
INSERT INTO `jt_region` VALUES ('80', '6', '佛山', '2');
INSERT INTO `jt_region` VALUES ('81', '6', '河源', '2');
INSERT INTO `jt_region` VALUES ('82', '6', '惠州', '2');
INSERT INTO `jt_region` VALUES ('83', '6', '江门', '2');
INSERT INTO `jt_region` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `jt_region` VALUES ('85', '6', '茂名', '2');
INSERT INTO `jt_region` VALUES ('86', '6', '梅州', '2');
INSERT INTO `jt_region` VALUES ('87', '6', '清远', '2');
INSERT INTO `jt_region` VALUES ('88', '6', '汕头', '2');
INSERT INTO `jt_region` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `jt_region` VALUES ('90', '6', '韶关', '2');
INSERT INTO `jt_region` VALUES ('91', '6', '阳江', '2');
INSERT INTO `jt_region` VALUES ('92', '6', '云浮', '2');
INSERT INTO `jt_region` VALUES ('93', '6', '湛江', '2');
INSERT INTO `jt_region` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `jt_region` VALUES ('95', '6', '中山', '2');
INSERT INTO `jt_region` VALUES ('96', '6', '珠海', '2');
INSERT INTO `jt_region` VALUES ('97', '7', '南宁', '2');
INSERT INTO `jt_region` VALUES ('98', '7', '桂林', '2');
INSERT INTO `jt_region` VALUES ('99', '7', '百色', '2');
INSERT INTO `jt_region` VALUES ('100', '7', '北海', '2');
INSERT INTO `jt_region` VALUES ('101', '7', '崇左', '2');
INSERT INTO `jt_region` VALUES ('102', '7', '防城港', '2');
INSERT INTO `jt_region` VALUES ('103', '7', '贵港', '2');
INSERT INTO `jt_region` VALUES ('104', '7', '河池', '2');
INSERT INTO `jt_region` VALUES ('105', '7', '贺州', '2');
INSERT INTO `jt_region` VALUES ('106', '7', '来宾', '2');
INSERT INTO `jt_region` VALUES ('107', '7', '柳州', '2');
INSERT INTO `jt_region` VALUES ('108', '7', '钦州', '2');
INSERT INTO `jt_region` VALUES ('109', '7', '梧州', '2');
INSERT INTO `jt_region` VALUES ('110', '7', '玉林', '2');
INSERT INTO `jt_region` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `jt_region` VALUES ('112', '8', '安顺', '2');
INSERT INTO `jt_region` VALUES ('113', '8', '毕节', '2');
INSERT INTO `jt_region` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `jt_region` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `jt_region` VALUES ('116', '8', '黔南', '2');
INSERT INTO `jt_region` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `jt_region` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `jt_region` VALUES ('119', '8', '遵义', '2');
INSERT INTO `jt_region` VALUES ('120', '9', '海口', '2');
INSERT INTO `jt_region` VALUES ('121', '9', '三亚', '2');
INSERT INTO `jt_region` VALUES ('122', '9', '白沙', '2');
INSERT INTO `jt_region` VALUES ('123', '9', '保亭', '2');
INSERT INTO `jt_region` VALUES ('124', '9', '昌江', '2');
INSERT INTO `jt_region` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `jt_region` VALUES ('126', '9', '定安县', '2');
INSERT INTO `jt_region` VALUES ('127', '9', '东方', '2');
INSERT INTO `jt_region` VALUES ('128', '9', '乐东', '2');
INSERT INTO `jt_region` VALUES ('129', '9', '临高县', '2');
INSERT INTO `jt_region` VALUES ('130', '9', '陵水', '2');
INSERT INTO `jt_region` VALUES ('131', '9', '琼海', '2');
INSERT INTO `jt_region` VALUES ('132', '9', '琼中', '2');
INSERT INTO `jt_region` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `jt_region` VALUES ('134', '9', '万宁', '2');
INSERT INTO `jt_region` VALUES ('135', '9', '文昌', '2');
INSERT INTO `jt_region` VALUES ('136', '9', '五指山', '2');
INSERT INTO `jt_region` VALUES ('137', '9', '儋州', '2');
INSERT INTO `jt_region` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `jt_region` VALUES ('139', '10', '保定', '2');
INSERT INTO `jt_region` VALUES ('140', '10', '沧州', '2');
INSERT INTO `jt_region` VALUES ('141', '10', '承德', '2');
INSERT INTO `jt_region` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `jt_region` VALUES ('143', '10', '衡水', '2');
INSERT INTO `jt_region` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `jt_region` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `jt_region` VALUES ('146', '10', '唐山', '2');
INSERT INTO `jt_region` VALUES ('147', '10', '邢台', '2');
INSERT INTO `jt_region` VALUES ('148', '10', '张家口', '2');
INSERT INTO `jt_region` VALUES ('149', '11', '郑州', '2');
INSERT INTO `jt_region` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `jt_region` VALUES ('151', '11', '开封', '2');
INSERT INTO `jt_region` VALUES ('152', '11', '安阳', '2');
INSERT INTO `jt_region` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `jt_region` VALUES ('154', '11', '济源', '2');
INSERT INTO `jt_region` VALUES ('155', '11', '焦作', '2');
INSERT INTO `jt_region` VALUES ('156', '11', '南阳', '2');
INSERT INTO `jt_region` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `jt_region` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `jt_region` VALUES ('159', '11', '商丘', '2');
INSERT INTO `jt_region` VALUES ('160', '11', '新乡', '2');
INSERT INTO `jt_region` VALUES ('161', '11', '信阳', '2');
INSERT INTO `jt_region` VALUES ('162', '11', '许昌', '2');
INSERT INTO `jt_region` VALUES ('163', '11', '周口', '2');
INSERT INTO `jt_region` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `jt_region` VALUES ('165', '11', '漯河', '2');
INSERT INTO `jt_region` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `jt_region` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `jt_region` VALUES ('168', '12', '大庆', '2');
INSERT INTO `jt_region` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `jt_region` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `jt_region` VALUES ('171', '12', '黑河', '2');
INSERT INTO `jt_region` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `jt_region` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `jt_region` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `jt_region` VALUES ('175', '12', '七台河', '2');
INSERT INTO `jt_region` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `jt_region` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `jt_region` VALUES ('178', '12', '绥化', '2');
INSERT INTO `jt_region` VALUES ('179', '12', '伊春', '2');
INSERT INTO `jt_region` VALUES ('180', '13', '武汉', '2');
INSERT INTO `jt_region` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `jt_region` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `jt_region` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `jt_region` VALUES ('184', '13', '黄石', '2');
INSERT INTO `jt_region` VALUES ('185', '13', '荆门', '2');
INSERT INTO `jt_region` VALUES ('186', '13', '荆州', '2');
INSERT INTO `jt_region` VALUES ('187', '13', '潜江', '2');
INSERT INTO `jt_region` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `jt_region` VALUES ('189', '13', '十堰', '2');
INSERT INTO `jt_region` VALUES ('190', '13', '随州', '2');
INSERT INTO `jt_region` VALUES ('191', '13', '天门', '2');
INSERT INTO `jt_region` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `jt_region` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `jt_region` VALUES ('194', '13', '孝感', '2');
INSERT INTO `jt_region` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `jt_region` VALUES ('196', '13', '恩施', '2');
INSERT INTO `jt_region` VALUES ('197', '14', '长沙', '2');
INSERT INTO `jt_region` VALUES ('198', '14', '张家界', '2');
INSERT INTO `jt_region` VALUES ('199', '14', '常德', '2');
INSERT INTO `jt_region` VALUES ('200', '14', '郴州', '2');
INSERT INTO `jt_region` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `jt_region` VALUES ('202', '14', '怀化', '2');
INSERT INTO `jt_region` VALUES ('203', '14', '娄底', '2');
INSERT INTO `jt_region` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `jt_region` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `jt_region` VALUES ('206', '14', '湘西', '2');
INSERT INTO `jt_region` VALUES ('207', '14', '益阳', '2');
INSERT INTO `jt_region` VALUES ('208', '14', '永州', '2');
INSERT INTO `jt_region` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `jt_region` VALUES ('210', '14', '株洲', '2');
INSERT INTO `jt_region` VALUES ('211', '15', '长春', '2');
INSERT INTO `jt_region` VALUES ('212', '15', '吉林', '2');
INSERT INTO `jt_region` VALUES ('213', '15', '白城', '2');
INSERT INTO `jt_region` VALUES ('214', '15', '白山', '2');
INSERT INTO `jt_region` VALUES ('215', '15', '辽源', '2');
INSERT INTO `jt_region` VALUES ('216', '15', '四平', '2');
INSERT INTO `jt_region` VALUES ('217', '15', '松原', '2');
INSERT INTO `jt_region` VALUES ('218', '15', '通化', '2');
INSERT INTO `jt_region` VALUES ('219', '15', '延边', '2');
INSERT INTO `jt_region` VALUES ('220', '16', '南京', '2');
INSERT INTO `jt_region` VALUES ('221', '16', '苏州', '2');
INSERT INTO `jt_region` VALUES ('222', '16', '无锡', '2');
INSERT INTO `jt_region` VALUES ('223', '16', '常州', '2');
INSERT INTO `jt_region` VALUES ('224', '16', '淮安', '2');
INSERT INTO `jt_region` VALUES ('225', '16', '连云港', '2');
INSERT INTO `jt_region` VALUES ('226', '16', '南通', '2');
INSERT INTO `jt_region` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `jt_region` VALUES ('228', '16', '泰州', '2');
INSERT INTO `jt_region` VALUES ('229', '16', '徐州', '2');
INSERT INTO `jt_region` VALUES ('230', '16', '盐城', '2');
INSERT INTO `jt_region` VALUES ('231', '16', '扬州', '2');
INSERT INTO `jt_region` VALUES ('232', '16', '镇江', '2');
INSERT INTO `jt_region` VALUES ('233', '17', '南昌', '2');
INSERT INTO `jt_region` VALUES ('234', '17', '抚州', '2');
INSERT INTO `jt_region` VALUES ('235', '17', '赣州', '2');
INSERT INTO `jt_region` VALUES ('236', '17', '吉安', '2');
INSERT INTO `jt_region` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `jt_region` VALUES ('238', '17', '九江', '2');
INSERT INTO `jt_region` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `jt_region` VALUES ('240', '17', '上饶', '2');
INSERT INTO `jt_region` VALUES ('241', '17', '新余', '2');
INSERT INTO `jt_region` VALUES ('242', '17', '宜春', '2');
INSERT INTO `jt_region` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `jt_region` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `jt_region` VALUES ('245', '18', '大连', '2');
INSERT INTO `jt_region` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `jt_region` VALUES ('247', '18', '本溪', '2');
INSERT INTO `jt_region` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `jt_region` VALUES ('249', '18', '丹东', '2');
INSERT INTO `jt_region` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `jt_region` VALUES ('251', '18', '阜新', '2');
INSERT INTO `jt_region` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `jt_region` VALUES ('253', '18', '锦州', '2');
INSERT INTO `jt_region` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `jt_region` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `jt_region` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `jt_region` VALUES ('257', '18', '营口', '2');
INSERT INTO `jt_region` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `jt_region` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `jt_region` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `jt_region` VALUES ('261', '19', '包头', '2');
INSERT INTO `jt_region` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `jt_region` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `jt_region` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `jt_region` VALUES ('265', '19', '通辽', '2');
INSERT INTO `jt_region` VALUES ('266', '19', '乌海', '2');
INSERT INTO `jt_region` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `jt_region` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `jt_region` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `jt_region` VALUES ('270', '20', '银川', '2');
INSERT INTO `jt_region` VALUES ('271', '20', '固原', '2');
INSERT INTO `jt_region` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `jt_region` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `jt_region` VALUES ('274', '20', '中卫', '2');
INSERT INTO `jt_region` VALUES ('275', '21', '西宁', '2');
INSERT INTO `jt_region` VALUES ('276', '21', '果洛', '2');
INSERT INTO `jt_region` VALUES ('277', '21', '海北', '2');
INSERT INTO `jt_region` VALUES ('278', '21', '海东', '2');
INSERT INTO `jt_region` VALUES ('279', '21', '海南', '2');
INSERT INTO `jt_region` VALUES ('280', '21', '海西', '2');
INSERT INTO `jt_region` VALUES ('281', '21', '黄南', '2');
INSERT INTO `jt_region` VALUES ('282', '21', '玉树', '2');
INSERT INTO `jt_region` VALUES ('283', '22', '济南', '2');
INSERT INTO `jt_region` VALUES ('284', '22', '青岛', '2');
INSERT INTO `jt_region` VALUES ('285', '22', '滨州', '2');
INSERT INTO `jt_region` VALUES ('286', '22', '德州', '2');
INSERT INTO `jt_region` VALUES ('287', '22', '东营', '2');
INSERT INTO `jt_region` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `jt_region` VALUES ('289', '22', '济宁', '2');
INSERT INTO `jt_region` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `jt_region` VALUES ('291', '22', '聊城', '2');
INSERT INTO `jt_region` VALUES ('292', '22', '临沂', '2');
INSERT INTO `jt_region` VALUES ('293', '22', '日照', '2');
INSERT INTO `jt_region` VALUES ('294', '22', '泰安', '2');
INSERT INTO `jt_region` VALUES ('295', '22', '威海', '2');
INSERT INTO `jt_region` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `jt_region` VALUES ('297', '22', '烟台', '2');
INSERT INTO `jt_region` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `jt_region` VALUES ('299', '22', '淄博', '2');
INSERT INTO `jt_region` VALUES ('300', '23', '太原', '2');
INSERT INTO `jt_region` VALUES ('301', '23', '长治', '2');
INSERT INTO `jt_region` VALUES ('302', '23', '大同', '2');
INSERT INTO `jt_region` VALUES ('303', '23', '晋城', '2');
INSERT INTO `jt_region` VALUES ('304', '23', '晋中', '2');
INSERT INTO `jt_region` VALUES ('305', '23', '临汾', '2');
INSERT INTO `jt_region` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `jt_region` VALUES ('307', '23', '朔州', '2');
INSERT INTO `jt_region` VALUES ('308', '23', '忻州', '2');
INSERT INTO `jt_region` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `jt_region` VALUES ('310', '23', '运城', '2');
INSERT INTO `jt_region` VALUES ('311', '24', '西安', '2');
INSERT INTO `jt_region` VALUES ('312', '24', '安康', '2');
INSERT INTO `jt_region` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `jt_region` VALUES ('314', '24', '汉中', '2');
INSERT INTO `jt_region` VALUES ('315', '24', '商洛', '2');
INSERT INTO `jt_region` VALUES ('316', '24', '铜川', '2');
INSERT INTO `jt_region` VALUES ('317', '24', '渭南', '2');
INSERT INTO `jt_region` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `jt_region` VALUES ('319', '24', '延安', '2');
INSERT INTO `jt_region` VALUES ('320', '24', '榆林', '2');
INSERT INTO `jt_region` VALUES ('321', '25', '上海', '2');
INSERT INTO `jt_region` VALUES ('322', '26', '成都', '2');
INSERT INTO `jt_region` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `jt_region` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `jt_region` VALUES ('325', '26', '巴中', '2');
INSERT INTO `jt_region` VALUES ('326', '26', '达州', '2');
INSERT INTO `jt_region` VALUES ('327', '26', '德阳', '2');
INSERT INTO `jt_region` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `jt_region` VALUES ('329', '26', '广安', '2');
INSERT INTO `jt_region` VALUES ('330', '26', '广元', '2');
INSERT INTO `jt_region` VALUES ('331', '26', '乐山', '2');
INSERT INTO `jt_region` VALUES ('332', '26', '凉山', '2');
INSERT INTO `jt_region` VALUES ('333', '26', '眉山', '2');
INSERT INTO `jt_region` VALUES ('334', '26', '南充', '2');
INSERT INTO `jt_region` VALUES ('335', '26', '内江', '2');
INSERT INTO `jt_region` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `jt_region` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `jt_region` VALUES ('338', '26', '雅安', '2');
INSERT INTO `jt_region` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `jt_region` VALUES ('340', '26', '资阳', '2');
INSERT INTO `jt_region` VALUES ('341', '26', '自贡', '2');
INSERT INTO `jt_region` VALUES ('342', '26', '泸州', '2');
INSERT INTO `jt_region` VALUES ('343', '27', '天津', '2');
INSERT INTO `jt_region` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `jt_region` VALUES ('345', '28', '阿里', '2');
INSERT INTO `jt_region` VALUES ('346', '28', '昌都', '2');
INSERT INTO `jt_region` VALUES ('347', '28', '林芝', '2');
INSERT INTO `jt_region` VALUES ('348', '28', '那曲', '2');
INSERT INTO `jt_region` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `jt_region` VALUES ('350', '28', '山南', '2');
INSERT INTO `jt_region` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `jt_region` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `jt_region` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `jt_region` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `jt_region` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `jt_region` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `jt_region` VALUES ('357', '29', '哈密', '2');
INSERT INTO `jt_region` VALUES ('358', '29', '和田', '2');
INSERT INTO `jt_region` VALUES ('359', '29', '喀什', '2');
INSERT INTO `jt_region` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `jt_region` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `jt_region` VALUES ('362', '29', '石河子', '2');
INSERT INTO `jt_region` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `jt_region` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `jt_region` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `jt_region` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `jt_region` VALUES ('367', '30', '昆明', '2');
INSERT INTO `jt_region` VALUES ('368', '30', '怒江', '2');
INSERT INTO `jt_region` VALUES ('369', '30', '普洱', '2');
INSERT INTO `jt_region` VALUES ('370', '30', '丽江', '2');
INSERT INTO `jt_region` VALUES ('371', '30', '保山', '2');
INSERT INTO `jt_region` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `jt_region` VALUES ('373', '30', '大理', '2');
INSERT INTO `jt_region` VALUES ('374', '30', '德宏', '2');
INSERT INTO `jt_region` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `jt_region` VALUES ('376', '30', '红河', '2');
INSERT INTO `jt_region` VALUES ('377', '30', '临沧', '2');
INSERT INTO `jt_region` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `jt_region` VALUES ('379', '30', '文山', '2');
INSERT INTO `jt_region` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `jt_region` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `jt_region` VALUES ('382', '30', '昭通', '2');
INSERT INTO `jt_region` VALUES ('383', '31', '杭州', '2');
INSERT INTO `jt_region` VALUES ('384', '31', '湖州', '2');
INSERT INTO `jt_region` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `jt_region` VALUES ('386', '31', '金华', '2');
INSERT INTO `jt_region` VALUES ('387', '31', '丽水', '2');
INSERT INTO `jt_region` VALUES ('388', '31', '宁波', '2');
INSERT INTO `jt_region` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `jt_region` VALUES ('390', '31', '台州', '2');
INSERT INTO `jt_region` VALUES ('391', '31', '温州', '2');
INSERT INTO `jt_region` VALUES ('392', '31', '舟山', '2');
INSERT INTO `jt_region` VALUES ('393', '31', '衢州', '2');
INSERT INTO `jt_region` VALUES ('394', '32', '重庆', '2');
INSERT INTO `jt_region` VALUES ('395', '33', '香港', '2');
INSERT INTO `jt_region` VALUES ('396', '34', '澳门', '2');
INSERT INTO `jt_region` VALUES ('397', '35', '台湾', '2');
INSERT INTO `jt_region` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `jt_region` VALUES ('399', '36', '大观区', '3');
INSERT INTO `jt_region` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `jt_region` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `jt_region` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `jt_region` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `jt_region` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `jt_region` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `jt_region` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `jt_region` VALUES ('407', '36', '望江县', '3');
INSERT INTO `jt_region` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `jt_region` VALUES ('409', '37', '中市区', '3');
INSERT INTO `jt_region` VALUES ('410', '37', '东市区', '3');
INSERT INTO `jt_region` VALUES ('411', '37', '西市区', '3');
INSERT INTO `jt_region` VALUES ('412', '37', '郊区', '3');
INSERT INTO `jt_region` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `jt_region` VALUES ('414', '37', '五河县', '3');
INSERT INTO `jt_region` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `jt_region` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `jt_region` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `jt_region` VALUES ('418', '38', '无为县', '3');
INSERT INTO `jt_region` VALUES ('419', '38', '含山县', '3');
INSERT INTO `jt_region` VALUES ('420', '38', '和县', '3');
INSERT INTO `jt_region` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `jt_region` VALUES ('422', '39', '东至县', '3');
INSERT INTO `jt_region` VALUES ('423', '39', '石台县', '3');
INSERT INTO `jt_region` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `jt_region` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `jt_region` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `jt_region` VALUES ('427', '40', '天长市', '3');
INSERT INTO `jt_region` VALUES ('428', '40', '明光市', '3');
INSERT INTO `jt_region` VALUES ('429', '40', '来安县', '3');
INSERT INTO `jt_region` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `jt_region` VALUES ('431', '40', '定远县', '3');
INSERT INTO `jt_region` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `jt_region` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `jt_region` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `jt_region` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `jt_region` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `jt_region` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `jt_region` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `jt_region` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `jt_region` VALUES ('440', '41', '界首市', '3');
INSERT INTO `jt_region` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `jt_region` VALUES ('442', '41', '太和县', '3');
INSERT INTO `jt_region` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `jt_region` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `jt_region` VALUES ('445', '42', '相山区', '3');
INSERT INTO `jt_region` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `jt_region` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `jt_region` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `jt_region` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `jt_region` VALUES ('450', '43', '大通区', '3');
INSERT INTO `jt_region` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `jt_region` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `jt_region` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `jt_region` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `jt_region` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `jt_region` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `jt_region` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `jt_region` VALUES ('458', '44', '歙县', '3');
INSERT INTO `jt_region` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `jt_region` VALUES ('460', '44', '黟县', '3');
INSERT INTO `jt_region` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `jt_region` VALUES ('462', '45', '金安区', '3');
INSERT INTO `jt_region` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `jt_region` VALUES ('464', '45', '寿县', '3');
INSERT INTO `jt_region` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `jt_region` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `jt_region` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `jt_region` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `jt_region` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `jt_region` VALUES ('470', '46', '花山区', '3');
INSERT INTO `jt_region` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `jt_region` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `jt_region` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `jt_region` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `jt_region` VALUES ('475', '47', '萧县', '3');
INSERT INTO `jt_region` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `jt_region` VALUES ('477', '47', '泗县', '3');
INSERT INTO `jt_region` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `jt_region` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `jt_region` VALUES ('480', '48', '郊区', '3');
INSERT INTO `jt_region` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `jt_region` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `jt_region` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `jt_region` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `jt_region` VALUES ('485', '49', '三山区', '3');
INSERT INTO `jt_region` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `jt_region` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `jt_region` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `jt_region` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `jt_region` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `jt_region` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `jt_region` VALUES ('492', '50', '广德县', '3');
INSERT INTO `jt_region` VALUES ('493', '50', '泾县', '3');
INSERT INTO `jt_region` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `jt_region` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `jt_region` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `jt_region` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `jt_region` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `jt_region` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `jt_region` VALUES ('500', '52', '东城区', '3');
INSERT INTO `jt_region` VALUES ('501', '52', '西城区', '3');
INSERT INTO `jt_region` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `jt_region` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `jt_region` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `jt_region` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `jt_region` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `jt_region` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `jt_region` VALUES ('508', '52', '房山区', '3');
INSERT INTO `jt_region` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `jt_region` VALUES ('510', '52', '通州区', '3');
INSERT INTO `jt_region` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `jt_region` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `jt_region` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `jt_region` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `jt_region` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `jt_region` VALUES ('516', '52', '密云县', '3');
INSERT INTO `jt_region` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `jt_region` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `jt_region` VALUES ('519', '53', '台江区', '3');
INSERT INTO `jt_region` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `jt_region` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `jt_region` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `jt_region` VALUES ('523', '53', '福清市', '3');
INSERT INTO `jt_region` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `jt_region` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `jt_region` VALUES ('526', '53', '连江县', '3');
INSERT INTO `jt_region` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `jt_region` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `jt_region` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `jt_region` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `jt_region` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `jt_region` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `jt_region` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `jt_region` VALUES ('534', '54', '永定县', '3');
INSERT INTO `jt_region` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `jt_region` VALUES ('536', '54', '武平县', '3');
INSERT INTO `jt_region` VALUES ('537', '54', '连城县', '3');
INSERT INTO `jt_region` VALUES ('538', '55', '延平区', '3');
INSERT INTO `jt_region` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `jt_region` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `jt_region` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `jt_region` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `jt_region` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `jt_region` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `jt_region` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `jt_region` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `jt_region` VALUES ('547', '55', '政和县', '3');
INSERT INTO `jt_region` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `jt_region` VALUES ('549', '56', '福安市', '3');
INSERT INTO `jt_region` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `jt_region` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `jt_region` VALUES ('552', '56', '古田县', '3');
INSERT INTO `jt_region` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `jt_region` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `jt_region` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `jt_region` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `jt_region` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `jt_region` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `jt_region` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `jt_region` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `jt_region` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `jt_region` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `jt_region` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `jt_region` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `jt_region` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `jt_region` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `jt_region` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `jt_region` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `jt_region` VALUES ('569', '58', '南安市', '3');
INSERT INTO `jt_region` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `jt_region` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `jt_region` VALUES ('572', '58', '永春县', '3');
INSERT INTO `jt_region` VALUES ('573', '58', '德化县', '3');
INSERT INTO `jt_region` VALUES ('574', '58', '金门县', '3');
INSERT INTO `jt_region` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `jt_region` VALUES ('576', '59', '三元区', '3');
INSERT INTO `jt_region` VALUES ('577', '59', '永安市', '3');
INSERT INTO `jt_region` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `jt_region` VALUES ('579', '59', '清流县', '3');
INSERT INTO `jt_region` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `jt_region` VALUES ('581', '59', '大田县', '3');
INSERT INTO `jt_region` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `jt_region` VALUES ('583', '59', '沙县', '3');
INSERT INTO `jt_region` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `jt_region` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `jt_region` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `jt_region` VALUES ('587', '60', '思明区', '3');
INSERT INTO `jt_region` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `jt_region` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `jt_region` VALUES ('590', '60', '集美区', '3');
INSERT INTO `jt_region` VALUES ('591', '60', '同安区', '3');
INSERT INTO `jt_region` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `jt_region` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `jt_region` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `jt_region` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `jt_region` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `jt_region` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `jt_region` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `jt_region` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `jt_region` VALUES ('600', '61', '东山县', '3');
INSERT INTO `jt_region` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `jt_region` VALUES ('602', '61', '平和县', '3');
INSERT INTO `jt_region` VALUES ('603', '61', '华安县', '3');
INSERT INTO `jt_region` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `jt_region` VALUES ('605', '62', '城关区', '3');
INSERT INTO `jt_region` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `jt_region` VALUES ('607', '62', '西固区', '3');
INSERT INTO `jt_region` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `jt_region` VALUES ('609', '62', '红古区', '3');
INSERT INTO `jt_region` VALUES ('610', '62', '永登县', '3');
INSERT INTO `jt_region` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `jt_region` VALUES ('612', '63', '白银区', '3');
INSERT INTO `jt_region` VALUES ('613', '63', '平川区', '3');
INSERT INTO `jt_region` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `jt_region` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `jt_region` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `jt_region` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `jt_region` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `jt_region` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `jt_region` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `jt_region` VALUES ('621', '64', '漳县', '3');
INSERT INTO `jt_region` VALUES ('622', '64', '岷县', '3');
INSERT INTO `jt_region` VALUES ('623', '64', '安定区', '3');
INSERT INTO `jt_region` VALUES ('624', '64', '安定区', '3');
INSERT INTO `jt_region` VALUES ('625', '65', '合作市', '3');
INSERT INTO `jt_region` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `jt_region` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `jt_region` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `jt_region` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `jt_region` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `jt_region` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `jt_region` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `jt_region` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `jt_region` VALUES ('634', '67', '金川区', '3');
INSERT INTO `jt_region` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `jt_region` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `jt_region` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `jt_region` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `jt_region` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `jt_region` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `jt_region` VALUES ('641', '68', '肃北', '3');
INSERT INTO `jt_region` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `jt_region` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `jt_region` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `jt_region` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `jt_region` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `jt_region` VALUES ('647', '69', '广河县', '3');
INSERT INTO `jt_region` VALUES ('648', '69', '和政县', '3');
INSERT INTO `jt_region` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `jt_region` VALUES ('650', '69', '积石山', '3');
INSERT INTO `jt_region` VALUES ('651', '70', '成县', '3');
INSERT INTO `jt_region` VALUES ('652', '70', '徽县', '3');
INSERT INTO `jt_region` VALUES ('653', '70', '康县', '3');
INSERT INTO `jt_region` VALUES ('654', '70', '礼县', '3');
INSERT INTO `jt_region` VALUES ('655', '70', '两当县', '3');
INSERT INTO `jt_region` VALUES ('656', '70', '文县', '3');
INSERT INTO `jt_region` VALUES ('657', '70', '西和县', '3');
INSERT INTO `jt_region` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `jt_region` VALUES ('659', '70', '武都区', '3');
INSERT INTO `jt_region` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `jt_region` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `jt_region` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `jt_region` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `jt_region` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `jt_region` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `jt_region` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `jt_region` VALUES ('667', '72', '合水县', '3');
INSERT INTO `jt_region` VALUES ('668', '72', '华池县', '3');
INSERT INTO `jt_region` VALUES ('669', '72', '环县', '3');
INSERT INTO `jt_region` VALUES ('670', '72', '宁县', '3');
INSERT INTO `jt_region` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `jt_region` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `jt_region` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `jt_region` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `jt_region` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `jt_region` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `jt_region` VALUES ('677', '73', '清水县', '3');
INSERT INTO `jt_region` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `jt_region` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `jt_region` VALUES ('680', '73', '武山县', '3');
INSERT INTO `jt_region` VALUES ('681', '73', '张家川', '3');
INSERT INTO `jt_region` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `jt_region` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `jt_region` VALUES ('684', '74', '天祝', '3');
INSERT INTO `jt_region` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `jt_region` VALUES ('686', '75', '高台县', '3');
INSERT INTO `jt_region` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `jt_region` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `jt_region` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `jt_region` VALUES ('690', '75', '肃南', '3');
INSERT INTO `jt_region` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `jt_region` VALUES ('692', '76', '从化市', '3');
INSERT INTO `jt_region` VALUES ('693', '76', '天河区', '3');
INSERT INTO `jt_region` VALUES ('694', '76', '东山区', '3');
INSERT INTO `jt_region` VALUES ('695', '76', '白云区', '3');
INSERT INTO `jt_region` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `jt_region` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `jt_region` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `jt_region` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `jt_region` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `jt_region` VALUES ('701', '76', '花都区', '3');
INSERT INTO `jt_region` VALUES ('702', '76', '增城区', '3');
INSERT INTO `jt_region` VALUES ('703', '76', '从化区', '3');
INSERT INTO `jt_region` VALUES ('704', '76', '市郊', '3');
INSERT INTO `jt_region` VALUES ('705', '77', '福田区', '3');
INSERT INTO `jt_region` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `jt_region` VALUES ('707', '77', '南山区', '3');
INSERT INTO `jt_region` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `jt_region` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `jt_region` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `jt_region` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `jt_region` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `jt_region` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `jt_region` VALUES ('714', '79', '南城区', '3');
INSERT INTO `jt_region` VALUES ('715', '79', '东城区', '3');
INSERT INTO `jt_region` VALUES ('716', '79', '万江区', '3');
INSERT INTO `jt_region` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `jt_region` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `jt_region` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `jt_region` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `jt_region` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `jt_region` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `jt_region` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `jt_region` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `jt_region` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `jt_region` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `jt_region` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `jt_region` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `jt_region` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `jt_region` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `jt_region` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `jt_region` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `jt_region` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `jt_region` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `jt_region` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `jt_region` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `jt_region` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `jt_region` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `jt_region` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `jt_region` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `jt_region` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `jt_region` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `jt_region` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `jt_region` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `jt_region` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `jt_region` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `jt_region` VALUES ('747', '80', '南海区', '3');
INSERT INTO `jt_region` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `jt_region` VALUES ('749', '80', '三水区', '3');
INSERT INTO `jt_region` VALUES ('750', '80', '高明区', '3');
INSERT INTO `jt_region` VALUES ('751', '81', '东源县', '3');
INSERT INTO `jt_region` VALUES ('752', '81', '和平县', '3');
INSERT INTO `jt_region` VALUES ('753', '81', '源城区', '3');
INSERT INTO `jt_region` VALUES ('754', '81', '连平县', '3');
INSERT INTO `jt_region` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `jt_region` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `jt_region` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `jt_region` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `jt_region` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `jt_region` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `jt_region` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `jt_region` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `jt_region` VALUES ('763', '83', '江海区', '3');
INSERT INTO `jt_region` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `jt_region` VALUES ('765', '83', '新会区', '3');
INSERT INTO `jt_region` VALUES ('766', '83', '台山市', '3');
INSERT INTO `jt_region` VALUES ('767', '83', '开平市', '3');
INSERT INTO `jt_region` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `jt_region` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `jt_region` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `jt_region` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `jt_region` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `jt_region` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `jt_region` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `jt_region` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `jt_region` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `jt_region` VALUES ('777', '85', '高州市', '3');
INSERT INTO `jt_region` VALUES ('778', '85', '化州市', '3');
INSERT INTO `jt_region` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `jt_region` VALUES ('780', '85', '电白县', '3');
INSERT INTO `jt_region` VALUES ('781', '86', '梅县', '3');
INSERT INTO `jt_region` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `jt_region` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `jt_region` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `jt_region` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `jt_region` VALUES ('786', '86', '五华县', '3');
INSERT INTO `jt_region` VALUES ('787', '86', '平远县', '3');
INSERT INTO `jt_region` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `jt_region` VALUES ('789', '87', '清城区', '3');
INSERT INTO `jt_region` VALUES ('790', '87', '英德市', '3');
INSERT INTO `jt_region` VALUES ('791', '87', '连州市', '3');
INSERT INTO `jt_region` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `jt_region` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `jt_region` VALUES ('794', '87', '清新县', '3');
INSERT INTO `jt_region` VALUES ('795', '87', '连山', '3');
INSERT INTO `jt_region` VALUES ('796', '87', '连南', '3');
INSERT INTO `jt_region` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `jt_region` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `jt_region` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `jt_region` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `jt_region` VALUES ('801', '88', '金平区', '3');
INSERT INTO `jt_region` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `jt_region` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `jt_region` VALUES ('804', '89', '城区', '3');
INSERT INTO `jt_region` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `jt_region` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `jt_region` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `jt_region` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `jt_region` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `jt_region` VALUES ('810', '90', '武江区', '3');
INSERT INTO `jt_region` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `jt_region` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `jt_region` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `jt_region` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `jt_region` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `jt_region` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `jt_region` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `jt_region` VALUES ('818', '90', '乳源', '3');
INSERT INTO `jt_region` VALUES ('819', '91', '江城区', '3');
INSERT INTO `jt_region` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `jt_region` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `jt_region` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `jt_region` VALUES ('823', '92', '云城区', '3');
INSERT INTO `jt_region` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `jt_region` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `jt_region` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `jt_region` VALUES ('827', '92', '云安县', '3');
INSERT INTO `jt_region` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `jt_region` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `jt_region` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `jt_region` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `jt_region` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `jt_region` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `jt_region` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `jt_region` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `jt_region` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `jt_region` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `jt_region` VALUES ('838', '94', '高要市', '3');
INSERT INTO `jt_region` VALUES ('839', '94', '四会市', '3');
INSERT INTO `jt_region` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `jt_region` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `jt_region` VALUES ('842', '94', '封开县', '3');
INSERT INTO `jt_region` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `jt_region` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `jt_region` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `jt_region` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `jt_region` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `jt_region` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `jt_region` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `jt_region` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `jt_region` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `jt_region` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `jt_region` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `jt_region` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `jt_region` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `jt_region` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `jt_region` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `jt_region` VALUES ('858', '97', '江南区', '3');
INSERT INTO `jt_region` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `jt_region` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `jt_region` VALUES ('861', '97', '马山县', '3');
INSERT INTO `jt_region` VALUES ('862', '97', '上林县', '3');
INSERT INTO `jt_region` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `jt_region` VALUES ('864', '97', '横县', '3');
INSERT INTO `jt_region` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `jt_region` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `jt_region` VALUES ('867', '98', '象山区', '3');
INSERT INTO `jt_region` VALUES ('868', '98', '七星区', '3');
INSERT INTO `jt_region` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `jt_region` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `jt_region` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `jt_region` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `jt_region` VALUES ('873', '98', '全州县', '3');
INSERT INTO `jt_region` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `jt_region` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `jt_region` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `jt_region` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `jt_region` VALUES ('878', '98', '资源县', '3');
INSERT INTO `jt_region` VALUES ('879', '98', '永福县', '3');
INSERT INTO `jt_region` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `jt_region` VALUES ('881', '98', '恭城', '3');
INSERT INTO `jt_region` VALUES ('882', '99', '右江区', '3');
INSERT INTO `jt_region` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `jt_region` VALUES ('884', '99', '平果县', '3');
INSERT INTO `jt_region` VALUES ('885', '99', '西林县', '3');
INSERT INTO `jt_region` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `jt_region` VALUES ('887', '99', '德保县', '3');
INSERT INTO `jt_region` VALUES ('888', '99', '田林县', '3');
INSERT INTO `jt_region` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `jt_region` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `jt_region` VALUES ('891', '99', '田东县', '3');
INSERT INTO `jt_region` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `jt_region` VALUES ('893', '99', '隆林', '3');
INSERT INTO `jt_region` VALUES ('894', '100', '海城区', '3');
INSERT INTO `jt_region` VALUES ('895', '100', '银海区', '3');
INSERT INTO `jt_region` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `jt_region` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `jt_region` VALUES ('898', '101', '江州区', '3');
INSERT INTO `jt_region` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `jt_region` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `jt_region` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `jt_region` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `jt_region` VALUES ('903', '101', '大新县', '3');
INSERT INTO `jt_region` VALUES ('904', '101', '天等县', '3');
INSERT INTO `jt_region` VALUES ('905', '102', '港口区', '3');
INSERT INTO `jt_region` VALUES ('906', '102', '防城区', '3');
INSERT INTO `jt_region` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `jt_region` VALUES ('908', '102', '上思县', '3');
INSERT INTO `jt_region` VALUES ('909', '103', '港北区', '3');
INSERT INTO `jt_region` VALUES ('910', '103', '港南区', '3');
INSERT INTO `jt_region` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `jt_region` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `jt_region` VALUES ('913', '103', '平南县', '3');
INSERT INTO `jt_region` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `jt_region` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `jt_region` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `jt_region` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `jt_region` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `jt_region` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `jt_region` VALUES ('920', '104', '都安', '3');
INSERT INTO `jt_region` VALUES ('921', '104', '罗城', '3');
INSERT INTO `jt_region` VALUES ('922', '104', '巴马', '3');
INSERT INTO `jt_region` VALUES ('923', '104', '环江', '3');
INSERT INTO `jt_region` VALUES ('924', '104', '大化', '3');
INSERT INTO `jt_region` VALUES ('925', '105', '八步区', '3');
INSERT INTO `jt_region` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `jt_region` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `jt_region` VALUES ('928', '105', '富川', '3');
INSERT INTO `jt_region` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `jt_region` VALUES ('930', '106', '合山市', '3');
INSERT INTO `jt_region` VALUES ('931', '106', '象州县', '3');
INSERT INTO `jt_region` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `jt_region` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `jt_region` VALUES ('934', '106', '金秀', '3');
INSERT INTO `jt_region` VALUES ('935', '107', '城中区', '3');
INSERT INTO `jt_region` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `jt_region` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `jt_region` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `jt_region` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `jt_region` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `jt_region` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `jt_region` VALUES ('942', '107', '融安县', '3');
INSERT INTO `jt_region` VALUES ('943', '107', '融水', '3');
INSERT INTO `jt_region` VALUES ('944', '107', '三江', '3');
INSERT INTO `jt_region` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `jt_region` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `jt_region` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `jt_region` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `jt_region` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `jt_region` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `jt_region` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `jt_region` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `jt_region` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `jt_region` VALUES ('954', '109', '藤县', '3');
INSERT INTO `jt_region` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `jt_region` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `jt_region` VALUES ('957', '110', '北流市', '3');
INSERT INTO `jt_region` VALUES ('958', '110', '容县', '3');
INSERT INTO `jt_region` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `jt_region` VALUES ('960', '110', '博白县', '3');
INSERT INTO `jt_region` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `jt_region` VALUES ('962', '111', '南明区', '3');
INSERT INTO `jt_region` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `jt_region` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `jt_region` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `jt_region` VALUES ('966', '111', '白云区', '3');
INSERT INTO `jt_region` VALUES ('967', '111', '小河区', '3');
INSERT INTO `jt_region` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `jt_region` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `jt_region` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `jt_region` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `jt_region` VALUES ('972', '111', '修文县', '3');
INSERT INTO `jt_region` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `jt_region` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `jt_region` VALUES ('975', '112', '关岭', '3');
INSERT INTO `jt_region` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `jt_region` VALUES ('977', '112', '紫云', '3');
INSERT INTO `jt_region` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `jt_region` VALUES ('979', '112', '普定县', '3');
INSERT INTO `jt_region` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `jt_region` VALUES ('981', '113', '大方县', '3');
INSERT INTO `jt_region` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `jt_region` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `jt_region` VALUES ('984', '113', '织金县', '3');
INSERT INTO `jt_region` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `jt_region` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `jt_region` VALUES ('987', '113', '威宁', '3');
INSERT INTO `jt_region` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `jt_region` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `jt_region` VALUES ('990', '114', '水城县', '3');
INSERT INTO `jt_region` VALUES ('991', '114', '盘县', '3');
INSERT INTO `jt_region` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `jt_region` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `jt_region` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `jt_region` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `jt_region` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `jt_region` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `jt_region` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `jt_region` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `jt_region` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `jt_region` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `jt_region` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `jt_region` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `jt_region` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `jt_region` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `jt_region` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `jt_region` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `jt_region` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `jt_region` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `jt_region` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `jt_region` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `jt_region` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `jt_region` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `jt_region` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `jt_region` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `jt_region` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `jt_region` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `jt_region` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `jt_region` VALUES ('1019', '116', '三都', '3');
INSERT INTO `jt_region` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `jt_region` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `jt_region` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `jt_region` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `jt_region` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `jt_region` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `jt_region` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `jt_region` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `jt_region` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `jt_region` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `jt_region` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `jt_region` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `jt_region` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `jt_region` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `jt_region` VALUES ('1034', '118', '印江', '3');
INSERT INTO `jt_region` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `jt_region` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `jt_region` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `jt_region` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `jt_region` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `jt_region` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `jt_region` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `jt_region` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `jt_region` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `jt_region` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `jt_region` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `jt_region` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `jt_region` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `jt_region` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `jt_region` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `jt_region` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `jt_region` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `jt_region` VALUES ('1052', '119', '道真', '3');
INSERT INTO `jt_region` VALUES ('1053', '119', '务川', '3');
INSERT INTO `jt_region` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `jt_region` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `jt_region` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `jt_region` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `jt_region` VALUES ('1058', '137', '市区', '3');
INSERT INTO `jt_region` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `jt_region` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `jt_region` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `jt_region` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `jt_region` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `jt_region` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `jt_region` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `jt_region` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `jt_region` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `jt_region` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `jt_region` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `jt_region` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `jt_region` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `jt_region` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `jt_region` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `jt_region` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `jt_region` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `jt_region` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `jt_region` VALUES ('1077', '137', '其他', '3');
INSERT INTO `jt_region` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `jt_region` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `jt_region` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `jt_region` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `jt_region` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `jt_region` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `jt_region` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `jt_region` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `jt_region` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `jt_region` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `jt_region` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `jt_region` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `jt_region` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `jt_region` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `jt_region` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `jt_region` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `jt_region` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `jt_region` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `jt_region` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `jt_region` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `jt_region` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `jt_region` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `jt_region` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `jt_region` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `jt_region` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `jt_region` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `jt_region` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `jt_region` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `jt_region` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `jt_region` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `jt_region` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `jt_region` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `jt_region` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `jt_region` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `jt_region` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `jt_region` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `jt_region` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `jt_region` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `jt_region` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `jt_region` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `jt_region` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `jt_region` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `jt_region` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `jt_region` VALUES ('1121', '139', '易县', '3');
INSERT INTO `jt_region` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `jt_region` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `jt_region` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `jt_region` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `jt_region` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `jt_region` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `jt_region` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `jt_region` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `jt_region` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `jt_region` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `jt_region` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `jt_region` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `jt_region` VALUES ('1134', '140', '青县', '3');
INSERT INTO `jt_region` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `jt_region` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `jt_region` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `jt_region` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `jt_region` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `jt_region` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `jt_region` VALUES ('1141', '140', '献县', '3');
INSERT INTO `jt_region` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `jt_region` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `jt_region` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `jt_region` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `jt_region` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `jt_region` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `jt_region` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `jt_region` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `jt_region` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `jt_region` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `jt_region` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `jt_region` VALUES ('1153', '141', '围场', '3');
INSERT INTO `jt_region` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `jt_region` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `jt_region` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `jt_region` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `jt_region` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `jt_region` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `jt_region` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `jt_region` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `jt_region` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `jt_region` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `jt_region` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `jt_region` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `jt_region` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `jt_region` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `jt_region` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `jt_region` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `jt_region` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `jt_region` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `jt_region` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `jt_region` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `jt_region` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `jt_region` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `jt_region` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `jt_region` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `jt_region` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `jt_region` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `jt_region` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `jt_region` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `jt_region` VALUES ('1182', '143', '景县', '3');
INSERT INTO `jt_region` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `jt_region` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `jt_region` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `jt_region` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `jt_region` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `jt_region` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `jt_region` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `jt_region` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `jt_region` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `jt_region` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `jt_region` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `jt_region` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `jt_region` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `jt_region` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `jt_region` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `jt_region` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `jt_region` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `jt_region` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `jt_region` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `jt_region` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `jt_region` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `jt_region` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `jt_region` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `jt_region` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `jt_region` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `jt_region` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `jt_region` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `jt_region` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `jt_region` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `jt_region` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `jt_region` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `jt_region` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `jt_region` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `jt_region` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `jt_region` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `jt_region` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `jt_region` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `jt_region` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `jt_region` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `jt_region` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `jt_region` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `jt_region` VALUES ('1224', '147', '任县', '3');
INSERT INTO `jt_region` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `jt_region` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `jt_region` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `jt_region` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `jt_region` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `jt_region` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `jt_region` VALUES ('1231', '147', '威县', '3');
INSERT INTO `jt_region` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `jt_region` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `jt_region` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `jt_region` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `jt_region` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `jt_region` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `jt_region` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `jt_region` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `jt_region` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `jt_region` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `jt_region` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `jt_region` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `jt_region` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `jt_region` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `jt_region` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `jt_region` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `jt_region` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `jt_region` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `jt_region` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `jt_region` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `jt_region` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `jt_region` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `jt_region` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `jt_region` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `jt_region` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `jt_region` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `jt_region` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `jt_region` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `jt_region` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `jt_region` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `jt_region` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `jt_region` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `jt_region` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `jt_region` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `jt_region` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `jt_region` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `jt_region` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `jt_region` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `jt_region` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `jt_region` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `jt_region` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `jt_region` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `jt_region` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `jt_region` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `jt_region` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `jt_region` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `jt_region` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `jt_region` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `jt_region` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `jt_region` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `jt_region` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `jt_region` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `jt_region` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `jt_region` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `jt_region` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `jt_region` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `jt_region` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `jt_region` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `jt_region` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `jt_region` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `jt_region` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `jt_region` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `jt_region` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `jt_region` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `jt_region` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `jt_region` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `jt_region` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `jt_region` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `jt_region` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `jt_region` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `jt_region` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `jt_region` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `jt_region` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `jt_region` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `jt_region` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `jt_region` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `jt_region` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `jt_region` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `jt_region` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `jt_region` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `jt_region` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `jt_region` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `jt_region` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `jt_region` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `jt_region` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `jt_region` VALUES ('1317', '155', '温县', '3');
INSERT INTO `jt_region` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `jt_region` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `jt_region` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `jt_region` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `jt_region` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `jt_region` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `jt_region` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `jt_region` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `jt_region` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `jt_region` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `jt_region` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `jt_region` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `jt_region` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `jt_region` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `jt_region` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `jt_region` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `jt_region` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `jt_region` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `jt_region` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `jt_region` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `jt_region` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `jt_region` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `jt_region` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `jt_region` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `jt_region` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `jt_region` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `jt_region` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `jt_region` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `jt_region` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `jt_region` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `jt_region` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `jt_region` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `jt_region` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `jt_region` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `jt_region` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `jt_region` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `jt_region` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `jt_region` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `jt_region` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `jt_region` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `jt_region` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `jt_region` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `jt_region` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `jt_region` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `jt_region` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `jt_region` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `jt_region` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `jt_region` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `jt_region` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `jt_region` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `jt_region` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `jt_region` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `jt_region` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `jt_region` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `jt_region` VALUES ('1372', '161', '新县', '3');
INSERT INTO `jt_region` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `jt_region` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `jt_region` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `jt_region` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `jt_region` VALUES ('1377', '161', '息县', '3');
INSERT INTO `jt_region` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `jt_region` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `jt_region` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `jt_region` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `jt_region` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `jt_region` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `jt_region` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `jt_region` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `jt_region` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `jt_region` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `jt_region` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `jt_region` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `jt_region` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `jt_region` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `jt_region` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `jt_region` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `jt_region` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `jt_region` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `jt_region` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `jt_region` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `jt_region` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `jt_region` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `jt_region` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `jt_region` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `jt_region` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `jt_region` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `jt_region` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `jt_region` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `jt_region` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `jt_region` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `jt_region` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `jt_region` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `jt_region` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `jt_region` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `jt_region` VALUES ('1412', '166', '范县', '3');
INSERT INTO `jt_region` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `jt_region` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `jt_region` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `jt_region` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `jt_region` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `jt_region` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `jt_region` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `jt_region` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `jt_region` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `jt_region` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `jt_region` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `jt_region` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `jt_region` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `jt_region` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `jt_region` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `jt_region` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `jt_region` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `jt_region` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `jt_region` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `jt_region` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `jt_region` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `jt_region` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `jt_region` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `jt_region` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `jt_region` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `jt_region` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `jt_region` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `jt_region` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `jt_region` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `jt_region` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `jt_region` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `jt_region` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `jt_region` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `jt_region` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `jt_region` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `jt_region` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `jt_region` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `jt_region` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `jt_region` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `jt_region` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `jt_region` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `jt_region` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `jt_region` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `jt_region` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `jt_region` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `jt_region` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `jt_region` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `jt_region` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `jt_region` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `jt_region` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `jt_region` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `jt_region` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `jt_region` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `jt_region` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `jt_region` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `jt_region` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `jt_region` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `jt_region` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `jt_region` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `jt_region` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `jt_region` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `jt_region` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `jt_region` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `jt_region` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `jt_region` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `jt_region` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `jt_region` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `jt_region` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `jt_region` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `jt_region` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `jt_region` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `jt_region` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `jt_region` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `jt_region` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `jt_region` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `jt_region` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `jt_region` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `jt_region` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `jt_region` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `jt_region` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `jt_region` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `jt_region` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `jt_region` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `jt_region` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `jt_region` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `jt_region` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `jt_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `jt_region` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `jt_region` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `jt_region` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `jt_region` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `jt_region` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `jt_region` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `jt_region` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `jt_region` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `jt_region` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `jt_region` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `jt_region` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `jt_region` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `jt_region` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `jt_region` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `jt_region` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `jt_region` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `jt_region` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `jt_region` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `jt_region` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `jt_region` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `jt_region` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `jt_region` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `jt_region` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `jt_region` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `jt_region` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `jt_region` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `jt_region` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `jt_region` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `jt_region` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `jt_region` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `jt_region` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `jt_region` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `jt_region` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `jt_region` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `jt_region` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `jt_region` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `jt_region` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `jt_region` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `jt_region` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `jt_region` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `jt_region` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `jt_region` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `jt_region` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `jt_region` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `jt_region` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `jt_region` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `jt_region` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `jt_region` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `jt_region` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `jt_region` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `jt_region` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `jt_region` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `jt_region` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `jt_region` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `jt_region` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `jt_region` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `jt_region` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `jt_region` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `jt_region` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `jt_region` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `jt_region` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `jt_region` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `jt_region` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `jt_region` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `jt_region` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `jt_region` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `jt_region` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `jt_region` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `jt_region` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `jt_region` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `jt_region` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `jt_region` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `jt_region` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `jt_region` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `jt_region` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `jt_region` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `jt_region` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `jt_region` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `jt_region` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `jt_region` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `jt_region` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `jt_region` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `jt_region` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `jt_region` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `jt_region` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `jt_region` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `jt_region` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `jt_region` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `jt_region` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `jt_region` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `jt_region` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `jt_region` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `jt_region` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `jt_region` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `jt_region` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `jt_region` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `jt_region` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `jt_region` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `jt_region` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `jt_region` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `jt_region` VALUES ('1600', '189', '房县', '3');
INSERT INTO `jt_region` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `jt_region` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `jt_region` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `jt_region` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `jt_region` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `jt_region` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `jt_region` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `jt_region` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `jt_region` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `jt_region` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `jt_region` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `jt_region` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `jt_region` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `jt_region` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `jt_region` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `jt_region` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `jt_region` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `jt_region` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `jt_region` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `jt_region` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `jt_region` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `jt_region` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `jt_region` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `jt_region` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `jt_region` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `jt_region` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `jt_region` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `jt_region` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `jt_region` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `jt_region` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `jt_region` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `jt_region` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `jt_region` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `jt_region` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `jt_region` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `jt_region` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `jt_region` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `jt_region` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `jt_region` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `jt_region` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `jt_region` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `jt_region` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `jt_region` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `jt_region` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `jt_region` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `jt_region` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `jt_region` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `jt_region` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `jt_region` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `jt_region` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `jt_region` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `jt_region` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `jt_region` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `jt_region` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `jt_region` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `jt_region` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `jt_region` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `jt_region` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `jt_region` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `jt_region` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `jt_region` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `jt_region` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `jt_region` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `jt_region` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `jt_region` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `jt_region` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `jt_region` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `jt_region` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `jt_region` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `jt_region` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `jt_region` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `jt_region` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `jt_region` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `jt_region` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `jt_region` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `jt_region` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `jt_region` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `jt_region` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `jt_region` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `jt_region` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `jt_region` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `jt_region` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `jt_region` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `jt_region` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `jt_region` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `jt_region` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `jt_region` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `jt_region` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `jt_region` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `jt_region` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `jt_region` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `jt_region` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `jt_region` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `jt_region` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `jt_region` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `jt_region` VALUES ('1696', '202', '通道', '3');
INSERT INTO `jt_region` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `jt_region` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `jt_region` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `jt_region` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `jt_region` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `jt_region` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `jt_region` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `jt_region` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `jt_region` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `jt_region` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `jt_region` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `jt_region` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `jt_region` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `jt_region` VALUES ('1710', '204', '城步', '3');
INSERT INTO `jt_region` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `jt_region` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `jt_region` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `jt_region` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `jt_region` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `jt_region` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `jt_region` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `jt_region` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `jt_region` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `jt_region` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `jt_region` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `jt_region` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `jt_region` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `jt_region` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `jt_region` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `jt_region` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `jt_region` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `jt_region` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `jt_region` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `jt_region` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `jt_region` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `jt_region` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `jt_region` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `jt_region` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `jt_region` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `jt_region` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `jt_region` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `jt_region` VALUES ('1738', '207', '南县', '3');
INSERT INTO `jt_region` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `jt_region` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `jt_region` VALUES ('1741', '208', '江华', '3');
INSERT INTO `jt_region` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `jt_region` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `jt_region` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `jt_region` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `jt_region` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `jt_region` VALUES ('1747', '208', '道县', '3');
INSERT INTO `jt_region` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `jt_region` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `jt_region` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `jt_region` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `jt_region` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `jt_region` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `jt_region` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `jt_region` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `jt_region` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `jt_region` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `jt_region` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `jt_region` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `jt_region` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `jt_region` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `jt_region` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `jt_region` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `jt_region` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `jt_region` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `jt_region` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `jt_region` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `jt_region` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `jt_region` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `jt_region` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `jt_region` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `jt_region` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `jt_region` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `jt_region` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `jt_region` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `jt_region` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `jt_region` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `jt_region` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `jt_region` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `jt_region` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `jt_region` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `jt_region` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `jt_region` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `jt_region` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `jt_region` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `jt_region` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `jt_region` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `jt_region` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `jt_region` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `jt_region` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `jt_region` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `jt_region` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `jt_region` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `jt_region` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `jt_region` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `jt_region` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `jt_region` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `jt_region` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `jt_region` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `jt_region` VALUES ('1800', '214', '长白', '3');
INSERT INTO `jt_region` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `jt_region` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `jt_region` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `jt_region` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `jt_region` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `jt_region` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `jt_region` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `jt_region` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `jt_region` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `jt_region` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `jt_region` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `jt_region` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `jt_region` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `jt_region` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `jt_region` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `jt_region` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `jt_region` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `jt_region` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `jt_region` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `jt_region` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `jt_region` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `jt_region` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `jt_region` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `jt_region` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `jt_region` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `jt_region` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `jt_region` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `jt_region` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `jt_region` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `jt_region` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `jt_region` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `jt_region` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `jt_region` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `jt_region` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `jt_region` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `jt_region` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `jt_region` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `jt_region` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `jt_region` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `jt_region` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `jt_region` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `jt_region` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `jt_region` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `jt_region` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `jt_region` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `jt_region` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `jt_region` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `jt_region` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `jt_region` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `jt_region` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `jt_region` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `jt_region` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `jt_region` VALUES ('1853', '221', '园区', '3');
INSERT INTO `jt_region` VALUES ('1854', '221', '新区', '3');
INSERT INTO `jt_region` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `jt_region` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `jt_region` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `jt_region` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `jt_region` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `jt_region` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `jt_region` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `jt_region` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `jt_region` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `jt_region` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `jt_region` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `jt_region` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `jt_region` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `jt_region` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `jt_region` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `jt_region` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `jt_region` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `jt_region` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `jt_region` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `jt_region` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `jt_region` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `jt_region` VALUES ('1876', '222', '新区', '3');
INSERT INTO `jt_region` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `jt_region` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `jt_region` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `jt_region` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `jt_region` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `jt_region` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `jt_region` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `jt_region` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `jt_region` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `jt_region` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `jt_region` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `jt_region` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `jt_region` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `jt_region` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `jt_region` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `jt_region` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `jt_region` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `jt_region` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `jt_region` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `jt_region` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `jt_region` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `jt_region` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `jt_region` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `jt_region` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `jt_region` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `jt_region` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `jt_region` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `jt_region` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `jt_region` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `jt_region` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `jt_region` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `jt_region` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `jt_region` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `jt_region` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `jt_region` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `jt_region` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `jt_region` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `jt_region` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `jt_region` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `jt_region` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `jt_region` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `jt_region` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `jt_region` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `jt_region` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `jt_region` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `jt_region` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `jt_region` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `jt_region` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `jt_region` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `jt_region` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `jt_region` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `jt_region` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `jt_region` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `jt_region` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `jt_region` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `jt_region` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `jt_region` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `jt_region` VALUES ('1934', '230', '城区', '3');
INSERT INTO `jt_region` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `jt_region` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `jt_region` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `jt_region` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `jt_region` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `jt_region` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `jt_region` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `jt_region` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `jt_region` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `jt_region` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `jt_region` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `jt_region` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `jt_region` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `jt_region` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `jt_region` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `jt_region` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `jt_region` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `jt_region` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `jt_region` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `jt_region` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `jt_region` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `jt_region` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `jt_region` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `jt_region` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `jt_region` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `jt_region` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `jt_region` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `jt_region` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `jt_region` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `jt_region` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `jt_region` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `jt_region` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `jt_region` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `jt_region` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `jt_region` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `jt_region` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `jt_region` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `jt_region` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `jt_region` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `jt_region` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `jt_region` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `jt_region` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `jt_region` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `jt_region` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `jt_region` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `jt_region` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `jt_region` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `jt_region` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `jt_region` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `jt_region` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `jt_region` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `jt_region` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `jt_region` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `jt_region` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `jt_region` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `jt_region` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `jt_region` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `jt_region` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `jt_region` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `jt_region` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `jt_region` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `jt_region` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `jt_region` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `jt_region` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `jt_region` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `jt_region` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `jt_region` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `jt_region` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `jt_region` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `jt_region` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `jt_region` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `jt_region` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `jt_region` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `jt_region` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `jt_region` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `jt_region` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `jt_region` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `jt_region` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `jt_region` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `jt_region` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `jt_region` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `jt_region` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `jt_region` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `jt_region` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `jt_region` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `jt_region` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `jt_region` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `jt_region` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `jt_region` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `jt_region` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `jt_region` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `jt_region` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `jt_region` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `jt_region` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `jt_region` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `jt_region` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `jt_region` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `jt_region` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `jt_region` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `jt_region` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `jt_region` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `jt_region` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `jt_region` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `jt_region` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `jt_region` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `jt_region` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `jt_region` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `jt_region` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `jt_region` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `jt_region` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `jt_region` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `jt_region` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `jt_region` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `jt_region` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `jt_region` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `jt_region` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `jt_region` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `jt_region` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `jt_region` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `jt_region` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `jt_region` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `jt_region` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `jt_region` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `jt_region` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `jt_region` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `jt_region` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `jt_region` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `jt_region` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `jt_region` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `jt_region` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `jt_region` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `jt_region` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `jt_region` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `jt_region` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `jt_region` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `jt_region` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `jt_region` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `jt_region` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `jt_region` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `jt_region` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `jt_region` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `jt_region` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `jt_region` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `jt_region` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `jt_region` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `jt_region` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `jt_region` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `jt_region` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `jt_region` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `jt_region` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `jt_region` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `jt_region` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `jt_region` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `jt_region` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `jt_region` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `jt_region` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `jt_region` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `jt_region` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `jt_region` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `jt_region` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `jt_region` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `jt_region` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `jt_region` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `jt_region` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `jt_region` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `jt_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `jt_region` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `jt_region` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `jt_region` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `jt_region` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `jt_region` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `jt_region` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `jt_region` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `jt_region` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `jt_region` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `jt_region` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `jt_region` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `jt_region` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `jt_region` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `jt_region` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `jt_region` VALUES ('2115', '250', '清原', '3');
INSERT INTO `jt_region` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `jt_region` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `jt_region` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `jt_region` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `jt_region` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `jt_region` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `jt_region` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `jt_region` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `jt_region` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `jt_region` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `jt_region` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `jt_region` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `jt_region` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `jt_region` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `jt_region` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `jt_region` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `jt_region` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `jt_region` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `jt_region` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `jt_region` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `jt_region` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `jt_region` VALUES ('2137', '253', '义县', '3');
INSERT INTO `jt_region` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `jt_region` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `jt_region` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `jt_region` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `jt_region` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `jt_region` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `jt_region` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `jt_region` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `jt_region` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `jt_region` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `jt_region` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `jt_region` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `jt_region` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `jt_region` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `jt_region` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `jt_region` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `jt_region` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `jt_region` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `jt_region` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `jt_region` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `jt_region` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `jt_region` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `jt_region` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `jt_region` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `jt_region` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `jt_region` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `jt_region` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `jt_region` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `jt_region` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `jt_region` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `jt_region` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `jt_region` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `jt_region` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `jt_region` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `jt_region` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `jt_region` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `jt_region` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `jt_region` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `jt_region` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `jt_region` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `jt_region` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `jt_region` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `jt_region` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `jt_region` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `jt_region` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `jt_region` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `jt_region` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `jt_region` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `jt_region` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `jt_region` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `jt_region` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `jt_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `jt_region` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `jt_region` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `jt_region` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `jt_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `jt_region` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `jt_region` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `jt_region` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `jt_region` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `jt_region` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `jt_region` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `jt_region` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `jt_region` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `jt_region` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `jt_region` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `jt_region` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `jt_region` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `jt_region` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `jt_region` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `jt_region` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `jt_region` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `jt_region` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `jt_region` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `jt_region` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `jt_region` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `jt_region` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `jt_region` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `jt_region` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `jt_region` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `jt_region` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `jt_region` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `jt_region` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `jt_region` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `jt_region` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `jt_region` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `jt_region` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `jt_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `jt_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `jt_region` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `jt_region` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `jt_region` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `jt_region` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `jt_region` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `jt_region` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `jt_region` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `jt_region` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `jt_region` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `jt_region` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `jt_region` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `jt_region` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `jt_region` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `jt_region` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `jt_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `jt_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `jt_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `jt_region` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `jt_region` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `jt_region` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `jt_region` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `jt_region` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `jt_region` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `jt_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `jt_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `jt_region` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `jt_region` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `jt_region` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `jt_region` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `jt_region` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `jt_region` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `jt_region` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `jt_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `jt_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `jt_region` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `jt_region` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `jt_region` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `jt_region` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `jt_region` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `jt_region` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `jt_region` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `jt_region` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `jt_region` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `jt_region` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `jt_region` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `jt_region` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `jt_region` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `jt_region` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `jt_region` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `jt_region` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `jt_region` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `jt_region` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `jt_region` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `jt_region` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `jt_region` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `jt_region` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `jt_region` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `jt_region` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `jt_region` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `jt_region` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `jt_region` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `jt_region` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `jt_region` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `jt_region` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `jt_region` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `jt_region` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `jt_region` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `jt_region` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `jt_region` VALUES ('2295', '275', '大通', '3');
INSERT INTO `jt_region` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `jt_region` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `jt_region` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `jt_region` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `jt_region` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `jt_region` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `jt_region` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `jt_region` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `jt_region` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `jt_region` VALUES ('2305', '277', '门源', '3');
INSERT INTO `jt_region` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `jt_region` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `jt_region` VALUES ('2308', '278', '民和', '3');
INSERT INTO `jt_region` VALUES ('2309', '278', '互助', '3');
INSERT INTO `jt_region` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `jt_region` VALUES ('2311', '278', '循化', '3');
INSERT INTO `jt_region` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `jt_region` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `jt_region` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `jt_region` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `jt_region` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `jt_region` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `jt_region` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `jt_region` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `jt_region` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `jt_region` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `jt_region` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `jt_region` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `jt_region` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `jt_region` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `jt_region` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `jt_region` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `jt_region` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `jt_region` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `jt_region` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `jt_region` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `jt_region` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `jt_region` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `jt_region` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `jt_region` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `jt_region` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `jt_region` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `jt_region` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `jt_region` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `jt_region` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `jt_region` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `jt_region` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `jt_region` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `jt_region` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `jt_region` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `jt_region` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `jt_region` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `jt_region` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `jt_region` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `jt_region` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `jt_region` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `jt_region` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `jt_region` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `jt_region` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `jt_region` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `jt_region` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `jt_region` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `jt_region` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `jt_region` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `jt_region` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `jt_region` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `jt_region` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `jt_region` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `jt_region` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `jt_region` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `jt_region` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `jt_region` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `jt_region` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `jt_region` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `jt_region` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `jt_region` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `jt_region` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `jt_region` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `jt_region` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `jt_region` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `jt_region` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `jt_region` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `jt_region` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `jt_region` VALUES ('2379', '288', '单县', '3');
INSERT INTO `jt_region` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `jt_region` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `jt_region` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `jt_region` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `jt_region` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `jt_region` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `jt_region` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `jt_region` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `jt_region` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `jt_region` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `jt_region` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `jt_region` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `jt_region` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `jt_region` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `jt_region` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `jt_region` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `jt_region` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `jt_region` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `jt_region` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `jt_region` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `jt_region` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `jt_region` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `jt_region` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `jt_region` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `jt_region` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `jt_region` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `jt_region` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `jt_region` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `jt_region` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `jt_region` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `jt_region` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `jt_region` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `jt_region` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `jt_region` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `jt_region` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `jt_region` VALUES ('2415', '292', '费县', '3');
INSERT INTO `jt_region` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `jt_region` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `jt_region` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `jt_region` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `jt_region` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `jt_region` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `jt_region` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `jt_region` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `jt_region` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `jt_region` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `jt_region` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `jt_region` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `jt_region` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `jt_region` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `jt_region` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `jt_region` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `jt_region` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `jt_region` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `jt_region` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `jt_region` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `jt_region` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `jt_region` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `jt_region` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `jt_region` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `jt_region` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `jt_region` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `jt_region` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `jt_region` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `jt_region` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `jt_region` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `jt_region` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `jt_region` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `jt_region` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `jt_region` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `jt_region` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `jt_region` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `jt_region` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `jt_region` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `jt_region` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `jt_region` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `jt_region` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `jt_region` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `jt_region` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `jt_region` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `jt_region` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `jt_region` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `jt_region` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `jt_region` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `jt_region` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `jt_region` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `jt_region` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `jt_region` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `jt_region` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `jt_region` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `jt_region` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `jt_region` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `jt_region` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `jt_region` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `jt_region` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `jt_region` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `jt_region` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `jt_region` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `jt_region` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `jt_region` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `jt_region` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `jt_region` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `jt_region` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `jt_region` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `jt_region` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `jt_region` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `jt_region` VALUES ('2486', '301', '城区', '3');
INSERT INTO `jt_region` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `jt_region` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `jt_region` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `jt_region` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `jt_region` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `jt_region` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `jt_region` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `jt_region` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `jt_region` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `jt_region` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `jt_region` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `jt_region` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `jt_region` VALUES ('2499', '302', '城区', '3');
INSERT INTO `jt_region` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `jt_region` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `jt_region` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `jt_region` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `jt_region` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `jt_region` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `jt_region` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `jt_region` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `jt_region` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `jt_region` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `jt_region` VALUES ('2510', '303', '城区', '3');
INSERT INTO `jt_region` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `jt_region` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `jt_region` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `jt_region` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `jt_region` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `jt_region` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `jt_region` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `jt_region` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `jt_region` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `jt_region` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `jt_region` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `jt_region` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `jt_region` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `jt_region` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `jt_region` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `jt_region` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `jt_region` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `jt_region` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `jt_region` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `jt_region` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `jt_region` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `jt_region` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `jt_region` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `jt_region` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `jt_region` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `jt_region` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `jt_region` VALUES ('2537', '305', '古县', '3');
INSERT INTO `jt_region` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `jt_region` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `jt_region` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `jt_region` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `jt_region` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `jt_region` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `jt_region` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `jt_region` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `jt_region` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `jt_region` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `jt_region` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `jt_region` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `jt_region` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `jt_region` VALUES ('2551', '306', '临县', '3');
INSERT INTO `jt_region` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `jt_region` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `jt_region` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `jt_region` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `jt_region` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `jt_region` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `jt_region` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `jt_region` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `jt_region` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `jt_region` VALUES ('2561', '307', '应县', '3');
INSERT INTO `jt_region` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `jt_region` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `jt_region` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `jt_region` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `jt_region` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `jt_region` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `jt_region` VALUES ('2568', '308', '代县', '3');
INSERT INTO `jt_region` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `jt_region` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `jt_region` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `jt_region` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `jt_region` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `jt_region` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `jt_region` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `jt_region` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `jt_region` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `jt_region` VALUES ('2578', '309', '城区', '3');
INSERT INTO `jt_region` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `jt_region` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `jt_region` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `jt_region` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `jt_region` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `jt_region` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `jt_region` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `jt_region` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `jt_region` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `jt_region` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `jt_region` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `jt_region` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `jt_region` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `jt_region` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `jt_region` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `jt_region` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `jt_region` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `jt_region` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `jt_region` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `jt_region` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `jt_region` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `jt_region` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `jt_region` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `jt_region` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `jt_region` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `jt_region` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `jt_region` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `jt_region` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `jt_region` VALUES ('2607', '311', '户县', '3');
INSERT INTO `jt_region` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `jt_region` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `jt_region` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `jt_region` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `jt_region` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `jt_region` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `jt_region` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `jt_region` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `jt_region` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `jt_region` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `jt_region` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `jt_region` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `jt_region` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `jt_region` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `jt_region` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `jt_region` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `jt_region` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `jt_region` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `jt_region` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `jt_region` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `jt_region` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `jt_region` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `jt_region` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `jt_region` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `jt_region` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `jt_region` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `jt_region` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `jt_region` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `jt_region` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `jt_region` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `jt_region` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `jt_region` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `jt_region` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `jt_region` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `jt_region` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `jt_region` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `jt_region` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `jt_region` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `jt_region` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `jt_region` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `jt_region` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `jt_region` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `jt_region` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `jt_region` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `jt_region` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `jt_region` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `jt_region` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `jt_region` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `jt_region` VALUES ('2656', '317', '华县', '3');
INSERT INTO `jt_region` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `jt_region` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `jt_region` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `jt_region` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `jt_region` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `jt_region` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `jt_region` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `jt_region` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `jt_region` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `jt_region` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `jt_region` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `jt_region` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `jt_region` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `jt_region` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `jt_region` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `jt_region` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `jt_region` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `jt_region` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `jt_region` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `jt_region` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `jt_region` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `jt_region` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `jt_region` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `jt_region` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `jt_region` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `jt_region` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `jt_region` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `jt_region` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `jt_region` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `jt_region` VALUES ('2686', '319', '富县', '3');
INSERT INTO `jt_region` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `jt_region` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `jt_region` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `jt_region` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `jt_region` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `jt_region` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `jt_region` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `jt_region` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `jt_region` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `jt_region` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `jt_region` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `jt_region` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `jt_region` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `jt_region` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `jt_region` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `jt_region` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `jt_region` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `jt_region` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `jt_region` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `jt_region` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `jt_region` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `jt_region` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `jt_region` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `jt_region` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `jt_region` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `jt_region` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `jt_region` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `jt_region` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `jt_region` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `jt_region` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `jt_region` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `jt_region` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `jt_region` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `jt_region` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `jt_region` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `jt_region` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `jt_region` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `jt_region` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `jt_region` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `jt_region` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `jt_region` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `jt_region` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `jt_region` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `jt_region` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `jt_region` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `jt_region` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `jt_region` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `jt_region` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `jt_region` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `jt_region` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `jt_region` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `jt_region` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `jt_region` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `jt_region` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `jt_region` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `jt_region` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `jt_region` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `jt_region` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `jt_region` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `jt_region` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `jt_region` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `jt_region` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `jt_region` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `jt_region` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `jt_region` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `jt_region` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `jt_region` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `jt_region` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `jt_region` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `jt_region` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `jt_region` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `jt_region` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `jt_region` VALUES ('2759', '323', '安县', '3');
INSERT INTO `jt_region` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `jt_region` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `jt_region` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `jt_region` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `jt_region` VALUES ('2764', '324', '理县', '3');
INSERT INTO `jt_region` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `jt_region` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `jt_region` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `jt_region` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `jt_region` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `jt_region` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `jt_region` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `jt_region` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `jt_region` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `jt_region` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `jt_region` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `jt_region` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `jt_region` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `jt_region` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `jt_region` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `jt_region` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `jt_region` VALUES ('2781', '326', '达县', '3');
INSERT INTO `jt_region` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `jt_region` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `jt_region` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `jt_region` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `jt_region` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `jt_region` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `jt_region` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `jt_region` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `jt_region` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `jt_region` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `jt_region` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `jt_region` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `jt_region` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `jt_region` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `jt_region` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `jt_region` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `jt_region` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `jt_region` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `jt_region` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `jt_region` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `jt_region` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `jt_region` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `jt_region` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `jt_region` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `jt_region` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `jt_region` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `jt_region` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `jt_region` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `jt_region` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `jt_region` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `jt_region` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `jt_region` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `jt_region` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `jt_region` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `jt_region` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `jt_region` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `jt_region` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `jt_region` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `jt_region` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `jt_region` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `jt_region` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `jt_region` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `jt_region` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `jt_region` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `jt_region` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `jt_region` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `jt_region` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `jt_region` VALUES ('2829', '331', '马边', '3');
INSERT INTO `jt_region` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `jt_region` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `jt_region` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `jt_region` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `jt_region` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `jt_region` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `jt_region` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `jt_region` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `jt_region` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `jt_region` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `jt_region` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `jt_region` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `jt_region` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `jt_region` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `jt_region` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `jt_region` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `jt_region` VALUES ('2846', '332', '木里', '3');
INSERT INTO `jt_region` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `jt_region` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `jt_region` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `jt_region` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `jt_region` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `jt_region` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `jt_region` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `jt_region` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `jt_region` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `jt_region` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `jt_region` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `jt_region` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `jt_region` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `jt_region` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `jt_region` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `jt_region` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `jt_region` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `jt_region` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `jt_region` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `jt_region` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `jt_region` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `jt_region` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `jt_region` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `jt_region` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `jt_region` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `jt_region` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `jt_region` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `jt_region` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `jt_region` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `jt_region` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `jt_region` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `jt_region` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `jt_region` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `jt_region` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `jt_region` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `jt_region` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `jt_region` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `jt_region` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `jt_region` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `jt_region` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `jt_region` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `jt_region` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `jt_region` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `jt_region` VALUES ('2890', '339', '高县', '3');
INSERT INTO `jt_region` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `jt_region` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `jt_region` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `jt_region` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `jt_region` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `jt_region` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `jt_region` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `jt_region` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `jt_region` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `jt_region` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `jt_region` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `jt_region` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `jt_region` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `jt_region` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `jt_region` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `jt_region` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `jt_region` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `jt_region` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `jt_region` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `jt_region` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `jt_region` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `jt_region` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `jt_region` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `jt_region` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `jt_region` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `jt_region` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `jt_region` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `jt_region` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `jt_region` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `jt_region` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `jt_region` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `jt_region` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `jt_region` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `jt_region` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `jt_region` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `jt_region` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `jt_region` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `jt_region` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `jt_region` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `jt_region` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `jt_region` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `jt_region` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `jt_region` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `jt_region` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `jt_region` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `jt_region` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `jt_region` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `jt_region` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `jt_region` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `jt_region` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `jt_region` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `jt_region` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `jt_region` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `jt_region` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `jt_region` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `jt_region` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `jt_region` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `jt_region` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `jt_region` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `jt_region` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `jt_region` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `jt_region` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `jt_region` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `jt_region` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `jt_region` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `jt_region` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `jt_region` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `jt_region` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `jt_region` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `jt_region` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `jt_region` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `jt_region` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `jt_region` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `jt_region` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `jt_region` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `jt_region` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `jt_region` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `jt_region` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `jt_region` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `jt_region` VALUES ('2970', '348', '索县', '3');
INSERT INTO `jt_region` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `jt_region` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `jt_region` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `jt_region` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `jt_region` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `jt_region` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `jt_region` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `jt_region` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `jt_region` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `jt_region` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `jt_region` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `jt_region` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `jt_region` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `jt_region` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `jt_region` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `jt_region` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `jt_region` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `jt_region` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `jt_region` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `jt_region` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `jt_region` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `jt_region` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `jt_region` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `jt_region` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `jt_region` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `jt_region` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `jt_region` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `jt_region` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `jt_region` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `jt_region` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `jt_region` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `jt_region` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `jt_region` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `jt_region` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `jt_region` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `jt_region` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `jt_region` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `jt_region` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `jt_region` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `jt_region` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `jt_region` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `jt_region` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `jt_region` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `jt_region` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `jt_region` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `jt_region` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `jt_region` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `jt_region` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `jt_region` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `jt_region` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `jt_region` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `jt_region` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `jt_region` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `jt_region` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `jt_region` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `jt_region` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `jt_region` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `jt_region` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `jt_region` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `jt_region` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `jt_region` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `jt_region` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `jt_region` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `jt_region` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `jt_region` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `jt_region` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `jt_region` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `jt_region` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `jt_region` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `jt_region` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `jt_region` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `jt_region` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `jt_region` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `jt_region` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `jt_region` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `jt_region` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `jt_region` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `jt_region` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `jt_region` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `jt_region` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `jt_region` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `jt_region` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `jt_region` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `jt_region` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `jt_region` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `jt_region` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `jt_region` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `jt_region` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `jt_region` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `jt_region` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `jt_region` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `jt_region` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `jt_region` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `jt_region` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `jt_region` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `jt_region` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `jt_region` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `jt_region` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `jt_region` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `jt_region` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `jt_region` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `jt_region` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `jt_region` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `jt_region` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `jt_region` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `jt_region` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `jt_region` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `jt_region` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `jt_region` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `jt_region` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `jt_region` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `jt_region` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `jt_region` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `jt_region` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `jt_region` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `jt_region` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `jt_region` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `jt_region` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `jt_region` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `jt_region` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `jt_region` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `jt_region` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `jt_region` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `jt_region` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `jt_region` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `jt_region` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `jt_region` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `jt_region` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `jt_region` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `jt_region` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `jt_region` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `jt_region` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `jt_region` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `jt_region` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `jt_region` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `jt_region` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `jt_region` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `jt_region` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `jt_region` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `jt_region` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `jt_region` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `jt_region` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `jt_region` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `jt_region` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `jt_region` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `jt_region` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `jt_region` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `jt_region` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `jt_region` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `jt_region` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `jt_region` VALUES ('3121', '369', '景东', '3');
INSERT INTO `jt_region` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `jt_region` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `jt_region` VALUES ('3124', '369', '江城', '3');
INSERT INTO `jt_region` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `jt_region` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `jt_region` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `jt_region` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `jt_region` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `jt_region` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `jt_region` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `jt_region` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `jt_region` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `jt_region` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `jt_region` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `jt_region` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `jt_region` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `jt_region` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `jt_region` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `jt_region` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `jt_region` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `jt_region` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `jt_region` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `jt_region` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `jt_region` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `jt_region` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `jt_region` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `jt_region` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `jt_region` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `jt_region` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `jt_region` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `jt_region` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `jt_region` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `jt_region` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `jt_region` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `jt_region` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `jt_region` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `jt_region` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `jt_region` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `jt_region` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `jt_region` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `jt_region` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `jt_region` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `jt_region` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `jt_region` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `jt_region` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `jt_region` VALUES ('3167', '375', '维西', '3');
INSERT INTO `jt_region` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `jt_region` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `jt_region` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `jt_region` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `jt_region` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `jt_region` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `jt_region` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `jt_region` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `jt_region` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `jt_region` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `jt_region` VALUES ('3178', '376', '金平', '3');
INSERT INTO `jt_region` VALUES ('3179', '376', '河口', '3');
INSERT INTO `jt_region` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `jt_region` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `jt_region` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `jt_region` VALUES ('3183', '377', '云县', '3');
INSERT INTO `jt_region` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `jt_region` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `jt_region` VALUES ('3186', '377', '双江', '3');
INSERT INTO `jt_region` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `jt_region` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `jt_region` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `jt_region` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `jt_region` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `jt_region` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `jt_region` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `jt_region` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `jt_region` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `jt_region` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `jt_region` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `jt_region` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `jt_region` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `jt_region` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `jt_region` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `jt_region` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `jt_region` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `jt_region` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `jt_region` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `jt_region` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `jt_region` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `jt_region` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `jt_region` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `jt_region` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `jt_region` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `jt_region` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `jt_region` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `jt_region` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `jt_region` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `jt_region` VALUES ('3216', '381', '新平', '3');
INSERT INTO `jt_region` VALUES ('3217', '381', '元江', '3');
INSERT INTO `jt_region` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `jt_region` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `jt_region` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `jt_region` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `jt_region` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `jt_region` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `jt_region` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `jt_region` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `jt_region` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `jt_region` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `jt_region` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `jt_region` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `jt_region` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `jt_region` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `jt_region` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `jt_region` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `jt_region` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `jt_region` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `jt_region` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `jt_region` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `jt_region` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `jt_region` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `jt_region` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `jt_region` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `jt_region` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `jt_region` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `jt_region` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `jt_region` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `jt_region` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `jt_region` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `jt_region` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `jt_region` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `jt_region` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `jt_region` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `jt_region` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `jt_region` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `jt_region` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `jt_region` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `jt_region` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `jt_region` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `jt_region` VALUES ('3258', '386', '市区', '3');
INSERT INTO `jt_region` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `jt_region` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `jt_region` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `jt_region` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `jt_region` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `jt_region` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `jt_region` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `jt_region` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `jt_region` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `jt_region` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `jt_region` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `jt_region` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `jt_region` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `jt_region` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `jt_region` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `jt_region` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `jt_region` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `jt_region` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `jt_region` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `jt_region` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `jt_region` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `jt_region` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `jt_region` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `jt_region` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `jt_region` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `jt_region` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `jt_region` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `jt_region` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `jt_region` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `jt_region` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `jt_region` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `jt_region` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `jt_region` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `jt_region` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `jt_region` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `jt_region` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `jt_region` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `jt_region` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `jt_region` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `jt_region` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `jt_region` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `jt_region` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `jt_region` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `jt_region` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `jt_region` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `jt_region` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `jt_region` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `jt_region` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `jt_region` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `jt_region` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `jt_region` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `jt_region` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `jt_region` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `jt_region` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `jt_region` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `jt_region` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `jt_region` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `jt_region` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `jt_region` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `jt_region` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `jt_region` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `jt_region` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `jt_region` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `jt_region` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `jt_region` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `jt_region` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `jt_region` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `jt_region` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `jt_region` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `jt_region` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `jt_region` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `jt_region` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `jt_region` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `jt_region` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `jt_region` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `jt_region` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `jt_region` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `jt_region` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `jt_region` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `jt_region` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `jt_region` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `jt_region` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `jt_region` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `jt_region` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `jt_region` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `jt_region` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `jt_region` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `jt_region` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `jt_region` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `jt_region` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `jt_region` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `jt_region` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `jt_region` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `jt_region` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `jt_region` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `jt_region` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `jt_region` VALUES ('3355', '394', '开县', '3');
INSERT INTO `jt_region` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `jt_region` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `jt_region` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `jt_region` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `jt_region` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `jt_region` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `jt_region` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `jt_region` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `jt_region` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `jt_region` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `jt_region` VALUES ('3366', '395', '东区', '3');
INSERT INTO `jt_region` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `jt_region` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `jt_region` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `jt_region` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `jt_region` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `jt_region` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `jt_region` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `jt_region` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `jt_region` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `jt_region` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `jt_region` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `jt_region` VALUES ('3378', '395', '北区', '3');
INSERT INTO `jt_region` VALUES ('3379', '395', '南区', '3');
INSERT INTO `jt_region` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `jt_region` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `jt_region` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `jt_region` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `jt_region` VALUES ('3384', '397', '台北', '3');
INSERT INTO `jt_region` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `jt_region` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `jt_region` VALUES ('3387', '397', '台中', '3');
INSERT INTO `jt_region` VALUES ('3388', '397', '台南', '3');
INSERT INTO `jt_region` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `jt_region` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `jt_region` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `jt_region` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `jt_region` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `jt_region` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `jt_region` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `jt_region` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `jt_region` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `jt_region` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `jt_region` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `jt_region` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `jt_region` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `jt_region` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `jt_region` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `jt_region` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `jt_region` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `jt_region` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `jt_region` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `jt_region` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `jt_region` VALUES ('3409', '0', '国外', '0');

-- ----------------------------
-- Table structure for `jt_route`
-- ----------------------------
DROP TABLE IF EXISTS `jt_route`;
CREATE TABLE `jt_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='url路由表';

-- ----------------------------
-- Records of jt_route
-- ----------------------------
INSERT INTO `jt_route` VALUES ('1', 'home/Listn/index?id=1', 'about', '0', '1');
INSERT INTO `jt_route` VALUES ('2', 'home/Listn/index?id=8', 'about_en', '0', '1');
INSERT INTO `jt_route` VALUES ('3', 'home/Listn/index?id=4', 'contacts', '0', '1');
INSERT INTO `jt_route` VALUES ('4', 'home/Listn/index?id=11', 'contacts_en', '0', '1');
INSERT INTO `jt_route` VALUES ('5', 'home/Listn/index', 'list/:id', '0', '1');
INSERT INTO `jt_route` VALUES ('6', 'home/News/index', 'news/:id', '0', '1');
INSERT INTO `jt_route` VALUES ('7', 'home/Index/index', '/', '0', '1');

-- ----------------------------
-- Table structure for `jt_source`
-- ----------------------------
DROP TABLE IF EXISTS `jt_source`;
CREATE TABLE `jt_source` (
  `source_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(30) NOT NULL,
  `source_order` int(11) NOT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_source
-- ----------------------------
INSERT INTO `jt_source` VALUES ('1', '十九大', '2');
INSERT INTO `jt_source` VALUES ('2', '机关服务中心', '10');
INSERT INTO `jt_source` VALUES ('3', '交通运输厅', '1');

-- ----------------------------
-- Table structure for `jt_test`
-- ----------------------------
DROP TABLE IF EXISTS `jt_test`;
CREATE TABLE `jt_test` (
  `test_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_order` int(3) unsigned DEFAULT '50' COMMENT '默认排序字段',
  `test_cid` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '前台栏目id',
  `m_text` varchar(200) DEFAULT '' COMMENT '文本字段',
  `m_map_lng` double NOT NULL DEFAULT '22' COMMENT '地图字段',
  `m_map_lat` double NOT NULL DEFAULT '22' COMMENT '地图字段',
  `m_imagefile` varchar(200) DEFAULT '' COMMENT '单图片字段',
  `m_images` text COMMENT '多图片字段',
  `m_selecttext` varchar(200) NOT NULL DEFAULT '未填写' COMMENT '选择文本',
  `m_cur` bigint(20) unsigned DEFAULT '22' COMMENT '货币字段',
  `m_long` bigint(20) DEFAULT NULL COMMENT '长整数字段',
  `m_int` int(11) NOT NULL DEFAULT '1' COMMENT '整数字段',
  `m_datatime` int(10) unsigned DEFAULT NULL COMMENT '日期时间字段',
  `m_date` int(10) unsigned DEFAULT NULL COMMENT '日期字段',
  `m_selectnumber` int(11) DEFAULT NULL COMMENT '选择数字字段',
  `m_richtext` text COMMENT '富文本字段',
  `m_bigtext` text COMMENT '文本域字段',
  `m_switch` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '开关字段',
  `m_check` varchar(200) DEFAULT '' COMMENT '多选框字段',
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_test
-- ----------------------------
INSERT INTO `jt_test` VALUES ('2', '45', '1', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486483200', '1', '<p>当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\n \n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。</p>', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '1', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('3', '11', '2', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '0', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('4', '22', '3', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '1', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('5', '33', '4', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '0', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('6', '44', '5', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '1', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('7', '50', '6', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '0', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('10', '47', '7', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '0', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('12', '50', '8', '文本测试数据文本测试数据文本测试数据文本测试数据文本测试数据', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', 'http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg,http://ohjmksy46.bkt.clouddn.com/images/iw7u817c_3ljeuzemth44584179bf73a10.jpg', '1', '22', '9999999999999', '8888888', '1486563521', '1486563521', '1', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。有人统计说企业每投在品牌形象设计上1美元，所获得的收益是227美元。如此诱人的投资回报率，无怪乎企业界对品牌设计趋之若鹜。那么，品牌设计究竟是什么？其魅力来自何处？\r\n \r\n1、设计是冰山一角，却至关重要！如果我们把品牌理解成一座冰山。品牌或企业所属的文化制度、员工行为、组织结构、核心技术、营销方式等要素是构成这座冰山的主体，尽管隐于水下，却是品牌发展最强有力的支撑与原动力。\r\n但这一切都必须通过一系列完整有效的视觉设计与品牌推广来被大众所认知。', '当世界进入品牌竞争的时代，当品牌成为中华大地上商界的热点时，品牌设计也成为人们常挂在嘴边的时髦词汇。', '0', '1,2,5,6');
INSERT INTO `jt_test` VALUES ('13', '50', '2', '', '22', '22', 'http://ohjmksy46.bkt.clouddn.com/images/ix66veqg_5sgky011nh0c58612b67ba135.png', 'http://ohjmksy46.bkt.clouddn.com/images/ix66vilc_6cgtqvbo9cg858612b6ccbef1.png,http://ohjmksy46.bkt.clouddn.com/images/ix66vilc_63fw80lz0dgk58612b6cc41f1.png,', '1', '22', '0', '11', '1482762857', '1482681600', '1', '', '', '0', '');

-- ----------------------------
-- Table structure for `jt_we_mats`
-- ----------------------------
DROP TABLE IF EXISTS `jt_we_mats`;
CREATE TABLE `jt_we_mats` (
  `mats_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mats_name` varchar(100) NOT NULL DEFAULT '' COMMENT '素材名',
  `mats_type` varchar(10) NOT NULL DEFAULT 'images' COMMENT '素材类型',
  `url_lc` varchar(255) DEFAULT '' COMMENT '素材本地url',
  `news_content` text COMMENT '图文返回或设置内容',
  `news_index` tinyint(2) DEFAULT '0' COMMENT '多图文索引从0开始',
  `video_content` text COMMENT '视频返回或设置内容',
  `media_id` varchar(100) NOT NULL DEFAULT '' COMMENT '素材id',
  `url` varchar(255) DEFAULT '' COMMENT '素材url',
  `create_time` int(11) NOT NULL COMMENT '上传时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`mats_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_we_mats
-- ----------------------------
INSERT INTO `jt_we_mats` VALUES ('1', 'girl.jpg', 'images', '', '', '0', null, 'KdpdmrH0vQi-14__8hxsuNGesZG3wQgnf9zajn4nw9w', 'http://mmbiz.qpic.cn/mmbiz/gLO17UPS6FS2xsypf378iaNhWacZ1G1UplZYWEYfwvuU6Ont96b1roYsCNFwaRrSaKTPCUdBK9DgEHicsKwWCBRQ/0', '1483622035', '1483622035');
INSERT INTO `jt_we_mats` VALUES ('2', 'boy.jpg', 'images', '', '', '0', null, 'KdpdmrH0vQi-14__8hxsuOhetEVshLk7MTCoTIrUjeE', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX13NZvOgT9cdygib8icSngXfAvVmbvUg530cgoVHLAvAibp7ETfNNfoJpFIujnDTUA928rUulaC3icPm2w/0?wx_fmt=jpeg', '1483618551', '1483618551');
INSERT INTO `jt_we_mats` VALUES ('3', '标题', 'video', '', '', '0', null, 'KdpdmrH0vQi-14__8hxsuD_SIO-sM4B8jsiNHByhtDA', '', '1483621917', '1483621917');
INSERT INTO `jt_we_mats` VALUES ('4', 'a.mp3', 'voice', '', '', '0', null, 'KdpdmrH0vQi-14__8hxsuJhtMm36AWCjujVrnOQy-Kk', '', '1483619629', '1483619629');
INSERT INTO `jt_we_mats` VALUES ('5', '图文', 'news', '', '{\"title\":\"\\u56fe\\u6587\",\"author\":\"rainfer\",\"digest\":\"\\u5355\\u56fe\\u6587\\u6d88\\u606f\\u624d\\u6709\\u6458\\u8981\",\"content\":\"<p><img src=\\\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/bBGqHGSmX13NZvOgT9cdygib8icSngXfAvVmbvUg530cgoVHLAvAibp7ETfNNfoJpFIujnDTUA928rUulaC3icPm2w\\/0?wx_fmt=jpeg\\\" alt=\\\"0?wx_fmt=jpeg\\\"\\/><\\/p><p>\\u56fe\\u6587\\u6d88\\u606f\\u7684\\u5177\\u4f53\\u5185\\u5bb9\\uff0c\\u652f\\u6301HTML\\u6807\\u7b7e<\\/p><p><img src=\\\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/gLO17UPS6FS2xsypf378iaNhWacZ1G1UplZYWEYfwvuU6Ont96b1roYsCNFwaRrSaKTPCUdBK9DgEHicsKwWCBRQ\\/0\\\" alt=\\\"0\\\"\\/><\\/p>\",\"content_source_url\":\"http:\\/\\/www.rainfer.cn\",\"thumb_media_id\":\"KdpdmrH0vQi-14__8hxsuNGesZG3wQgnf9zajn4nw9w\",\"show_cover_pic\":0,\"url\":\"http:\\/\\/mp.weixin.qq.com\\/s?__biz=MzIzMzM4NDg0MQ==&mid=100000007&idx=1&sn=9cb9083207911fc248bea6096d332a2e&chksm=68873fe15ff0b6f7904c35344049ed50e28fddab949318a81b8c806681b6fb2b90e25bae4fa5#rd\",\"thumb_url\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/bBGqHGSmX13NZvOgT9cdygib8icSngXfAvibLwibW4jwgOaedmdejP2vvug6ZLcZsGIV8rmiaRHwMhibpFWkE0fLU1qA\\/0?wx_fmt=jpeg\"}', '0', null, 'KdpdmrH0vQi-14__8hxsuMAdAzRcc0BgrPlVD_jrsmw', '', '1483622501', '1483711027');
INSERT INTO `jt_we_mats` VALUES ('6', 'test', 'images', '', null, '0', null, 'KdpdmrH0vQi-14__8hxsuEE5FPTRd6TL_mb_-oZHJ_M', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtjoKHVib0W5XicyjEqibb0NmLvX18LG6wLxwDc1TpaQx54c6RH6ty4yXfQ/0?wx_fmt=jpeg', '1483776570', '1483776570');
INSERT INTO `jt_we_mats` VALUES ('7', '测试声音', 'voice', '', null, '0', null, 'KdpdmrH0vQi-14__8hxsuOfyREwfA3efqZ32Sfck70s', '', '1483776641', '1483776641');
INSERT INTO `jt_we_mats` VALUES ('8', '测试视频', 'video', '', null, '0', '{\"title\":\"\\u89c6\\u9891\\u6807\\u9898\",\"introduction\":\"\\u89c6\\u9891\\u63cf\\u8ff0\"}', 'KdpdmrH0vQi-14__8hxsuHOJUm63PtG7qRJxTwzbkmk', '', '1483776792', '1483776792');
INSERT INTO `jt_we_mats` VALUES ('9', '测试缩略图', 'thumb', '', null, '0', null, 'KdpdmrH0vQi-14__8hxsuNnDHsNXliG-ck9AEumsssw', '', '1483776876', '1483776876');
INSERT INTO `jt_we_mats` VALUES ('10', '图文1', 'news', '', '{\"title\":\"\\u56fe\\u65871\",\"thumb_media_id\":\"KdpdmrH0vQi-14__8hxsuPcF4KagNmpPbDxkYsgKtxA\",\"author\":\"\\u56fe\\u65871\",\"digest\":\"\\u56fe\\u65871\",\"show_cover_pic\":\"1\",\"content_source_url\":\"http:\\/\\/www.rainfer.cn\",\"content\":\"<p>asdfsdf<\\/p><p><img src=\\\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtUjU6ich2ciaRayUqJV06jl2OKFDxDzJ3APXw7E7pbR27DkZWibRz54seQ\\/0\\\" title=\\\"5870a3b014020.jpg\\\" alt=\\\"5870a3b014020.jpg\\\"\\/><\\/p><p><img src=\\\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz\\/gLO17UPS6FS2xsypf378iaNhWacZ1G1UplZYWEYfwvuU6Ont96b1roYsCNFwaRrSaKTPCUdBK9DgEHicsKwWCBRQ\\/0\\\" style=\\\"\\\"\\/><\\/p><p><br\\/><\\/p>\"}', '0', null, 'KdpdmrH0vQi-14__8hxsuJVMs7ryz_4oPHpWz43-ZcQ', '', '1483776950', '1483776950');
INSERT INTO `jt_we_mats` VALUES ('11', 'test2', 'images', '', null, '0', null, 'KdpdmrH0vQi-14__8hxsuJT5egvgUxI4nQaKlJ1VwdY', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtmX2EsuiaVkWTBj4MfNiabvTsOZatPDe3hrXIEG0gz1xlT1oalTJkhFAw/0?wx_fmt=png', '1483782052', '1483782052');

-- ----------------------------
-- Table structure for `jt_we_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jt_we_menu`;
CREATE TABLE `jt_we_menu` (
  `we_menu_id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `we_menu_name` varchar(20) NOT NULL COMMENT '菜单名称',
  `we_menu_leftid` int(11) NOT NULL COMMENT '菜单上级ID',
  `we_menu_type` tinyint(2) NOT NULL COMMENT '菜单类型',
  `we_menu_typeval` varchar(200) NOT NULL COMMENT '菜单类型值',
  `we_menu_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `we_menu_order` int(11) NOT NULL DEFAULT '50' COMMENT '排序',
  `we_menu_l` varchar(10) NOT NULL DEFAULT 'zh-cn',
  PRIMARY KEY (`we_menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_we_menu
-- ----------------------------
INSERT INTO `jt_we_menu` VALUES ('1', '菜单1', '0', '1', '', '1', '0', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('2', '公司简介', '1', '2', 'http://www.thinkphp.cn/', '1', '50', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('4', '菜单二', '0', '1', '', '1', '50', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('5', '菜单三', '0', '1', '', '1', '50', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('6', '二级菜单', '4', '1', '', '1', '50', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('7', '三级菜单', '5', '1', '', '1', '50', 'zh-cn');
INSERT INTO `jt_we_menu` VALUES ('8', '联系我们', '1', '1', '', '1', '50', 'zh-cn');

-- ----------------------------
-- Table structure for `jt_we_pic`
-- ----------------------------
DROP TABLE IF EXISTS `jt_we_pic`;
CREATE TABLE `jt_we_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` varchar(255) DEFAULT '' COMMENT '素材url',
  `mtime` int(11) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_we_pic
-- ----------------------------
INSERT INTO `jt_we_pic` VALUES ('1', 'http://mmbiz.qpic.cn/mmbiz/gLO17UPS6FS2xsypf378iaNhWacZ1G1UplZYWEYfwvuU6Ont96b1roYsCNFwaRrSaKTPCUdBK9DgEHicsKwWCBRQ/0', '1483622035');
INSERT INTO `jt_we_pic` VALUES ('2', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX13NZvOgT9cdygib8icSngXfAvVmbvUg530cgoVHLAvAibp7ETfNNfoJpFIujnDTUA928rUulaC3icPm2w/0?wx_fmt=jpeg', '1483618551');
INSERT INTO `jt_we_pic` VALUES ('7', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUD0Ff9n81k9c0ZhA99xrMlVeLyhqEVlQ1I7zVBibrnzaPt4IAJqLL3pA/0', '1483704413');
INSERT INTO `jt_we_pic` VALUES ('6', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUt2zBAsDGdCqwaFD9wGdJjaLPFLcDiahMSeE97ZYicia5WFDO6p0O0CpOA/0', '1483703469');
INSERT INTO `jt_we_pic` VALUES ('8', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUD0Ff9n81k9c0ZhA99xrMlVeLyhqEVlQ1I7zVBibrnzaPt4IAJqLL3pA/0', '1483705963');
INSERT INTO `jt_we_pic` VALUES ('9', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUA2XSgrhrEfdiaXrxkbSKMQaH1icL4Pu4Ap8hPcP6jIdJuElkvbp5EibKg/0', '1483706148');
INSERT INTO `jt_we_pic` VALUES ('10', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUsByB9AGojicSRZ7nxR0cxib4NmOvqt2Pbw2X6K2OzhwpaRIiacic34gyNA/0', '1483707520');
INSERT INTO `jt_we_pic` VALUES ('11', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fU9reIEv9ZPf1C0VBmUr3tEI5uohK3ljwaiarzo4S7HR9OicY0sVVKMKqQ/0', '1483707548');
INSERT INTO `jt_we_pic` VALUES ('12', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUA2XSgrhrEfdiaXrxkbSKMQaH1icL4Pu4Ap8hPcP6jIdJuElkvbp5EibKg/0', '1483707618');
INSERT INTO `jt_we_pic` VALUES ('13', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUA2XSgrhrEfdiaXrxkbSKMQaH1icL4Pu4Ap8hPcP6jIdJuElkvbp5EibKg/0', '1483707927');
INSERT INTO `jt_we_pic` VALUES ('14', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fUD0Ff9n81k9c0ZhA99xrMlVeLyhqEVlQ1I7zVBibrnzaPt4IAJqLL3pA/0', '1483708083');
INSERT INTO `jt_we_pic` VALUES ('15', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fU2o4hwr63JMdRqSdoiapTEHWuz9TqibY0c7hvonRjdK5ZkegcEpsiaZTtA/0', '1483708730');
INSERT INTO `jt_we_pic` VALUES ('16', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtjoKHVib0W5XicyjEqibb0NmLvX18LG6wLxwDc1TpaQx54c6RH6ty4yXfQ/0?wx_fmt=jpeg', '1483776570');
INSERT INTO `jt_we_pic` VALUES ('17', 'http://mmbiz.qpic.cn/mmbiz_jpg/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtUjU6ich2ciaRayUqJV06jl2OKFDxDzJ3APXw7E7pbR27DkZWibRz54seQ/0', '1483776945');
INSERT INTO `jt_we_pic` VALUES ('18', 'http://mmbiz.qpic.cn/mmbiz_png/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtmX2EsuiaVkWTBj4MfNiabvTsOZatPDe3hrXIEG0gz1xlT1oalTJkhFAw/0?wx_fmt=png', '1483782052');

-- ----------------------------
-- Table structure for `jt_we_reply`
-- ----------------------------
DROP TABLE IF EXISTS `jt_we_reply`;
CREATE TABLE `jt_we_reply` (
  `we_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `we_reply_key` varchar(255) NOT NULL COMMENT '关键字',
  `we_reply_type` varchar(20) NOT NULL,
  `we_replytext_content` varchar(255) NOT NULL COMMENT '回复内容',
  `we_reply_addtime` int(11) NOT NULL COMMENT '添加时间',
  `we_reply_open` tinyint(1) NOT NULL DEFAULT '0',
  `we_replynews` text NOT NULL,
  `we_replyimage_mediaid` varchar(200) NOT NULL,
  `we_replyvoice_mediaid` varchar(200) NOT NULL,
  PRIMARY KEY (`we_reply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jt_we_reply
-- ----------------------------
INSERT INTO `jt_we_reply` VALUES ('1', 'yfcmf', 'text', '轻量级企业网站管理系统 运行环境:PHP5.4+, MySQL5.0', '1466497576', '1', '', '', '');
INSERT INTO `jt_we_reply` VALUES ('2', 'kk', 'news', '', '1483711089', '1', '{\"title\":\"tttt\",\"description\":\"aaaaa\",\"url\":\"http:\\/\\/www.rainfer.cn\",\"images\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/bBGqHGSmX10eyug9GJeVX5A8wuzcia8fU2o4hwr63JMdRqSdoiapTEHWuz9TqibY0c7hvonRjdK5ZkegcEpsiaZTtA\\/0\"}', '', '');
INSERT INTO `jt_we_reply` VALUES ('3', 'ff', 'images', '', '1483712501', '1', '', 'KdpdmrH0vQi-14__8hxsuMAdAzRcc0BgrPlVD_jrsmw', '');
INSERT INTO `jt_we_reply` VALUES ('4', 'girl', 'images', '', '1483712585', '1', '', 'KdpdmrH0vQi-14__8hxsuNGesZG3wQgnf9zajn4nw9w', '');
INSERT INTO `jt_we_reply` VALUES ('5', 'tw', 'news', '', '1483776982', '1', '{\"title\":\"asdf\",\"description\":\"asdf\",\"url\":\"http:\\/\\/www.rainfer.cn\",\"images\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_jpg\\/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtjoKHVib0W5XicyjEqibb0NmLvX18LG6wLxwDc1TpaQx54c6RH6ty4yXfQ\\/0?wx_fmt=jpeg\"}', '', '');
INSERT INTO `jt_we_reply` VALUES ('10', 'subscribe', 'news', '', '1483783147', '1', '{\"title\":\"\\u6b22\\u8fce\\u60a8\\u7684\\u5173\\u6ce8!\",\"description\":\"\\u6b22\\u8fce\\u60a8\\u7684\\u5173\\u6ce8!\",\"url\":\"http:\\/\\/www.rainfer.cn\",\"images\":\"http:\\/\\/mmbiz.qpic.cn\\/mmbiz_png\\/bBGqHGSmX10B1cCLzD5Vg16ZSlSyOQJtmX2EsuiaVkWTBj4MfNiabvTsOZatPDe3hrXIEG0gz1xlT1oalTJkhFAw\\/0?wx_fmt=png\"}', '', '');
INSERT INTO `jt_we_reply` VALUES ('12', '下载地址', 'text', 'https://git.oschina.net/rainfer/YFCMF', '1483784536', '1', '', '', '');

-- ----------------------------
-- Table structure for `jt_web_log`
-- ----------------------------
DROP TABLE IF EXISTS `jt_web_log`;
CREATE TABLE `jt_web_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL COMMENT '用户id',
  `ip` char(15) NOT NULL COMMENT '访客ip',
  `location` varchar(255) NOT NULL COMMENT '访客地址',
  `os` varchar(255) NOT NULL COMMENT '操作系统',
  `browser` varchar(255) NOT NULL COMMENT '浏览器',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `module` char(6) NOT NULL COMMENT '模块',
  `controller` varchar(255) NOT NULL COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '操作方法',
  `method` varchar(10) NOT NULL DEFAULT 'GET' COMMENT '请求类型',
  `data` text NOT NULL COMMENT '请求的param数据，serialize后的',
  `otime` int(10) unsigned NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `otime` (`otime`),
  KEY `module` (`module`),
  KEY `controller` (`controller`),
  KEY `method` (`method`)
) ENGINE=MyISAM AUTO_INCREMENT=1387 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of jt_web_log
-- ----------------------------
INSERT INTO `jt_web_log` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1510662433');
INSERT INTO `jt_web_log` VALUES ('2', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:1:\"2\";s:6:\"news_l\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '1510662651');
INSERT INTO `jt_web_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510703619');
INSERT INTO `jt_web_log` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"7\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"网站首页\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:4:\"Home\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:1:\"1\";s:9:\"menu_type\";s:1:\"1\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:0:\"\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510703884');
INSERT INTO `jt_web_log` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"1\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"新闻中心\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"10\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:5:\"about\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:430:\"<p style=\"white-space: normal;\">&nbsp; 团队成立与于2014年,是一个专注于高端品牌网站建设的设计工作室。</p><p style=\"white-space: normal;\">团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供WAP网站建设、微网站、微商城、微信裂变式分\";s:14:\"menu_seo_title\";s:12:\"关于我们\";s:12:\"menu_seo_key\";s:12:\"关于我们\";s:12:\"menu_seo_des\";s:12:\"关于我们\";}', '1510703951');
INSERT INTO `jt_web_log` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"1\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"新闻中心\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"10\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:5:\"about\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:430:\"<p style=\"white-space: normal;\">&nbsp; 团队成立与于2014年,是一个专注于高端品牌网站建设的设计工作室。</p><p style=\"white-space: normal;\">团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供WAP网站建设、微网站、微商城、微信裂变式分\";s:14:\"menu_seo_title\";s:12:\"关于我们\";s:12:\"menu_seo_key\";s:12:\"关于我们\";s:12:\"menu_seo_des\";s:12:\"关于我们\";}', '1510703952');
INSERT INTO `jt_web_log` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"2\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"党建园地\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"20\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510703984');
INSERT INTO `jt_web_log` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"1\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"新闻中心\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"10\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:430:\"<p style=\"white-space: normal;\">&nbsp; 团队成立与于2014年,是一个专注于高端品牌网站建设的设计工作室。</p><p style=\"white-space: normal;\">团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供WAP网站建设、微网站、微商城、微信裂变式分\";s:14:\"menu_seo_title\";s:12:\"关于我们\";s:12:\"menu_seo_key\";s:12:\"关于我们\";s:12:\"menu_seo_des\";s:12:\"关于我们\";}', '1510704002');
INSERT INTO `jt_web_log` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"5\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"平安建设\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"30\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704021');
INSERT INTO `jt_web_log` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:2:\"15\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"服务经营\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:3:\"FAQ\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"30\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704053');
INSERT INTO `jt_web_log` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"3\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"养老项目\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"45\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704079');
INSERT INTO `jt_web_log` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"6\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"观点前沿\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704096');
INSERT INTO `jt_web_log` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"4\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"联系我们\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"55\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:19:\"<p>联系方式</p>\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704127');
INSERT INTO `jt_web_log` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runadd.html', 'admin', 'Menu', 'news_menu_runadd', 'Ajax', 'a:16:{s:9:\"lang_list\";s:0:\"\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704165');
INSERT INTO `jt_web_log` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704187');
INSERT INTO `jt_web_log` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:20:{s:2:\"id\";s:1:\"6\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"观点前沿\";s:6:\"menu_l\";s:5:\"zh-cn\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1510704195');
INSERT INTO `jt_web_log` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:8:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:6:\"news_l\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510704358');
INSERT INTO `jt_web_log` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:8:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:6:\"news_l\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"4\";}', '1510704362');
INSERT INTO `jt_web_log` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510704439');
INSERT INTO `jt_web_log` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runlangsys.html', 'admin', 'Sys', 'runlangsys', 'Ajax', 'a:1:{s:12:\"default_lang\";s:5:\"zh-cn\";}', '1510704483');
INSERT INTO `jt_web_log` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510704635');
INSERT INTO `jt_web_log` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510704673');
INSERT INTO `jt_web_log` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"1\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:78:\"中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮\";s:15:\"news_titleshort\";s:21:\"ACE后台管理系统\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:0:\"\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4h9a8_2lusiuf7mocg584ea7c853c6e.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"2\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c863a052a7.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4hdww_1tt5u3ioc2jo584ea7ce3abe4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4hcdc_5zqxgcnh8hkw584ea7ccc0949.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:78:\"中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510704983');
INSERT INTO `jt_web_log` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510704988');
INSERT INTO `jt_web_log` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510704996');
INSERT INTO `jt_web_log` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705005');
INSERT INTO `jt_web_log` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"2\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:57:\"中国共产党第十九次全国代表大会在京开幕\";s:15:\"news_titleshort\";s:18:\"高级企业网站\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:18:\"高级企业网站\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4f5o0_3p4cnfcwga68584ea76676d37.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"2\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c8982020a4.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4faao_53auzeeb8z8c584ea76ca39e4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f9iw_252erwau32xw584ea76b44ca9.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:57:\"中国共产党第十九次全国代表大会在京开幕\";s:12:\"news_content\";s:204:\"<p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51\";}', '1510705070');
INSERT INTO `jt_web_log` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705078');
INSERT INTO `jt_web_log` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705079');
INSERT INTO `jt_web_log` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"3\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:15:\"news_titleshort\";s:27:\"志和第三方公司网站\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:27:\"志和第三方公司网站\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c89f8c6383.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4dee8_422efzz8fdog584ea7148261b.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ddmg_3hxo056be2gw584ea71370697.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510705167');
INSERT INTO `jt_web_log` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705172');
INSERT INTO `jt_web_log` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"3\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:15:\"news_titleshort\";s:27:\"志和第三方公司网站\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:27:\"志和第三方公司网站\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c89f8c6383.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4dee8_422efzz8fdog584ea7148261b.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ddmg_3hxo056be2gw584ea71370697.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510705185');
INSERT INTO `jt_web_log` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705189');
INSERT INTO `jt_web_log` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"3\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:15:\"news_titleshort\";s:27:\"志和第三方公司网站\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:27:\"志和第三方公司网站\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c89f8c6383.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4dee8_422efzz8fdog584ea7148261b.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ddmg_3hxo056be2gw584ea71370697.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510705200');
INSERT INTO `jt_web_log` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705203');
INSERT INTO `jt_web_log` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"4\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:68:\"新野县：选强将 配尖兵 扎实做好第一书记轮换工作\";s:15:\"news_titleshort\";s:24:\"企业网站开发设计\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"新野县\";s:11:\"news_source\";s:42:\"河南省交通运输厅机关服务中心\";s:8:\"checkpic\";s:76:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4aaig_hcedy3x46f4584ea6830f7b6.jpg\";s:11:\"oldcheckpic\";s:76:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4aaig_hcedy3x46f4584ea6830f7b6.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:68:\"新野县：选强将 配尖兵 扎实做好第一书记轮换工作\";s:12:\"news_content\";s:320:\"<p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">近日，新野县坚持“选人标准提升、总体规模增加、联村扶贫单位不换”的原则选强将、配尖兵，扎实做好第一书记轮换工作。</span><br style=\"font-family: 宋体; font-size: 14px; whi\";}', '1510705297');
INSERT INTO `jt_web_log` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705301');
INSERT INTO `jt_web_log` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"3\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:15:\"news_titleshort\";s:27:\"志和第三方公司网站\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"调研基层\";s:11:\"news_source\";s:42:\"河南省交通运输厅机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4dbb4_5or075nwo40s584ea710b6c37.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c89f8c6383.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4dee8_422efzz8fdog584ea7148261b.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4ddmg_3hxo056be2gw584ea71370697.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:61:\"南阳市委组织部调研组 莅淅调研基层党建工作\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510705331');
INSERT INTO `jt_web_log` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705334');
INSERT INTO `jt_web_log` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"2\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:57:\"中国共产党第十九次全国代表大会在京开幕\";s:15:\"news_titleshort\";s:18:\"高级企业网站\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"十九大\";s:11:\"news_source\";s:42:\"河南省交通运输厅机关服务中心\";s:8:\"checkpic\";s:41:\"/data/upload/2017-11-15/5a0b87ae73387.jpg\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-15/5a0b87ae73387.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"2\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c8982020a4.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4faao_53auzeeb8z8c584ea76ca39e4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4f9iw_252erwau32xw584ea76b44ca9.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:57:\"中国共产党第十九次全国代表大会在京开幕\";s:12:\"news_content\";s:204:\"<p style=\"padding: 0px; margin-top: 15px; margin-bottom: 0px; font-family: 宋体; white-space: normal; background-color: rgb(248, 253, 255); list-style-type: none; text-indent: 2em; color: rgb(51, 51, 51\";}', '1510705369');
INSERT INTO `jt_web_log` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705373');
INSERT INTO `jt_web_log` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"1\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:78:\"中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮\";s:15:\"news_titleshort\";s:21:\"ACE后台管理系统\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:15:\"学习十九大\";s:11:\"news_source\";s:42:\"河南省交通运输厅机关服务中心\";s:8:\"checkpic\";s:41:\"/data/upload/2017-11-15/5a0b8757a1181.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-15/5a0b8757a1181.png\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:200:\"/data/upload/2016-05-06/572c863a052a7.jpghttp://ohjmksy46.bkt.clouddn.com/images/iwm4hdww_1tt5u3ioc2jo584ea7ce3abe4.jpg,http://ohjmksy46.bkt.clouddn.com/images/iwm4hcdc_5zqxgcnh8hkw584ea7ccc0949.jpg,htt\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:78:\"中建七局总承包公司迅速掀起学习贯彻党的十九大精神热潮\";s:12:\"news_content\";s:200:\"<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(114, 114, 114); font-family: &#39;Open Sans&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 24px; w\";}', '1510705402');
INSERT INTO `jt_web_log` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705405');
INSERT INTO `jt_web_log` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705415');
INSERT INTO `jt_web_log` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:1:\"5\";s:13:\"news_columnid\";s:1:\"2\";s:10:\"news_title\";s:39:\"方城县：十九大精神进贫困村\";s:15:\"news_titleshort\";s:14:\"网站UI设计\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:15:\"十九大精神\";s:11:\"news_source\";s:42:\"河南省交通运输厅机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4a20w_5fwu72e5ltog584ea678aedfe.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4a20w_5fwu72e5ltog584ea678aedfe.jpg\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:39:\"方城县：十九大精神进贫困村\";s:12:\"news_content\";s:344:\"<p><span style=\"padding: 0px; margin: 0px; font-family: 宋体; font-size: 14px; background-color: rgb(248, 253, 255);\">11月1日一大早，方城县小史店镇党委副书记邵玉民安排党政办通知机关中层以上干部8:30以前赶到东沟村党群服务中心门外广场集合参加党的十九大精神宣讲报告会。</span>\";}', '1510705471');
INSERT INTO `jt_web_log` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510705476');
INSERT INTO `jt_web_log` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_edit.html', 'admin', 'Plug', 'plug_link_edit', 'Ajax', 'a:1:{s:12:\"plug_link_id\";s:1:\"3\";}', '1510731669');
INSERT INTO `jt_web_log` VALUES ('48', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510747670');
INSERT INTO `jt_web_log` VALUES ('49', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:9:{s:7:\"options\";a:17:{s:9:\"site_name\";s:23:\"YFCMF内容管理框架\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:0:\"\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:12:\"site_co_name\";s:0:\"\";s:12:\"site_address\";s:0:\"\";s:7:\"map_lat\";s:9:\"23.029759\";s:7:\"map_lng\";s:10:\"113.752114\";s:8:\"site_tel\";s:17:\"+86 769 8888 8888\";s:16:\"site_admin_email\";s:12:\"admin@qq.com\";s:7:\"site_qq\";s:8:\"81818832\";s:14:\"site_seo_title\";s:23:\"YFCMF内容管理框架\";s:17:\"site_seo_keywords\";s:52:\"YFCMF,php,内容管理框架,cmf,cms,雨飞工作室\";s:20:\"site_seo_description\";s:77:\"YFCMF是雨飞工作室发布的一款用于快速开发的内容管理框架\";}s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\";s:15:\"oldcheckpicname\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:10:\"captcha_id\";s:5:\"admin\";s:11:\"private_key\";s:6:\"aaaaaa\";s:9:\"maxlength\";s:3:\"100\";}', '1510748478');
INSERT INTO `jt_web_log` VALUES ('50', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510748483');
INSERT INTO `jt_web_log` VALUES ('51', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510748491');
INSERT INTO `jt_web_log` VALUES ('52', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510748757');
INSERT INTO `jt_web_log` VALUES ('53', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510748763');
INSERT INTO `jt_web_log` VALUES ('54', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510748767');
INSERT INTO `jt_web_log` VALUES ('55', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510748895');
INSERT INTO `jt_web_log` VALUES ('56', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1510748944');
INSERT INTO `jt_web_log` VALUES ('57', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"5\";s:4:\"n_id\";s:1:\"6\";}', '1510748962');
INSERT INTO `jt_web_log` VALUES ('58', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"5\";s:4:\"n_id\";s:1:\"7\";}', '1510748966');
INSERT INTO `jt_web_log` VALUES ('59', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"5\";s:4:\"n_id\";s:1:\"8\";}', '1510748969');
INSERT INTO `jt_web_log` VALUES ('60', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"5\";s:4:\"n_id\";s:1:\"9\";}', '1510748973');
INSERT INTO `jt_web_log` VALUES ('61', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"1\";}', '1510748976');
INSERT INTO `jt_web_log` VALUES ('62', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:2:\"15\";s:4:\"n_id\";s:2:\"11\";}', '1510748987');
INSERT INTO `jt_web_log` VALUES ('63', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:2:\"15\";s:4:\"n_id\";s:2:\"12\";}', '1510748990');
INSERT INTO `jt_web_log` VALUES ('64', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:2:\"15\";s:4:\"n_id\";s:2:\"13\";}', '1510748994');
INSERT INTO `jt_web_log` VALUES ('65', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:2:\"15\";s:4:\"n_id\";s:2:\"14\";}', '1510748997');
INSERT INTO `jt_web_log` VALUES ('66', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:2:\"15\";s:4:\"n_id\";s:2:\"15\";}', '1510749001');
INSERT INTO `jt_web_log` VALUES ('67', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"3\";s:4:\"n_id\";s:2:\"16\";}', '1510749012');
INSERT INTO `jt_web_log` VALUES ('68', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"3\";s:4:\"n_id\";s:2:\"17\";}', '1510749015');
INSERT INTO `jt_web_log` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"3\";s:4:\"n_id\";s:2:\"18\";}', '1510749018');
INSERT INTO `jt_web_log` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_columnid.html', 'admin', 'News', 'news_columnid', 'Ajax', 'a:2:{s:13:\"news_columnid\";s:1:\"3\";s:4:\"n_id\";s:2:\"19\";}', '1510749022');
INSERT INTO `jt_web_log` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:17:{s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:25:\"五彩秋天 大美中原\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:6:\"中原\";s:11:\"news_source\";s:18:\"河南交通运输\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:25:\"五彩秋天 大美中原\";s:12:\"news_content\";s:204:\"<p style=\"text-align:center;font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#3366ff\"><img id=\"no_img\" border=\"0\" alt=\"\" width=\"550\" height=\"330\" src=\"/d\";}', '1510749175');
INSERT INTO `jt_web_log` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510751295');
INSERT INTO `jt_web_log` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510751304');
INSERT INTO `jt_web_log` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510751414');
INSERT INTO `jt_web_log` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510751435');
INSERT INTO `jt_web_log` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510752447');
INSERT INTO `jt_web_log` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510752597');
INSERT INTO `jt_web_log` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:17:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:85:\"李小鹏部长来豫调研 部省合力久久为功为经济社会发展当好先行\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:9:\"李小鹏\";s:11:\"news_source\";s:12:\"河南交通\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:85:\"李小鹏部长来豫调研 部省合力久久为功为经济社会发展当好先行\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 15px; text-indent: 2em; white-space: normal; background-color:\";}', '1510752881');
INSERT INTO `jt_web_log` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:18:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:54:\"周口市加快推进阳新高速周口段项目建设\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:12:\"阳新高速\";s:11:\"news_source\";s:13:\" 河南交通\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:54:\"周口市加快推进阳新高速周口段项目建设\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 15px; text-indent: 30px; white-space: normal; background-color\";s:8:\"continue\";s:1:\"1\";}', '1510752936');
INSERT INTO `jt_web_log` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:18:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:81:\"三门峡市交通运输局被授予“助力脱贫攻坚先进基层党组织”\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:27:\"三门峡市交通运输局\";s:11:\"news_source\";s:27:\"三门峡市交通运输局\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:27:\"三门峡市交通运输局\";s:12:\"news_content\";s:338:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">近日，三门峡市交通运输局党委被中共三门峡市委组织部、中共三门峡市委市直工委、三门峡市扶贫开发办公室授予“助力脱贫攻坚先进基层党组织”。<\";s:8:\"continue\";s:1:\"1\";}', '1510752976');
INSERT INTO `jt_web_log` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:18:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:48:\"全国多式联运现场推进会在郑州召开\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:24:\"全国多式联运现场\";s:11:\"news_source\";s:12:\"厅办公室\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:200:\"<p style=\"text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 15px; text-indent: 2em; white-space: normal; b\";s:8:\"continue\";s:1:\"1\";}', '1510753022');
INSERT INTO `jt_web_log` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:18:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:70:\"郑州市2017年农村公路交通情况比重调查工作圆满完成\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:18:\"农村公路交通\";s:11:\"news_source\";s:24:\"郑州市交通运输委\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:334:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为认真做好全市范围内农村公路交通情况比重调查工作，全面了解新规划后郑州市农村公路中县、乡道上的交通流量情况，郑州市地方公路管理处于201\";s:8:\"continue\";s:1:\"1\";}', '1510753058');
INSERT INTO `jt_web_log` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:18:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:96:\"济源市人大常委会主任李军星一行对交通基础设施建设项目进行实地查看\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:9:\"李军星\";s:11:\"news_source\";s:24:\"济源市交通运输局\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 15px; text-indent: 30px; white-space: normal; background-color\";s:8:\"continue\";s:1:\"1\";}', '1510753093');
INSERT INTO `jt_web_log` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:17:{s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:64:\"滑县交通运输局 安全生产专项整治行动圆满结束\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:21:\"滑县交通运输局\";s:11:\"news_source\";s:21:\"滑县交通运输局\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:298:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为全面贯彻落实省局方案，遏制安全事故的发生，县交通运输局积极开展道路运输安全生产专项整治行动。</span><br style=\"col\";}', '1510753128');
INSERT INTO `jt_web_log` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753252');
INSERT INTO `jt_web_log` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753273');
INSERT INTO `jt_web_log` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753277');
INSERT INTO `jt_web_log` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753293');
INSERT INTO `jt_web_log` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753304');
INSERT INTO `jt_web_log` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510753310');
INSERT INTO `jt_web_log` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753314');
INSERT INTO `jt_web_log` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753348');
INSERT INTO `jt_web_log` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753564');
INSERT INTO `jt_web_log` VALUES ('94', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753591');
INSERT INTO `jt_web_log` VALUES ('95', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753711');
INSERT INTO `jt_web_log` VALUES ('96', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510753723');
INSERT INTO `jt_web_log` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510816476');
INSERT INTO `jt_web_log` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510817188');
INSERT INTO `jt_web_log` VALUES ('99', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510817364');
INSERT INTO `jt_web_log` VALUES ('100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510817454');
INSERT INTO `jt_web_log` VALUES ('101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510817749');
INSERT INTO `jt_web_log` VALUES ('102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510817815');
INSERT INTO `jt_web_log` VALUES ('103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817849');
INSERT INTO `jt_web_log` VALUES ('104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510817883');
INSERT INTO `jt_web_log` VALUES ('105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817888');
INSERT INTO `jt_web_log` VALUES ('106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817893');
INSERT INTO `jt_web_log` VALUES ('107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/44.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"44\";}', '1510817895');
INSERT INTO `jt_web_log` VALUES ('108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817897');
INSERT INTO `jt_web_log` VALUES ('109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817920');
INSERT INTO `jt_web_log` VALUES ('110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510817924');
INSERT INTO `jt_web_log` VALUES ('111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510818193');
INSERT INTO `jt_web_log` VALUES ('112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/44.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"44\";}', '1510818197');
INSERT INTO `jt_web_log` VALUES ('113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510818200');
INSERT INTO `jt_web_log` VALUES ('114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510818202');
INSERT INTO `jt_web_log` VALUES ('115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510818207');
INSERT INTO `jt_web_log` VALUES ('116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819058');
INSERT INTO `jt_web_log` VALUES ('117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819088');
INSERT INTO `jt_web_log` VALUES ('118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819095');
INSERT INTO `jt_web_log` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819098');
INSERT INTO `jt_web_log` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819131');
INSERT INTO `jt_web_log` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819234');
INSERT INTO `jt_web_log` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510819246');
INSERT INTO `jt_web_log` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510837104');
INSERT INTO `jt_web_log` VALUES ('124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510837148');
INSERT INTO `jt_web_log` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510837246');
INSERT INTO `jt_web_log` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510837304');
INSERT INTO `jt_web_log` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510837498');
INSERT INTO `jt_web_log` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510838709');
INSERT INTO `jt_web_log` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510838820');
INSERT INTO `jt_web_log` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510838873');
INSERT INTO `jt_web_log` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510838917');
INSERT INTO `jt_web_log` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839144');
INSERT INTO `jt_web_log` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839237');
INSERT INTO `jt_web_log` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839274');
INSERT INTO `jt_web_log` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839783');
INSERT INTO `jt_web_log` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839907');
INSERT INTO `jt_web_log` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510839914');
INSERT INTO `jt_web_log` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510840136');
INSERT INTO `jt_web_log` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510840139');
INSERT INTO `jt_web_log` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510840170');
INSERT INTO `jt_web_log` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510840206');
INSERT INTO `jt_web_log` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510840212');
INSERT INTO `jt_web_log` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510840217');
INSERT INTO `jt_web_log` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510841489');
INSERT INTO `jt_web_log` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510841808');
INSERT INTO `jt_web_log` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510841852');
INSERT INTO `jt_web_log` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510842804');
INSERT INTO `jt_web_log` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510843292');
INSERT INTO `jt_web_log` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/news/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1510843309');
INSERT INTO `jt_web_log` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510843318');
INSERT INTO `jt_web_log` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510843562');
INSERT INTO `jt_web_log` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510843567');
INSERT INTO `jt_web_log` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510921302');
INSERT INTO `jt_web_log` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510921415');
INSERT INTO `jt_web_log` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510921918');
INSERT INTO `jt_web_log` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510921935');
INSERT INTO `jt_web_log` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510921937');
INSERT INTO `jt_web_log` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510922005');
INSERT INTO `jt_web_log` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510922393');
INSERT INTO `jt_web_log` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510922721');
INSERT INTO `jt_web_log` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510922922');
INSERT INTO `jt_web_log` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510922957');
INSERT INTO `jt_web_log` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510922958');
INSERT INTO `jt_web_log` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510923066');
INSERT INTO `jt_web_log` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510923068');
INSERT INTO `jt_web_log` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510923291');
INSERT INTO `jt_web_log` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510923694');
INSERT INTO `jt_web_log` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510924069');
INSERT INTO `jt_web_log` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=2', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510924073');
INSERT INTO `jt_web_log` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1510924076');
INSERT INTO `jt_web_log` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1510924843');
INSERT INTO `jt_web_log` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=2', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510924847');
INSERT INTO `jt_web_log` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1510924851');
INSERT INTO `jt_web_log` VALUES ('174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510925353');
INSERT INTO `jt_web_log` VALUES ('175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510925357');
INSERT INTO `jt_web_log` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510925364');
INSERT INTO `jt_web_log` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1510925368');
INSERT INTO `jt_web_log` VALUES ('178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510925371');
INSERT INTO `jt_web_log` VALUES ('179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=2', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1510925374');
INSERT INTO `jt_web_log` VALUES ('180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1510925379');
INSERT INTO `jt_web_log` VALUES ('181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510925385');
INSERT INTO `jt_web_log` VALUES ('182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510925647');
INSERT INTO `jt_web_log` VALUES ('183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510925679');
INSERT INTO `jt_web_log` VALUES ('184', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510926099');
INSERT INTO `jt_web_log` VALUES ('185', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510926103');
INSERT INTO `jt_web_log` VALUES ('186', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510926108');
INSERT INTO `jt_web_log` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510928005');
INSERT INTO `jt_web_log` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510928006');
INSERT INTO `jt_web_log` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510928008');
INSERT INTO `jt_web_log` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928010');
INSERT INTO `jt_web_log` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928066');
INSERT INTO `jt_web_log` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928075');
INSERT INTO `jt_web_log` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928079');
INSERT INTO `jt_web_log` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928156');
INSERT INTO `jt_web_log` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510928412');
INSERT INTO `jt_web_log` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928419');
INSERT INTO `jt_web_log` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928422');
INSERT INTO `jt_web_log` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928431');
INSERT INTO `jt_web_log` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928621');
INSERT INTO `jt_web_log` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928669');
INSERT INTO `jt_web_log` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510928678');
INSERT INTO `jt_web_log` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928683');
INSERT INTO `jt_web_log` VALUES ('203', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(55.0.2883.87)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928726');
INSERT INTO `jt_web_log` VALUES ('204', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(55.0.2883.87)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510928728');
INSERT INTO `jt_web_log` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510929452');
INSERT INTO `jt_web_log` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510929477');
INSERT INTO `jt_web_log` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930016');
INSERT INTO `jt_web_log` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930035');
INSERT INTO `jt_web_log` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930095');
INSERT INTO `jt_web_log` VALUES ('210', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930657');
INSERT INTO `jt_web_log` VALUES ('211', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930709');
INSERT INTO `jt_web_log` VALUES ('212', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930719');
INSERT INTO `jt_web_log` VALUES ('213', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510930978');
INSERT INTO `jt_web_log` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931023');
INSERT INTO `jt_web_log` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931031');
INSERT INTO `jt_web_log` VALUES ('216', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510931050');
INSERT INTO `jt_web_log` VALUES ('217', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931053');
INSERT INTO `jt_web_log` VALUES ('218', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931060');
INSERT INTO `jt_web_log` VALUES ('219', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931064');
INSERT INTO `jt_web_log` VALUES ('220', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/list/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510931793');
INSERT INTO `jt_web_log` VALUES ('221', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510931803');
INSERT INTO `jt_web_log` VALUES ('222', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510931886');
INSERT INTO `jt_web_log` VALUES ('223', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510931913');
INSERT INTO `jt_web_log` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932113');
INSERT INTO `jt_web_log` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runurlsys.html', 'admin', 'Sys', 'runurlsys', 'Ajax', 'a:2:{s:11:\"html_suffix\";s:4:\"html\";s:14:\"url_route_mode\";s:1:\"2\";}', '1510932344');
INSERT INTO `jt_web_log` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1510932348');
INSERT INTO `jt_web_log` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932352');
INSERT INTO `jt_web_log` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932359');
INSERT INTO `jt_web_log` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1510932370');
INSERT INTO `jt_web_log` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932372');
INSERT INTO `jt_web_log` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932374');
INSERT INTO `jt_web_log` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932376');
INSERT INTO `jt_web_log` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932377');
INSERT INTO `jt_web_log` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510932601');
INSERT INTO `jt_web_log` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510970225');
INSERT INTO `jt_web_log` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510970678');
INSERT INTO `jt_web_log` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510970707');
INSERT INTO `jt_web_log` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510970714');
INSERT INTO `jt_web_log` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510970720');
INSERT INTO `jt_web_log` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/7.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1510970722');
INSERT INTO `jt_web_log` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510970726');
INSERT INTO `jt_web_log` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510970816');
INSERT INTO `jt_web_log` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510971534');
INSERT INTO `jt_web_log` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510971537');
INSERT INTO `jt_web_log` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971539');
INSERT INTO `jt_web_log` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510971540');
INSERT INTO `jt_web_log` VALUES ('247', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510971541');
INSERT INTO `jt_web_log` VALUES ('248', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510971548');
INSERT INTO `jt_web_log` VALUES ('249', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510971551');
INSERT INTO `jt_web_log` VALUES ('250', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1510971553');
INSERT INTO `jt_web_log` VALUES ('251', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1510971565');
INSERT INTO `jt_web_log` VALUES ('252', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971566');
INSERT INTO `jt_web_log` VALUES ('253', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510971608');
INSERT INTO `jt_web_log` VALUES ('254', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971609');
INSERT INTO `jt_web_log` VALUES ('255', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971629');
INSERT INTO `jt_web_log` VALUES ('256', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971634');
INSERT INTO `jt_web_log` VALUES ('257', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510971636');
INSERT INTO `jt_web_log` VALUES ('258', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510971777');
INSERT INTO `jt_web_log` VALUES ('259', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971781');
INSERT INTO `jt_web_log` VALUES ('260', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971797');
INSERT INTO `jt_web_log` VALUES ('261', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971934');
INSERT INTO `jt_web_log` VALUES ('262', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971943');
INSERT INTO `jt_web_log` VALUES ('263', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510971961');
INSERT INTO `jt_web_log` VALUES ('264', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972506');
INSERT INTO `jt_web_log` VALUES ('265', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510972520');
INSERT INTO `jt_web_log` VALUES ('266', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972524');
INSERT INTO `jt_web_log` VALUES ('267', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972651');
INSERT INTO `jt_web_log` VALUES ('268', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972681');
INSERT INTO `jt_web_log` VALUES ('269', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510972684');
INSERT INTO `jt_web_log` VALUES ('270', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510972688');
INSERT INTO `jt_web_log` VALUES ('271', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1510972698');
INSERT INTO `jt_web_log` VALUES ('272', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1510972704');
INSERT INTO `jt_web_log` VALUES ('273', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1510972714');
INSERT INTO `jt_web_log` VALUES ('274', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1510972716');
INSERT INTO `jt_web_log` VALUES ('275', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1510972722');
INSERT INTO `jt_web_log` VALUES ('276', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1510972730');
INSERT INTO `jt_web_log` VALUES ('277', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510972732');
INSERT INTO `jt_web_log` VALUES ('278', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972736');
INSERT INTO `jt_web_log` VALUES ('279', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510972738');
INSERT INTO `jt_web_log` VALUES ('280', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510972784');
INSERT INTO `jt_web_log` VALUES ('281', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510972787');
INSERT INTO `jt_web_log` VALUES ('282', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972788');
INSERT INTO `jt_web_log` VALUES ('283', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510972792');
INSERT INTO `jt_web_log` VALUES ('284', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510972870');
INSERT INTO `jt_web_log` VALUES ('285', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972875');
INSERT INTO `jt_web_log` VALUES ('286', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510972949');
INSERT INTO `jt_web_log` VALUES ('287', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510972952');
INSERT INTO `jt_web_log` VALUES ('288', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510972953');
INSERT INTO `jt_web_log` VALUES ('289', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510972954');
INSERT INTO `jt_web_log` VALUES ('290', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510973383');
INSERT INTO `jt_web_log` VALUES ('291', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510973388');
INSERT INTO `jt_web_log` VALUES ('292', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510973390');
INSERT INTO `jt_web_log` VALUES ('293', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510973462');
INSERT INTO `jt_web_log` VALUES ('294', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510973608');
INSERT INTO `jt_web_log` VALUES ('295', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510997481');
INSERT INTO `jt_web_log` VALUES ('296', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510997697');
INSERT INTO `jt_web_log` VALUES ('297', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510997700');
INSERT INTO `jt_web_log` VALUES ('298', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510997702');
INSERT INTO `jt_web_log` VALUES ('299', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510997705');
INSERT INTO `jt_web_log` VALUES ('300', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1510998703');
INSERT INTO `jt_web_log` VALUES ('301', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510998705');
INSERT INTO `jt_web_log` VALUES ('302', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510998724');
INSERT INTO `jt_web_log` VALUES ('303', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/42.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"42\";}', '1510998729');
INSERT INTO `jt_web_log` VALUES ('304', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510998735');
INSERT INTO `jt_web_log` VALUES ('305', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510998780');
INSERT INTO `jt_web_log` VALUES ('306', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/4.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1510998783');
INSERT INTO `jt_web_log` VALUES ('307', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510998786');
INSERT INTO `jt_web_log` VALUES ('308', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999394');
INSERT INTO `jt_web_log` VALUES ('309', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999397');
INSERT INTO `jt_web_log` VALUES ('310', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999405');
INSERT INTO `jt_web_log` VALUES ('311', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510999556');
INSERT INTO `jt_web_log` VALUES ('312', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999561');
INSERT INTO `jt_web_log` VALUES ('313', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999565');
INSERT INTO `jt_web_log` VALUES ('314', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999579');
INSERT INTO `jt_web_log` VALUES ('315', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999781');
INSERT INTO `jt_web_log` VALUES ('316', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510999815');
INSERT INTO `jt_web_log` VALUES ('317', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999898');
INSERT INTO `jt_web_log` VALUES ('318', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1510999904');
INSERT INTO `jt_web_log` VALUES ('319', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1510999913');
INSERT INTO `jt_web_log` VALUES ('320', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1510999949');
INSERT INTO `jt_web_log` VALUES ('321', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000136');
INSERT INTO `jt_web_log` VALUES ('322', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511000350');
INSERT INTO `jt_web_log` VALUES ('323', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511000353');
INSERT INTO `jt_web_log` VALUES ('324', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511000356');
INSERT INTO `jt_web_log` VALUES ('325', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511000358');
INSERT INTO `jt_web_log` VALUES ('326', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511000362');
INSERT INTO `jt_web_log` VALUES ('327', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511000369');
INSERT INTO `jt_web_log` VALUES ('328', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511000372');
INSERT INTO `jt_web_log` VALUES ('329', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511000373');
INSERT INTO `jt_web_log` VALUES ('330', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000374');
INSERT INTO `jt_web_log` VALUES ('331', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000498');
INSERT INTO `jt_web_log` VALUES ('332', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000526');
INSERT INTO `jt_web_log` VALUES ('333', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511000528');
INSERT INTO `jt_web_log` VALUES ('334', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511000531');
INSERT INTO `jt_web_log` VALUES ('335', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000533');
INSERT INTO `jt_web_log` VALUES ('336', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1511000539');
INSERT INTO `jt_web_log` VALUES ('337', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1511000606');
INSERT INTO `jt_web_log` VALUES ('338', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1511000610');
INSERT INTO `jt_web_log` VALUES ('339', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1511000645');
INSERT INTO `jt_web_log` VALUES ('340', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000651');
INSERT INTO `jt_web_log` VALUES ('341', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1511000654');
INSERT INTO `jt_web_log` VALUES ('342', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511000657');
INSERT INTO `jt_web_log` VALUES ('343', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511000658');
INSERT INTO `jt_web_log` VALUES ('344', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511007329');
INSERT INTO `jt_web_log` VALUES ('345', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511007338');
INSERT INTO `jt_web_log` VALUES ('346', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511007866');
INSERT INTO `jt_web_log` VALUES ('347', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511008637');
INSERT INTO `jt_web_log` VALUES ('348', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511074153');
INSERT INTO `jt_web_log` VALUES ('349', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_adtype_edit.html', 'admin', 'Plug', 'plug_adtype_edit', 'Ajax', 'a:1:{s:14:\"plug_adtype_id\";s:1:\"1\";}', '1511074757');
INSERT INTO `jt_web_log` VALUES ('350', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1511074900');
INSERT INTO `jt_web_log` VALUES ('351', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runedit.html', 'admin', 'Plug', 'plug_ad_runedit', 'Ajax', 'a:10:{s:10:\"plug_ad_id\";s:1:\"1\";s:16:\"plug_ad_adtypeid\";s:1:\"1\";s:12:\"plug_ad_name\";s:49:\"不忘初心，牢记使命 学习十九大精神\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7upo8g_706ml271j1s858417cf6e11a9.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/news/index/id/46.html\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:49:\"不忘初心，牢记使命 学习十九大精神\";}', '1511074917');
INSERT INTO `jt_web_log` VALUES ('352', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511074932');
INSERT INTO `jt_web_log` VALUES ('353', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/45.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"45\";}', '1511074990');
INSERT INTO `jt_web_log` VALUES ('354', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runedit.html', 'admin', 'Plug', 'plug_ad_runedit', 'Ajax', 'a:10:{s:10:\"plug_ad_id\";s:1:\"2\";s:16:\"plug_ad_adtypeid\";s:1:\"1\";s:12:\"plug_ad_name\";s:33:\"为老人营造一个温馨的家\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7uq7iw_17vba6gddvdw58417d0f2728b.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/news/index/id/45.html\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:33:\"为老人营造一个温馨的家\";}', '1511075001');
INSERT INTO `jt_web_log` VALUES ('355', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511075009');
INSERT INTO `jt_web_log` VALUES ('356', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511075479');
INSERT INTO `jt_web_log` VALUES ('357', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511075726');
INSERT INTO `jt_web_log` VALUES ('358', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_adtype_runadd.html', 'admin', 'Plug', 'plug_adtype_runadd', 'Ajax', 'a:2:{s:16:\"plug_adtype_name\";s:39:\"首页轮播二（新闻中心左则）\";s:17:\"plug_adtype_order\";s:2:\"50\";}', '1511076119');
INSERT INTO `jt_web_log` VALUES ('359', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/42.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"42\";}', '1511076737');
INSERT INTO `jt_web_log` VALUES ('360', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"2\";s:12:\"plug_ad_name\";s:69:\"唐彦民副厅长一行到监控室检查、指导安全生产工作\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/news/index/id/42.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:69:\"唐彦民副厅长一行到监控室检查、指导安全生产工作\";}', '1511076750');
INSERT INTO `jt_web_log` VALUES ('361', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511076760');
INSERT INTO `jt_web_log` VALUES ('362', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/42.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"42\";}', '1511076792');
INSERT INTO `jt_web_log` VALUES ('363', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"2\";s:12:\"plug_ad_name\";s:78:\"厅直党委检查组对服务中心全面从严治党情况进行专项检查\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/news/index/id/42.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:78:\"厅直党委检查组对服务中心全面从严治党情况进行专项检查\";}', '1511076801');
INSERT INTO `jt_web_log` VALUES ('364', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511076808');
INSERT INTO `jt_web_log` VALUES ('365', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/42.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"42\";}', '1511076831');
INSERT INTO `jt_web_log` VALUES ('366', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:7:{s:16:\"plug_ad_adtypeid\";s:1:\"2\";s:12:\"plug_ad_name\";s:93:\"服务中心副主任罗斌杰同志到濮阳县郎中乡马白邱村任职驻村第一书记\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/news/index/id/42.html\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:93:\"服务中心副主任罗斌杰同志到濮阳县郎中乡马白邱村任职驻村第一书记\";}', '1511076839');
INSERT INTO `jt_web_log` VALUES ('367', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511076950');
INSERT INTO `jt_web_log` VALUES ('368', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511076955');
INSERT INTO `jt_web_log` VALUES ('369', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_state.html', 'admin', 'Plug', 'plug_ad_state', 'Ajax', 'a:1:{s:1:\"x\";s:1:\"7\";}', '1511077018');
INSERT INTO `jt_web_log` VALUES ('370', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077023');
INSERT INTO `jt_web_log` VALUES ('371', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077103');
INSERT INTO `jt_web_log` VALUES ('372', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077299');
INSERT INTO `jt_web_log` VALUES ('373', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077612');
INSERT INTO `jt_web_log` VALUES ('374', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077794');
INSERT INTO `jt_web_log` VALUES ('375', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/42.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"42\";}', '1511077805');
INSERT INTO `jt_web_log` VALUES ('376', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511077808');
INSERT INTO `jt_web_log` VALUES ('377', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511078229');
INSERT INTO `jt_web_log` VALUES ('378', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511078235');
INSERT INTO `jt_web_log` VALUES ('379', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511078237');
INSERT INTO `jt_web_log` VALUES ('380', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_adtype_runadd.html', 'admin', 'Plug', 'plug_adtype_runadd', 'Ajax', 'a:2:{s:16:\"plug_adtype_name\";s:25:\"首页右侧-观点前沿\";s:17:\"plug_adtype_order\";s:2:\"50\";}', '1511082924');
INSERT INTO `jt_web_log` VALUES ('381', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:7:{s:16:\"plug_ad_adtypeid\";s:1:\"3\";s:12:\"plug_ad_name\";s:12:\"观点前沿\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:0:\"\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:12:\"观点前沿\";}', '1511082964');
INSERT INTO `jt_web_log` VALUES ('382', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511083107');
INSERT INTO `jt_web_log` VALUES ('383', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_state.html', 'admin', 'Plug', 'plug_ad_state', 'Ajax', 'a:1:{s:1:\"x\";s:1:\"8\";}', '1511083117');
INSERT INTO `jt_web_log` VALUES ('384', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511083120');
INSERT INTO `jt_web_log` VALUES ('385', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511083197');
INSERT INTO `jt_web_log` VALUES ('386', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runadd.html', 'admin', 'Menu', 'news_menu_runadd', 'Ajax', 'a:15:{s:9:\"lang_list\";s:0:\"\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"精神文明\";s:11:\"menu_enname\";s:0:\"\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511083391');
INSERT INTO `jt_web_log` VALUES ('387', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_adtype_runadd.html', 'admin', 'Plug', 'plug_adtype_runadd', 'Ajax', 'a:2:{s:16:\"plug_adtype_name\";s:25:\"首页右侧-精神文明\";s:17:\"plug_adtype_order\";s:2:\"50\";}', '1511084208');
INSERT INTO `jt_web_log` VALUES ('388', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511084246');
INSERT INTO `jt_web_log` VALUES ('389', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"4\";s:12:\"plug_ad_name\";s:12:\"党课教育\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:42:\"http://www.tp.gl/home/news/index/id/5.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:12:\"党课教育\";}', '1511084257');
INSERT INTO `jt_web_log` VALUES ('390', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084266');
INSERT INTO `jt_web_log` VALUES ('391', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511084295');
INSERT INTO `jt_web_log` VALUES ('392', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"4\";s:12:\"plug_ad_name\";s:15:\"服务大讲堂\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:42:\"http://www.tp.gl/home/news/index/id/5.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:15:\"服务大讲堂\";}', '1511084299');
INSERT INTO `jt_web_log` VALUES ('393', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"4\";s:12:\"plug_ad_name\";s:12:\"发展论坛\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:42:\"http://www.tp.gl/home/news/index/id/5.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:12:\"发展论坛\";}', '1511084328');
INSERT INTO `jt_web_log` VALUES ('394', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"4\";s:12:\"plug_ad_name\";s:12:\"服务之窗\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:42:\"http://www.tp.gl/home/news/index/id/5.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:12:\"服务之窗\";}', '1511084357');
INSERT INTO `jt_web_log` VALUES ('395', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084594');
INSERT INTO `jt_web_log` VALUES ('396', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084656');
INSERT INTO `jt_web_log` VALUES ('397', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084671');
INSERT INTO `jt_web_log` VALUES ('398', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084814');
INSERT INTO `jt_web_log` VALUES ('399', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511084939');
INSERT INTO `jt_web_log` VALUES ('400', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085113');
INSERT INTO `jt_web_log` VALUES ('401', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085152');
INSERT INTO `jt_web_log` VALUES ('402', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085527');
INSERT INTO `jt_web_log` VALUES ('403', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085597');
INSERT INTO `jt_web_log` VALUES ('404', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085661');
INSERT INTO `jt_web_log` VALUES ('405', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085751');
INSERT INTO `jt_web_log` VALUES ('406', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511085852');
INSERT INTO `jt_web_log` VALUES ('407', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runedit.html', 'admin', 'Plug', 'plug_ad_runedit', 'Ajax', 'a:11:{s:10:\"plug_ad_id\";s:1:\"8\";s:16:\"plug_ad_adtypeid\";s:1:\"3\";s:12:\"plug_ad_name\";s:12:\"观点前沿\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:8:\"checkpic\";s:41:\"/data/upload/2017-11-19/5a114bd45ed1e.jpg\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-19/5a114bd45ed1e.jpg\";s:5:\"file0\";s:0:\"\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/listn/index/id/6.html\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:12:\"观点前沿\";}', '1511085863');
INSERT INTO `jt_web_log` VALUES ('408', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511085867');
INSERT INTO `jt_web_log` VALUES ('409', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511085872');
INSERT INTO `jt_web_log` VALUES ('410', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511162959');
INSERT INTO `jt_web_log` VALUES ('411', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_linktype_runedit.html', 'admin', 'Plug', 'plug_linktype_runedit', 'Ajax', 'a:3:{s:16:\"plug_linktype_id\";s:1:\"2\";s:18:\"plug_linktype_name\";s:12:\"尾部导航\";s:19:\"plug_linktype_order\";s:2:\"50\";}', '1511163014');
INSERT INTO `jt_web_log` VALUES ('412', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_edit.html', 'admin', 'Plug', 'plug_link_edit', 'Ajax', 'a:1:{s:12:\"plug_link_id\";s:1:\"3\";}', '1511163039');
INSERT INTO `jt_web_log` VALUES ('413', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_edit.html', 'admin', 'Plug', 'plug_link_edit', 'Ajax', 'a:1:{s:12:\"plug_link_id\";s:1:\"3\";}', '1511163117');
INSERT INTO `jt_web_log` VALUES ('414', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runedit.html', 'admin', 'Plug', 'plug_link_runedit', 'Ajax', 'a:7:{s:12:\"plug_link_id\";s:1:\"3\";s:16:\"plug_link_typeid\";s:1:\"1\";s:14:\"plug_link_name\";s:21:\"河南交通运输厅\";s:13:\"plug_link_url\";s:22:\"http://www.hncd.gov.cn\";s:16:\"plug_link_target\";s:6:\"_blank\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163140');
INSERT INTO `jt_web_log` VALUES ('415', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_edit.html', 'admin', 'Plug', 'plug_link_edit', 'Ajax', 'a:1:{s:12:\"plug_link_id\";s:1:\"1\";}', '1511163145');
INSERT INTO `jt_web_log` VALUES ('416', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runedit.html', 'admin', 'Plug', 'plug_link_runedit', 'Ajax', 'a:7:{s:12:\"plug_link_id\";s:1:\"1\";s:16:\"plug_link_typeid\";s:1:\"1\";s:14:\"plug_link_name\";s:18:\"河南人民政府\";s:13:\"plug_link_url\";s:24:\"http://www.henan.gov.cn/\";s:16:\"plug_link_target\";s:6:\"_blank\";s:12:\"plug_link_qq\";s:3:\"eee\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163173');
INSERT INTO `jt_web_log` VALUES ('417', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_edit.html', 'admin', 'Plug', 'plug_link_edit', 'Ajax', 'a:1:{s:12:\"plug_link_id\";s:1:\"2\";}', '1511163183');
INSERT INTO `jt_web_log` VALUES ('418', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runedit.html', 'admin', 'Plug', 'plug_link_runedit', 'Ajax', 'a:7:{s:12:\"plug_link_id\";s:1:\"2\";s:16:\"plug_link_typeid\";s:1:\"2\";s:14:\"plug_link_name\";s:12:\"联系我们\";s:13:\"plug_link_url\";s:43:\"http://www.tp.gl/home/listn/index/id/4.html\";s:16:\"plug_link_target\";s:6:\"_blank\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163310');
INSERT INTO `jt_web_log` VALUES ('419', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runadd.html', 'admin', 'Plug', 'plug_link_runadd', 'Ajax', 'a:7:{s:16:\"plug_link_typeid\";s:1:\"2\";s:14:\"plug_link_name\";s:12:\"中心简介\";s:13:\"plug_link_url\";s:43:\"http://www.tp.gl/home/listn/index/id/4.html\";s:16:\"plug_link_target\";s:6:\"_blank\";s:14:\"plug_link_open\";s:1:\"1\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163332');
INSERT INTO `jt_web_log` VALUES ('420', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runadd.html', 'admin', 'Plug', 'plug_link_runadd', 'Ajax', 'a:7:{s:16:\"plug_link_typeid\";s:1:\"2\";s:14:\"plug_link_name\";s:12:\"观点前沿\";s:13:\"plug_link_url\";s:43:\"http://www.tp.gl/home/listn/index/id/4.html\";s:16:\"plug_link_target\";s:6:\"_blank\";s:14:\"plug_link_open\";s:1:\"1\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163358');
INSERT INTO `jt_web_log` VALUES ('421', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runadd.html', 'admin', 'Plug', 'plug_link_runadd', 'Ajax', 'a:7:{s:16:\"plug_link_typeid\";s:1:\"2\";s:14:\"plug_link_name\";s:12:\"新闻中心\";s:13:\"plug_link_url\";s:43:\"http://www.tp.gl/home/listn/index/id/4.html\";s:16:\"plug_link_target\";s:6:\"_blank\";s:14:\"plug_link_open\";s:1:\"1\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1511163404');
INSERT INTO `jt_web_log` VALUES ('422', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511164610');
INSERT INTO `jt_web_log` VALUES ('423', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511164787');
INSERT INTO `jt_web_log` VALUES ('424', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511165382');
INSERT INTO `jt_web_log` VALUES ('425', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511165474');
INSERT INTO `jt_web_log` VALUES ('426', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511165545');
INSERT INTO `jt_web_log` VALUES ('427', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511165557');
INSERT INTO `jt_web_log` VALUES ('428', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511165574');
INSERT INTO `jt_web_log` VALUES ('429', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511166245');
INSERT INTO `jt_web_log` VALUES ('430', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511166251');
INSERT INTO `jt_web_log` VALUES ('431', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511166288');
INSERT INTO `jt_web_log` VALUES ('432', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511166292');
INSERT INTO `jt_web_log` VALUES ('433', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511167757');
INSERT INTO `jt_web_log` VALUES ('434', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511167760');
INSERT INTO `jt_web_log` VALUES ('435', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:0:\"\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:12:\"<p>aaaaa</p>\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511175604');
INSERT INTO `jt_web_log` VALUES ('436', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511176499');
INSERT INTO `jt_web_log` VALUES ('437', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511176510');
INSERT INTO `jt_web_log` VALUES ('438', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511176559');
INSERT INTO `jt_web_log` VALUES ('439', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511176881');
INSERT INTO `jt_web_log` VALUES ('440', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:12:\"<p>aaaaa</p>\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511176930');
INSERT INTO `jt_web_log` VALUES ('441', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511176936');
INSERT INTO `jt_web_log` VALUES ('442', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511176938');
INSERT INTO `jt_web_log` VALUES ('443', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511176940');
INSERT INTO `jt_web_log` VALUES ('444', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511176941');
INSERT INTO `jt_web_log` VALUES ('445', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511176944');
INSERT INTO `jt_web_log` VALUES ('446', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511176946');
INSERT INTO `jt_web_log` VALUES ('447', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511177039');
INSERT INTO `jt_web_log` VALUES ('448', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:5:\"about\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:12:\"<p>aaaaa</p>\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511177046');
INSERT INTO `jt_web_log` VALUES ('449', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511177109');
INSERT INTO `jt_web_log` VALUES ('450', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511177214');
INSERT INTO `jt_web_log` VALUES ('451', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:5:\"about\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:232:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆根据机关后勤服务工作规\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511177246');
INSERT INTO `jt_web_log` VALUES ('452', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511177251');
INSERT INTO `jt_web_log` VALUES ('453', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511177256');
INSERT INTO `jt_web_log` VALUES ('454', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511177290');
INSERT INTO `jt_web_log` VALUES ('455', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"4\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"联系我们\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"55\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:218:\"<p style=\"text-align: left;\"><strong><font color=\"#333333\" face=\"幼圆, 宋体, Arial Narrow\"><span style=\"font-size: 12px; background-color: rgb(255, 255, 255);\">单位名称：<span style=\"color: rgb(51, 51, 51); fo\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511177381');
INSERT INTO `jt_web_log` VALUES ('456', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511177387');
INSERT INTO `jt_web_log` VALUES ('457', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"4\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"联系我们\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"55\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:200:\"<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px;\"><strong><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); backgroun\";s:14:\"menu_seo_title\";s:0:\"\";s:12:\"menu_seo_key\";s:0:\"\";s:12:\"menu_seo_des\";s:0:\"\";}', '1511177438');
INSERT INTO `jt_web_log` VALUES ('458', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511177442');
INSERT INTO `jt_web_log` VALUES ('459', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511177476');
INSERT INTO `jt_web_log` VALUES ('460', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511177478');
INSERT INTO `jt_web_log` VALUES ('461', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511177481');
INSERT INTO `jt_web_log` VALUES ('462', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511177483');
INSERT INTO `jt_web_log` VALUES ('463', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511177487');
INSERT INTO `jt_web_log` VALUES ('464', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511177489');
INSERT INTO `jt_web_log` VALUES ('465', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511177493');
INSERT INTO `jt_web_log` VALUES ('466', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html?lang=cn&class1=10001&searchword=', 'home', 'Index', 'index', 'Ajax', 'a:3:{s:4:\"lang\";s:2:\"cn\";s:6:\"class1\";s:5:\"10001\";s:10:\"searchword\";s:0:\"\";}', '1511177682');
INSERT INTO `jt_web_log` VALUES ('467', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511177694');
INSERT INTO `jt_web_log` VALUES ('468', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511179711');
INSERT INTO `jt_web_log` VALUES ('469', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=ss', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:2:\"ss\";}', '1511179947');
INSERT INTO `jt_web_log` VALUES ('470', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=yfcmf', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:5:\"yfcmf\";}', '1511179962');
INSERT INTO `jt_web_log` VALUES ('471', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511180025');
INSERT INTO `jt_web_log` VALUES ('472', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html?lang=cn&class1=10001&searchword=y', 'home', 'Listn', 'index', 'Ajax', 'a:4:{s:4:\"lang\";s:2:\"cn\";s:6:\"class1\";s:5:\"10001\";s:10:\"searchword\";s:1:\"y\";s:2:\"id\";s:1:\"1\";}', '1511180036');
INSERT INTO `jt_web_log` VALUES ('473', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511180038');
INSERT INTO `jt_web_log` VALUES ('474', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=y', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:1:\"y\";}', '1511180042');
INSERT INTO `jt_web_log` VALUES ('475', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=y', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:1:\"y\";}', '1511180235');
INSERT INTO `jt_web_log` VALUES ('476', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511180238');
INSERT INTO `jt_web_log` VALUES ('477', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511180245');
INSERT INTO `jt_web_log` VALUES ('478', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/46.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"46\";}', '1511180260');
INSERT INTO `jt_web_log` VALUES ('479', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511180265');
INSERT INTO `jt_web_log` VALUES ('480', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_adtype_runadd.html', 'admin', 'Plug', 'plug_adtype_runadd', 'Ajax', 'a:2:{s:16:\"plug_adtype_name\";s:21:\"列表页顶部广告\";s:17:\"plug_adtype_order\";s:2:\"50\";}', '1511180284');
INSERT INTO `jt_web_log` VALUES ('481', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"5\";s:12:\"plug_ad_name\";s:15:\"喜迎十九大\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:43:\"http://www.tp.gl/home/listn/index/id/1.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:15:\"喜迎十九大\";}', '1511180914');
INSERT INTO `jt_web_log` VALUES ('482', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_list.html', 'admin', 'Plug', 'plug_ad_list', 'Ajax', 'a:2:{s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511180942');
INSERT INTO `jt_web_log` VALUES ('483', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511181094');
INSERT INTO `jt_web_log` VALUES ('484', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511181102');
INSERT INTO `jt_web_log` VALUES ('485', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=%E5%8D%81%E4%B9%9D', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:6:\"十九\";}', '1511181109');
INSERT INTO `jt_web_log` VALUES ('486', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511181218');
INSERT INTO `jt_web_log` VALUES ('487', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511181221');
INSERT INTO `jt_web_log` VALUES ('488', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511181318');
INSERT INTO `jt_web_log` VALUES ('489', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511255506');
INSERT INTO `jt_web_log` VALUES ('490', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511255513');
INSERT INTO `jt_web_log` VALUES ('491', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511255515');
INSERT INTO `jt_web_log` VALUES ('492', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511256027');
INSERT INTO `jt_web_log` VALUES ('493', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511265613');
INSERT INTO `jt_web_log` VALUES ('494', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511265702');
INSERT INTO `jt_web_log` VALUES ('495', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"27\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:64:\"滑县交通运输局 安全生产专项整治行动圆满结束\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:21:\"滑县交通运输局\";s:11:\"news_source\";s:21:\"滑县交通运输局\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:210:\"通过此次专项整治活动，滑县“两客一危”和普货运输企业安全管理方面能够做到“五到位、五落实”。汽车站能够严格执行“三不进站、六不出站”管理规定\";s:12:\"news_content\";s:298:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为全面贯彻落实省局方案，遏制安全事故的发生，县交通运输局积极开展道路运输安全生产专项整治行动。</span><br style=\"col\";}', '1511265747');
INSERT INTO `jt_web_log` VALUES ('496', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"26\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:96:\"济源市人大常委会主任李军星一行对交通基础设施建设项目进行实地查看\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"李军星\";s:11:\"news_source\";s:24:\"济源市交通运输局\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:175:\"济源市人大常委会主任李军星带领部分常委会组成人员，深入交通工程一线，对济源市2017年度交通基础设施建设项目进行实地察看。\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-si\";}', '1511265760');
INSERT INTO `jt_web_log` VALUES ('497', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"25\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:70:\"郑州市2017年农村公路交通情况比重调查工作圆满完成\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:18:\"农村公路交通\";s:11:\"news_source\";s:24:\"郑州市交通运输委\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:159:\"为认真做好全市范围内农村公路交通情况比重调查工作，全面了解新规划后郑州市农村公路中县、乡道上的交通流量情况\";s:12:\"news_content\";s:334:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为认真做好全市范围内农村公路交通情况比重调查工作，全面了解新规划后郑州市农村公路中县、乡道上的交通流量情况，郑州市地方公路管理处于201\";}', '1511265772');
INSERT INTO `jt_web_log` VALUES ('498', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"24\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:48:\"全国多式联运现场推进会在郑州召开\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:24:\"全国多式联运现场\";s:11:\"news_source\";s:12:\"厅办公室\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:246:\"天津港中蒙俄经济走廊多式联运示范工程等30个项目入选。河南省交通运输厅、湖北省交通运输厅、成都铁路局、青岛港集团、重庆港务物流集团、顺丰速运公司6家单位作了典型经验介绍\";s:12:\"news_content\";s:200:\"<p style=\"text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><spa\";}', '1511265786');
INSERT INTO `jt_web_log` VALUES ('499', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"23\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:81:\"三门峡市交通运输局被授予“助力脱贫攻坚先进基层党组织”\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:27:\"三门峡市交通运输局\";s:11:\"news_source\";s:27:\"三门峡市交通运输局\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:189:\"三门峡市交通运输局党委被中共三门峡市委组织部、中共三门峡市委市直工委、三门峡市扶贫开发办公室授予“助力脱贫攻坚先进基层党组织”\";s:12:\"news_content\";s:338:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">近日，三门峡市交通运输局党委被中共三门峡市委组织部、中共三门峡市委市直工委、三门峡市扶贫开发办公室授予“助力脱贫攻坚先进基层党组织”。<\";}', '1511265800');
INSERT INTO `jt_web_log` VALUES ('500', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"22\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:54:\"周口市加快推进阳新高速周口段项目建设\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"阳新高速\";s:11:\"news_source\";s:13:\" 河南交通\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:171:\"周口市政府召开会议，安排部署阳新高速周口段勘测定界、附着物清点和土地组卷报批等工作，周口市政府副市长路云出席会议。\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-si\";}', '1511265812');
INSERT INTO `jt_web_log` VALUES ('501', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:21:{s:4:\"n_id\";s:2:\"21\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:85:\"李小鹏部长来豫调研 部省合力久久为功为经济社会发展当好先行\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"李小鹏\";s:11:\"news_source\";s:12:\"河南交通\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:195:\"交通运输部部长李小鹏到河南省开封市兰考县和郑州市，就河南交通运输供给侧结构性改革、“四好农村路”以及自贸区建设等工作开展调研和座谈\";s:12:\"news_content\";s:200:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" font-size:=\"\" text-indent:=\"\" white-space:=\"\" background-color:=\"\"><span style=\"font-si\";}', '1511265828');
INSERT INTO `jt_web_log` VALUES ('502', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511265866');
INSERT INTO `jt_web_log` VALUES ('503', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511266135');
INSERT INTO `jt_web_log` VALUES ('504', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html?page=2', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1511266143');
INSERT INTO `jt_web_log` VALUES ('505', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1511266145');
INSERT INTO `jt_web_log` VALUES ('506', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1511266922');
INSERT INTO `jt_web_log` VALUES ('507', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"27\";s:13:\"news_columnid\";s:1:\"1\";s:10:\"news_title\";s:64:\"滑县交通运输局 安全生产专项整治行动圆满结束\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"c\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:21:\"滑县交通运输局\";s:11:\"news_source\";s:21:\"滑县交通运输局\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2017-11-15\";s:13:\"news_scontent\";s:210:\"通过此次专项整治活动，滑县“两客一危”和普货运输企业安全管理方面能够做到“五到位、五落实”。汽车站能够严格执行“三不进站、六不出站”管理规定\";s:12:\"news_content\";s:298:\"<p><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 30px; background-color: rgb(255, 255, 255);\">为全面贯彻落实省局方案，遏制安全事故的发生，县交通运输局积极开展道路运输安全生产专项整治行动。</span><br style=\"col\";}', '1511267013');
INSERT INTO `jt_web_log` VALUES ('508', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1511267018');
INSERT INTO `jt_web_log` VALUES ('509', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511267073');
INSERT INTO `jt_web_log` VALUES ('510', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511267111');
INSERT INTO `jt_web_log` VALUES ('511', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511267114');
INSERT INTO `jt_web_log` VALUES ('512', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511267116');
INSERT INTO `jt_web_log` VALUES ('513', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511267118');
INSERT INTO `jt_web_log` VALUES ('514', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511267147');
INSERT INTO `jt_web_log` VALUES ('515', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511267150');
INSERT INTO `jt_web_log` VALUES ('516', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511267152');
INSERT INTO `jt_web_log` VALUES ('517', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511267153');
INSERT INTO `jt_web_log` VALUES ('518', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511267155');
INSERT INTO `jt_web_log` VALUES ('519', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511267156');
INSERT INTO `jt_web_log` VALUES ('520', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511267159');
INSERT INTO `jt_web_log` VALUES ('521', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511273150');
INSERT INTO `jt_web_log` VALUES ('522', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511335614');
INSERT INTO `jt_web_log` VALUES ('523', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511335622');
INSERT INTO `jt_web_log` VALUES ('524', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511335632');
INSERT INTO `jt_web_log` VALUES ('525', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511335645');
INSERT INTO `jt_web_log` VALUES ('526', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"3\";}', '1511335651');
INSERT INTO `jt_web_log` VALUES ('527', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"6\";s:13:\"news_columnid\";s:1:\"5\";s:10:\"news_title\";s:42:\"培训中心举办消防安全专题讲座\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"消防安全\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm49rzs_5r8l655x9r40584ea66bb8fc1.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:195:\"7月27日上午，培训中心按照工作部署，举办一期消防安全专题讲座。培训中心班子对这次消防安全培训非常重视，安排全体职工参加并进行工作指导\";s:12:\"news_content\";s:548:\"<p>7月27日上午，培训中心按照工作部署，举办一期消防安全专题讲座。培训中心班子对这次消防安全培训非常重视，安排全体职工参加并进行工作指导</p><p>&nbsp;</p><p>专题培训活动中，市消防支队的同志细致讲解了当前的消防形势，对各种消防设施的维护、保养和使用情况，对如何在各种复杂状况下应对险情，并与职工们进行了面对面的互动交流。活动提升了职工应对险情的信心，增强了消防安全意识及应急避险\";}', '1511335849');
INSERT INTO `jt_web_log` VALUES ('528', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"3\";}', '1511335854');
INSERT INTO `jt_web_log` VALUES ('529', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"7\";s:13:\"news_columnid\";s:1:\"5\";s:10:\"news_title\";s:45:\"物业公司进行中秋节前安全大检查\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:20:\"YFCMF的二次开发\";s:11:\"news_source\";s:15:\"雨飞工作室\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm49ka0_3fshb6agdfac584ea6616e7f8.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:126:\"2016年9月12日至13日，物业公司对厅综合办公楼和西区交通大厦及家属区进行中秋节前安全大检查\";s:12:\"news_content\";s:350:\"<p><span style=\"color: rgb(128, 128, 128); font-family: 幼圆; text-indent: 32px; background-color: rgb(255, 255, 255);\">2016年9月12日至13日，物业公司对厅综合办公楼和西区交通大厦及家属区进行中秋节前安全大检查，物业公司组织消防、维修、保洁等部门负责人对厅消防、配电、电梯等设施\";}', '1511335972');
INSERT INTO `jt_web_log` VALUES ('530', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511335976');
INSERT INTO `jt_web_log` VALUES ('531', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"8\";s:13:\"news_columnid\";s:1:\"5\";s:10:\"news_title\";s:30:\"物业公司组织消防演练\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"消防演练\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm49ck8_5ilcpr11gs08584ea657b1448.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:127:\"为了确保我厅综合办公楼的安全，10月14日下午，物业公司在厅机关院内东北角进行了消防演练。\";s:12:\"news_content\";s:546:\"<p>为了确保我厅综合办公楼的安全，10月14日下午，物业公司在厅机关院内东北角进行了消防演练。物业公司及餐饮公司员工参加消防演练，对发生火灾后处置初期火情、报警、人员疏散、灭火器的使用操作等常识进行了全面了解，并模拟起火点进行喷射。在灭火过程中，由专职消防员对实际操作出现的问题进行指导，使演练人员熟练掌握扑灭初期火情。</p><p>&nbsp;</p><p>通过此次消防演练，不仅提高了人员的安全\";}', '1511336067');
INSERT INTO `jt_web_log` VALUES ('532', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336071');
INSERT INTO `jt_web_log` VALUES ('533', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:1:\"9\";s:13:\"news_columnid\";s:1:\"5\";s:10:\"news_title\";s:36:\"忠孚公司组织车辆冬季检查\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"冬季检查\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm491rc_3cfcm5icllyc584ea6496b7ea.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:183:\"冬季来临，天气寒冷。为保障车辆行驶安全，做好为厅属单位和机关服务中心的用车服务保障，郑州忠孚会议有限公司结合“车场日”活动\";s:12:\"news_content\";s:404:\"<p>冬季来临，天气寒冷。为保障车辆行驶安全，做好为厅属单位和机关服务中心的用车服务保障，郑州忠孚会议有限公司结合“车场日”活动。11月11日上午，在公司董事长李晖的带领下，组织全体司务人员对车辆的水、电、油、暖风等各项进行逐一检查，并做好详细登记，对发现的问题及时处理解决。</p>\";}', '1511336135');
INSERT INTO `jt_web_log` VALUES ('534', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336144');
INSERT INTO `jt_web_log` VALUES ('535', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"10\";s:13:\"news_columnid\";s:1:\"5\";s:10:\"news_title\";s:60:\"河南省社会治安综合治理领导责任制实施办法\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"p\";i:1;s:1:\"d\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"社会治安\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4bemw_4p1w4yzvxfcw584ea6b796e63.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:150:\"为深入推进社会治安综合治理，健全落实领导责任制，全面推进平安河南建设，确保人民安居乐业、社会安定有序\";s:12:\"news_content\";s:208:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\";}', '1511336242');
INSERT INTO `jt_web_log` VALUES ('536', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511336248');
INSERT INTO `jt_web_log` VALUES ('537', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511336252');
INSERT INTO `jt_web_log` VALUES ('538', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511336261');
INSERT INTO `jt_web_log` VALUES ('539', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336312');
INSERT INTO `jt_web_log` VALUES ('540', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"11\";s:13:\"news_columnid\";s:2:\"15\";s:10:\"news_title\";s:30:\"探讨企业经营理念设计\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"c\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"企业经营\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4b1io_1jse1fw13mpw584ea6a631cc4.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:243:\"品牌经营是企业经营战略的王道。品牌是一个企业成功进行生产经营的重要标志，产品可模仿、管理可复制，惟有品牌文化不可复制，而无法复制的系统才能真正为企业创造竞争优势。\";s:12:\"news_content\";s:566:\"<p>一、企业的经营是品牌的经营</p><p>品牌经营是企业经营战略的王道。品牌是一个企业成功进行生产经营的重要标志，产品可模仿、管理可复制，惟有品牌文化不可复制，而无法复制的系统才能真正为企业创造竞争优势。</p><p>品牌经营是一种核心的信念，贯穿于整个企业之中，是形成企业文化的核心，是构成企业核心竞争力的一个基本要素。品牌的竞争力包含企业在资源、能力、技术、管理、营销、人力资源等方面的综合优\";}', '1511336412');
INSERT INTO `jt_web_log` VALUES ('541', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336416');
INSERT INTO `jt_web_log` VALUES ('542', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"12\";s:13:\"news_columnid\";s:2:\"15\";s:10:\"news_title\";s:24:\"对服务管理的探讨\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:2:{i:0;s:1:\"a\";i:1;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"服务管理\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4anmo_6v5ro7hhqykg584ea694dc9e9.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-06\";s:13:\"news_scontent\";s:177:\"服务管理是伴随着服务而产生的，是目前管理界一个新的重要的研究领域。因服务具有无须性、同时并发性、异质性与易逝性等特性。\";s:12:\"news_content\";s:208:\"<p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;text-indent: 32px;color: rgb(102, 102, 102);font-family: 幼圆, 仿宋;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\";paddin\";}', '1511336536');
INSERT INTO `jt_web_log` VALUES ('543', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336541');
INSERT INTO `jt_web_log` VALUES ('544', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"13\";s:13:\"news_columnid\";s:2:\"15\";s:10:\"news_title\";s:46:\"浅谈企业管理者管理创新的7个层次\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"企业管理\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4lbw0_35jxhdo6c1k4584ea886655c2.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4lbw0_3o5ivzzn33s4584ea8867634e.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:192:\"这是一个自主创新的时代，也是一个跟风模仿的时代。这是一个微创新的时代，也是一个巨创新的时代。创新好像活力四射，创新似乎杂乱无章。\";s:12:\"news_content\";s:570:\"<p>这是一个自主创新的时代，也是一个跟风模仿的时代。这是一个微创新的时代，也是一个巨创新的时代。创新好像活力四射，创新似乎杂乱无章。中国管理到底有没有创新?</p><p>《经理人》总结最近一年来中国企业管理，包括商业模式、领导力、战略、组织、资本运作、营销、公司治理、全球化等8个领域的创新实践。我们发现，中国企业的管理创新，或先后，或同时历经7个不同的层次：扎根中国传统文化(儒道法墨)的土壤，中\";}', '1511336649');
INSERT INTO `jt_web_log` VALUES ('545', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336655');
INSERT INTO `jt_web_log` VALUES ('546', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"14\";s:13:\"news_columnid\";s:2:\"15\";s:10:\"news_title\";s:33:\"一些知名企业的经营理念\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"企业经营\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:76:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4kyrs_tflmiecr5hw584ea8751a45d.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4kyrs_190vi332wps0584ea87528308.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:228:\"企业管理是一门艺术。普通都包括人本管理，质量管理，财务管理和战略管理等四个方面。古代企业管理是以人为重心的管理，所有管理的好坏都是人所缔造、影响与确定的\";s:12:\"news_content\";s:594:\"<p>企业管理是一门艺术。普通都包括人本管理，质量管理，财务管理和战略管理等四个方面。古代企业管理是以人为重心的管理，所有管理的好坏都是人所缔造、影响与确定的。世界上任何一家成功企业都把质量当成企业的生命线的。一个企业财务管理程度的上下确定了该企业的全体管理程度。运营战略是企业生活的基本，它是站在战略的高度以迷信的程序和方法来制定企业的久远开展大计。上面罗列少许企业来看看他们的运营管理理念是怎样的\";}', '1511336737');
INSERT INTO `jt_web_log` VALUES ('547', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336741');
INSERT INTO `jt_web_log` VALUES ('548', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"15\";s:13:\"news_columnid\";s:2:\"15\";s:10:\"news_title\";s:30:\"企业经营管理注意事项\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"企业经营\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4kkvs_1szlprr9ofa8584ea8633a02a.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4kkvs_2b1htrd6pw2s584ea8634a1fd.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:240:\"大多企业，在初具规模时，想到的都是如何进行企业经营管理并快速发展，如何快速壮大。企业实现国际化、企业实现现代化、企业实现信息化、企业实现多元化、企业上市等等陈词\";s:12:\"news_content\";s:566:\"<p>大多企业，在初具规模时，想到的都是如何进行企业经营管理并快速发展，如何快速壮大。企业实现国际化、企业实现现代化、企业实现信息化、企业实现多元化、企业上市等等陈词，已成为他们的发展目标或手段。企业发展有远大的理想与目标，固然可喜可贺，然，一着不慎，全盘皆输。那么企业在经营管理中要注意哪些事项事项呢？</p><p>一、防止在企业经营管理战略上出现失误。</p><p>每个企业在发展过程中，或多或少\";}', '1511336817');
INSERT INTO `jt_web_log` VALUES ('549', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511336823');
INSERT INTO `jt_web_log` VALUES ('550', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511336828');
INSERT INTO `jt_web_log` VALUES ('551', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511336840');
INSERT INTO `jt_web_log` VALUES ('552', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"16\";s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:72:\"上饶市信州区福海老年公寓荣获“全国文明单位”称号\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:12:\"老年公寓\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4k4og_4fk4toirr2io584ea84e8e6ce.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4k4og_4ziykz4obusk584ea84ea03fa.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"33\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:208:\"按照从严把关、确保质量的原则，经过严格评审，在11月17日的全国精神文明建设表彰大会上，中央文明委授予一批精神文明和思想道德建设先进典型荣誉称号\";s:12:\"news_content\";s:212:\"<p style=\"margin-top: 0px;margin-bottom: 0px;margin-left: 0;padding: 0px;line-height: 26px;font-size: 14px;color: rgb(51, 51, 51);font-family: &#39;Microsoft YaHei&#39;, 微软雅黑, Arial, 宋体, Verdana, Helv\";}', '1511337024');
INSERT INTO `jt_web_log` VALUES ('553', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_list.html', 'admin', 'News', 'news_list', 'Ajax', 'a:7:{s:7:\"keytype\";s:10:\"news_title\";s:13:\"news_columnid\";s:0:\"\";s:7:\"diyflag\";s:0:\"\";s:14:\"opentype_check\";s:0:\"\";s:11:\"reservation\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1511337029');
INSERT INTO `jt_web_log` VALUES ('554', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"17\";s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:49:\"天津东方养生堂 | 趣味生活 乐享人生\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"养生堂\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4jle0_65nwndh36og8584ea835c5dc7.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4jle0_6pcvxqfazx0c584ea835d770b.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"11\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:268:\"为展现天津东方养生堂 “优享生活、颐养东方”享老俱乐部形式的专业化服务，为丰富老年人的精神文化生活，展现老年风采，天津东方养生堂开展了一系列趣味性活动，跟着小编的脚步一起来看看吧！\";s:12:\"news_content\";s:498:\"<p>为展现天津东方养生堂 “优享生活、颐养东方”享老俱乐部形式的专业化服务，为丰富老年人的精神文化生活，展现老年风采，天津东方养生堂开展了一系列趣味性活动，跟着小编的脚步一起来看看吧！</p><p><br/></p><p>01</p><p>书法班</p><p><br/></p><p>不少医学家认为，书法与气功有着密切的内在联系，书法也能起到促进身心健康，使人精力充沛，益寿延年的作用。书法好似大都\";}', '1511337150');
INSERT INTO `jt_web_log` VALUES ('555', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"18\";s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:48:\"北京民政局领导一行赴燕达考察调研\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:9:\"民政局\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4j7i0_375vw8qqbg2s584ea82366cc0.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:78:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4j7i0_3the3kt5h44k584ea8237ab84.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:159:\"北京市民政局副局长李红兵率队赴燕达国际健康城实地调研，燕达国际健康城董事长李怀、燕达国际健康城副总裁李海燕\";s:12:\"news_content\";s:564:\"<p>2017年11月14日，北京市民政局副局长李红兵率队赴燕达国际健康城实地调研，燕达国际健康城董事长李怀、燕达国际健康城副总裁李海燕、燕达金色年华健康养护中心总经理周素娟及常务副总经理崔凯等陪同调研。</p><p>参观过程中，李怀董事长向李副局长介绍了燕达国际健康城的设施规划建设及运营情况，并针对燕达模式“医养结合”进行详细阐述，重点展示了养护中心二期项目的在建进度。李怀董事长还透露，正在建设\";}', '1511337300');
INSERT INTO `jt_web_log` VALUES ('556', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/news/news_runedit.html', 'admin', 'News', 'news_runedit', 'Ajax', 'a:20:{s:4:\"n_id\";s:2:\"19\";s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:48:\"世间万物，唯有爱与美食不可辜负！\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:1:{i:0;s:1:\"p\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:1:\"0\";s:8:\"news_key\";s:6:\"美食\";s:11:\"news_source\";s:18:\"机关服务中心\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4irao_72rj0hcxk8co584ea80ee3684.jpg\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:11:\"pic_oldlist\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4is2g_48842mspe6o584ea80f03c64.jpg,\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"45\";s:8:\"showdate\";s:10:\"2016-05-07\";s:13:\"news_scontent\";s:140:\"食物，唯有真心与用心烹制，才有齿间留香的余味， 冬天已经悄悄来临，一起来看看我们老人的日常饮食.\";s:12:\"news_content\";s:480:\"<p>食物，唯有真心与用心烹制，才有齿间留香的余味，</p><p>冬天已经悄悄来临，一起来看看我们老人的日常饮食.</p><p><br/></p><p>（红枣鸡蛋羹）有营养胃肠,保护胃肠的功效,还可以开胃口 治胃疼呢!</p><p>早、中、晚餐，我们的食谱每天都是不一样的，尽量满足老人身体的营养需求，合理膳食，健康搭配。</p><p><br/></p><p>（葱花饼）它并不惊艳，它朴实无常，确有着\";}', '1511337372');
INSERT INTO `jt_web_log` VALUES ('557', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511337385');
INSERT INTO `jt_web_log` VALUES ('558', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511337393');
INSERT INTO `jt_web_log` VALUES ('559', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511337401');
INSERT INTO `jt_web_log` VALUES ('560', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511337422');
INSERT INTO `jt_web_log` VALUES ('561', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511337427');
INSERT INTO `jt_web_log` VALUES ('562', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511337428');
INSERT INTO `jt_web_log` VALUES ('563', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511337457');
INSERT INTO `jt_web_log` VALUES ('564', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511337461');
INSERT INTO `jt_web_log` VALUES ('565', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511337469');
INSERT INTO `jt_web_log` VALUES ('566', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/14.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"14\";}', '1511337472');
INSERT INTO `jt_web_log` VALUES ('567', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511337483');
INSERT INTO `jt_web_log` VALUES ('568', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511340144');
INSERT INTO `jt_web_log` VALUES ('569', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_list.html', 'admin', 'Sys', 'admin_rule_list', 'Ajax', 'a:3:{s:3:\"pid\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:2:\"id\";s:5:\"pid-1\";}', '1511340418');
INSERT INTO `jt_web_log` VALUES ('570', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:1:\"3\";}', '1511340424');
INSERT INTO `jt_web_log` VALUES ('571', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"40\";}', '1511340426');
INSERT INTO `jt_web_log` VALUES ('572', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_list/pid/2.html', 'admin', 'Sys', 'admin_rule_list', 'Ajax', 'a:3:{s:3:\"pid\";s:1:\"2\";s:5:\"level\";s:1:\"2\";s:2:\"id\";s:7:\"pid-1-2\";}', '1511340428');
INSERT INTO `jt_web_log` VALUES ('573', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"228\";}', '1511340436');
INSERT INTO `jt_web_log` VALUES ('574', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"210\";}', '1511340437');
INSERT INTO `jt_web_log` VALUES ('575', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"190\";}', '1511340437');
INSERT INTO `jt_web_log` VALUES ('576', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"19\";}', '1511340438');
INSERT INTO `jt_web_log` VALUES ('577', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"57\";}', '1511340439');
INSERT INTO `jt_web_log` VALUES ('578', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"281\";}', '1511340439');
INSERT INTO `jt_web_log` VALUES ('579', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"26\";}', '1511340440');
INSERT INTO `jt_web_log` VALUES ('580', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"10\";}', '1511340441');
INSERT INTO `jt_web_log` VALUES ('581', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"184\";}', '1511340442');
INSERT INTO `jt_web_log` VALUES ('582', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"202\";}', '1511340443');
INSERT INTO `jt_web_log` VALUES ('583', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/admin/avatar.html', 'admin', 'Admin', 'avatar', 'Ajax', 'a:1:{s:6:\"imgurl\";s:17:\"5a1539da22980.jpg\";}', '1511340506');
INSERT INTO `jt_web_log` VALUES ('584', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511340517');
INSERT INTO `jt_web_log` VALUES ('585', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_list.html', 'admin', 'Sys', 'admin_rule_list', 'Ajax', 'a:3:{s:3:\"pid\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:2:\"id\";s:5:\"pid-1\";}', '1511340664');
INSERT INTO `jt_web_log` VALUES ('586', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_list/pid/2.html', 'admin', 'Sys', 'admin_rule_list', 'Ajax', 'a:3:{s:3:\"pid\";s:1:\"2\";s:5:\"level\";s:1:\"2\";s:2:\"id\";s:7:\"pid-1-2\";}', '1511340667');
INSERT INTO `jt_web_log` VALUES ('587', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"27\";}', '1511340680');
INSERT INTO `jt_web_log` VALUES ('588', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"206\";}', '1511340827');
INSERT INTO `jt_web_log` VALUES ('589', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"185\";}', '1511340843');
INSERT INTO `jt_web_log` VALUES ('590', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"48\";}', '1511340845');
INSERT INTO `jt_web_log` VALUES ('591', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"276\";}', '1511340846');
INSERT INTO `jt_web_log` VALUES ('592', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"325\";}', '1511340848');
INSERT INTO `jt_web_log` VALUES ('593', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"35\";}', '1511340849');
INSERT INTO `jt_web_log` VALUES ('594', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"35\";}', '1511340850');
INSERT INTO `jt_web_log` VALUES ('595', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_list.html', 'admin', 'Sys', 'admin_rule_list', 'Ajax', 'a:3:{s:3:\"pid\";s:2:\"28\";s:5:\"level\";s:1:\"1\";s:2:\"id\";s:6:\"pid-28\";}', '1511340853');
INSERT INTO `jt_web_log` VALUES ('596', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"43\";}', '1511340856');
INSERT INTO `jt_web_log` VALUES ('597', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"212\";}', '1511340861');
INSERT INTO `jt_web_log` VALUES ('598', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"181\";}', '1511340864');
INSERT INTO `jt_web_log` VALUES ('599', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"266\";}', '1511340865');
INSERT INTO `jt_web_log` VALUES ('600', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:3:\"312\";}', '1511340867');
INSERT INTO `jt_web_log` VALUES ('601', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"22\";}', '1511340870');
INSERT INTO `jt_web_log` VALUES ('602', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"35\";}', '1511340878');
INSERT INTO `jt_web_log` VALUES ('603', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/admin_rule_state.html', 'admin', 'Sys', 'admin_rule_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"18\";}', '1511343594');
INSERT INTO `jt_web_log` VALUES ('604', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511352966');
INSERT INTO `jt_web_log` VALUES ('605', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511353113');
INSERT INTO `jt_web_log` VALUES ('606', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:6:{s:7:\"options\";a:5:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:14:\"site_seo_title\";s:23:\"YFCMF内容管理框架\";s:17:\"site_seo_keywords\";s:52:\"YFCMF,php,内容管理框架,cmf,cms,雨飞工作室\";s:20:\"site_seo_description\";s:77:\"YFCMF是雨飞工作室发布的一款用于快速开发的内容管理框架\";}s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\";s:11:\"oldcheckpic\";s:5:\"nopic\";s:15:\"oldcheckpicname\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iw7sxvxs_6n9tgd6cbu4o58417156d5943.png\";s:9:\"maxlength\";s:3:\"100\";s:12:\"maxlengthone\";s:3:\"200\";}', '1511353400');
INSERT INTO `jt_web_log` VALUES ('607', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511353548');
INSERT INTO `jt_web_log` VALUES ('608', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:5:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:14:\"site_seo_title\";s:23:\"YFCMF内容管理框架\";s:17:\"site_seo_keywords\";s:52:\"YFCMF,php,内容管理框架,cmf,cms,雨飞工作室\";s:20:\"site_seo_description\";s:77:\"YFCMF是雨飞工作室发布的一款用于快速开发的内容管理框架\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:9:\"maxlength\";s:3:\"100\";s:12:\"maxlengthone\";s:3:\"200\";}', '1511353558');
INSERT INTO `jt_web_log` VALUES ('609', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:5:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:14:\"site_seo_title\";s:23:\"YFCMF内容管理框架\";s:17:\"site_seo_keywords\";s:52:\"YFCMF,php,内容管理框架,cmf,cms,雨飞工作室\";s:20:\"site_seo_description\";s:77:\"YFCMF是雨飞工作室发布的一款用于快速开发的内容管理框架\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:9:\"maxlength\";s:3:\"100\";s:12:\"maxlengthone\";s:3:\"200\";}', '1511355064');
INSERT INTO `jt_web_log` VALUES ('610', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:5:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:9:\"maxlength\";s:3:\"100\";s:12:\"maxlengthone\";s:3:\"200\";}', '1511355086');
INSERT INTO `jt_web_log` VALUES ('611', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511356512');
INSERT INTO `jt_web_log` VALUES ('612', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:17:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:0:\"\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:12:\"site_co_name\";s:0:\"\";s:12:\"site_address\";s:0:\"\";s:7:\"map_lat\";s:0:\"\";s:7:\"map_lng\";s:0:\"\";s:8:\"site_tel\";s:0:\"\";s:16:\"site_admin_email\";s:0:\"\";s:7:\"site_qq\";s:0:\"\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1511356656');
INSERT INTO `jt_web_log` VALUES ('613', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/clear.html', 'admin', 'Sys', 'clear', 'Ajax', 'a:0:{}', '1511356663');
INSERT INTO `jt_web_log` VALUES ('614', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511356668');
INSERT INTO `jt_web_log` VALUES ('615', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1511356794');
INSERT INTO `jt_web_log` VALUES ('616', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1511356825');
INSERT INTO `jt_web_log` VALUES ('617', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511356830');
INSERT INTO `jt_web_log` VALUES ('618', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:42:\"河南省交通运输厅机关服务中心\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:65:\"河南省交通运输厅机关服务中心 版权所有 2017-2018\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1511356973');
INSERT INTO `jt_web_log` VALUES ('619', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511356997');
INSERT INTO `jt_web_log` VALUES ('620', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511357001');
INSERT INTO `jt_web_log` VALUES ('621', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511357421');
INSERT INTO `jt_web_log` VALUES ('622', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511357577');
INSERT INTO `jt_web_log` VALUES ('623', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511357724');
INSERT INTO `jt_web_log` VALUES ('624', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"1\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"新闻中心\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"10\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:11:\"oldcheckpic\";s:77:\"http://ohjmksy46.bkt.clouddn.com/images/iwm4864g_3hbi3a1uhkw0584ea6206fdcc.jpg\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:430:\"<p style=\"white-space: normal;\">&nbsp; 团队成立与于2014年,是一个专注于高端品牌网站建设的设计工作室。</p><p style=\"white-space: normal;\">团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建OA网络办公信息平台，定制网站与数据库开发，并提供WAP网站建设、微网站、微商城、微信裂变式分\";s:14:\"menu_seo_title\";s:12:\"新闻中心\";s:12:\"menu_seo_key\";s:12:\"新闻中心\";s:12:\"menu_seo_des\";s:12:\"新闻中心\";}', '1511358009');
INSERT INTO `jt_web_log` VALUES ('625', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"2\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"党建园地\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"20\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"党建园地\";s:12:\"menu_seo_key\";s:12:\"党建园地\";s:12:\"menu_seo_des\";s:12:\"党建园地\";}', '1511358042');
INSERT INTO `jt_web_log` VALUES ('626', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"5\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"平安建设\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"30\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"平安建设\";s:12:\"menu_seo_key\";s:12:\"平安建设\";s:12:\"menu_seo_des\";s:12:\"平安建设\";}', '1511358052');
INSERT INTO `jt_web_log` VALUES ('627', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"15\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"服务经营\";s:11:\"menu_enname\";s:3:\"FAQ\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"30\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"服务经营\";s:12:\"menu_seo_key\";s:12:\"服务经营\";s:12:\"menu_seo_des\";s:12:\"服务经营\";}', '1511358063');
INSERT INTO `jt_web_log` VALUES ('628', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"3\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"养老项目\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"45\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"养老项目\";s:12:\"menu_seo_key\";s:12:\"养老项目\";s:12:\"menu_seo_des\";s:12:\"养老项目\";}', '1511358073');
INSERT INTO `jt_web_log` VALUES ('629', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"6\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"观点前沿\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"观点前沿\";s:12:\"menu_seo_key\";s:12:\"观点前沿\";s:12:\"menu_seo_des\";s:12:\"观点前沿\";}', '1511358082');
INSERT INTO `jt_web_log` VALUES ('630', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:2:\"16\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"中心简介\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:5:\"about\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:232:\"<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 32px; color: rgb(102, 102, 102); font-family: 幼圆, 仿宋; white-space: normal; background-color: rgb(255, 255, 255);\">◆根据机关后勤服务工作规\";s:14:\"menu_seo_title\";s:12:\"中心简介\";s:12:\"menu_seo_key\";s:12:\"中心简介\";s:12:\"menu_seo_des\";s:12:\"中心简介\";}', '1511358092');
INSERT INTO `jt_web_log` VALUES ('631', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:18:{s:2:\"id\";s:2:\"17\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"精神文明\";s:11:\"menu_enname\";s:0:\"\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"精神文明\";s:12:\"menu_seo_key\";s:12:\"精神文明\";s:12:\"menu_seo_des\";s:12:\"精神文明\";}', '1511358101');
INSERT INTO `jt_web_log` VALUES ('632', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:19:{s:2:\"id\";s:1:\"4\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"联系我们\";s:11:\"menu_enname\";s:0:\"\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"55\";s:9:\"menu_type\";s:1:\"4\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:7:\"contact\";s:12:\"menu_newstpl\";s:0:\"\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:200:\"<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px;\"><strong><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); backgroun\";s:14:\"menu_seo_title\";s:12:\"联系我们\";s:12:\"menu_seo_key\";s:12:\"联系我们\";s:12:\"menu_seo_des\";s:12:\"联系我们\";}', '1511358111');
INSERT INTO `jt_web_log` VALUES ('633', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511358116');
INSERT INTO `jt_web_log` VALUES ('634', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511358118');
INSERT INTO `jt_web_log` VALUES ('635', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358121');
INSERT INTO `jt_web_log` VALUES ('636', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358215');
INSERT INTO `jt_web_log` VALUES ('637', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358219');
INSERT INTO `jt_web_log` VALUES ('638', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511358225');
INSERT INTO `jt_web_log` VALUES ('639', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1511358228');
INSERT INTO `jt_web_log` VALUES ('640', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511358230');
INSERT INTO `jt_web_log` VALUES ('641', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511358233');
INSERT INTO `jt_web_log` VALUES ('642', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358233');
INSERT INTO `jt_web_log` VALUES ('643', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1511358234');
INSERT INTO `jt_web_log` VALUES ('644', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358236');
INSERT INTO `jt_web_log` VALUES ('645', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358239');
INSERT INTO `jt_web_log` VALUES ('646', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358241');
INSERT INTO `jt_web_log` VALUES ('647', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358425');
INSERT INTO `jt_web_log` VALUES ('648', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358434');
INSERT INTO `jt_web_log` VALUES ('649', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358437');
INSERT INTO `jt_web_log` VALUES ('650', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358455');
INSERT INTO `jt_web_log` VALUES ('651', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1511358458');
INSERT INTO `jt_web_log` VALUES ('652', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358461');
INSERT INTO `jt_web_log` VALUES ('653', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358465');
INSERT INTO `jt_web_log` VALUES ('654', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358466');
INSERT INTO `jt_web_log` VALUES ('655', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358468');
INSERT INTO `jt_web_log` VALUES ('656', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1511358471');
INSERT INTO `jt_web_log` VALUES ('657', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358473');
INSERT INTO `jt_web_log` VALUES ('658', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358476');
INSERT INTO `jt_web_log` VALUES ('659', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1511358520');
INSERT INTO `jt_web_log` VALUES ('660', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1511358522');
INSERT INTO `jt_web_log` VALUES ('661', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1511358527');
INSERT INTO `jt_web_log` VALUES ('662', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1511358530');
INSERT INTO `jt_web_log` VALUES ('663', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1511358761');
INSERT INTO `jt_web_log` VALUES ('664', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358792');
INSERT INTO `jt_web_log` VALUES ('665', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358795');
INSERT INTO `jt_web_log` VALUES ('666', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1511358831');
INSERT INTO `jt_web_log` VALUES ('667', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511421516');
INSERT INTO `jt_web_log` VALUES ('668', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511421540');
INSERT INTO `jt_web_log` VALUES ('669', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1511421804');
INSERT INTO `jt_web_log` VALUES ('670', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511421808');
INSERT INTO `jt_web_log` VALUES ('671', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/listn/search.html?keyword=%E9%83%91%E5%B7%9E', 'home', 'Listn', 'search', 'Ajax', 'a:1:{s:7:\"keyword\";s:6:\"郑州\";}', '1511421817');
INSERT INTO `jt_web_log` VALUES ('672', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511421828');
INSERT INTO `jt_web_log` VALUES ('673', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511421947');
INSERT INTO `jt_web_log` VALUES ('674', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511422094');
INSERT INTO `jt_web_log` VALUES ('675', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1511422755');
INSERT INTO `jt_web_log` VALUES ('676', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1512656836');
INSERT INTO `jt_web_log` VALUES ('677', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1512656837');
INSERT INTO `jt_web_log` VALUES ('678', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1513153345');
INSERT INTO `jt_web_log` VALUES ('679', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1513154028');
INSERT INTO `jt_web_log` VALUES ('680', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1513154033');
INSERT INTO `jt_web_log` VALUES ('681', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1513154044');
INSERT INTO `jt_web_log` VALUES ('682', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1513154105');
INSERT INTO `jt_web_log` VALUES ('683', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_link_runadd.html', 'admin', 'Plug', 'plug_link_runadd', 'Ajax', 'a:7:{s:16:\"plug_link_typeid\";s:1:\"2\";s:14:\"plug_link_name\";s:6:\"专题\";s:13:\"plug_link_url\";s:38:\"http://www.yunma.gl/zhuanti/index.html\";s:16:\"plug_link_target\";s:6:\"_blank\";s:14:\"plug_link_open\";s:1:\"1\";s:12:\"plug_link_qq\";s:0:\"\";s:15:\"plug_link_order\";s:2:\"50\";}', '1513154455');
INSERT INTO `jt_web_log` VALUES ('684', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1513154462');
INSERT INTO `jt_web_log` VALUES ('685', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1513222011');
INSERT INTO `jt_web_log` VALUES ('686', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1513222095');
INSERT INTO `jt_web_log` VALUES ('687', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(62.0.3202.75)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"1\";s:12:\"plug_ad_name\";s:7:\"wwwwwww\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:42:\"http://www.tp.gl/home/news/index/id/5.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:0:\"\";}', '1513222122');
INSERT INTO `jt_web_log` VALUES ('688', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1522415302');
INSERT INTO `jt_web_log` VALUES ('689', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1522415317');
INSERT INTO `jt_web_log` VALUES ('690', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1522420265');
INSERT INTO `jt_web_log` VALUES ('691', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/plug/plug_adtype_runadd.html', 'admin', 'Plug', 'plug_adtype_runadd', 'Ajax', 'a:2:{s:16:\"plug_adtype_name\";s:21:\"首页推荐新闻图\";s:17:\"plug_adtype_order\";s:2:\"50\";}', '1522420339');
INSERT INTO `jt_web_log` VALUES ('692', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/plug/plug_ad_runadd.html', 'admin', 'Plug', 'plug_ad_runadd', 'Ajax', 'a:8:{s:16:\"plug_ad_adtypeid\";s:1:\"6\";s:12:\"plug_ad_name\";s:18:\"中国梦中国造\";s:15:\"plug_ad_checkid\";s:1:\"1\";s:10:\"plug_ad_js\";s:0:\"\";s:11:\"plug_ad_url\";s:46:\"http://zf.nynds.com/home/news/index/id/10.html\";s:12:\"plug_ad_open\";s:1:\"1\";s:13:\"plug_ad_order\";s:2:\"50\";s:15:\"plug_ad_content\";s:18:\"中国梦中国造\";}', '1522420515');
INSERT INTO `jt_web_log` VALUES ('693', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/plug/plug_ad_list.html', 'admin', 'Plug', 'plug_ad_list', 'Ajax', 'a:2:{s:3:\"key\";s:0:\"\";s:4:\"page\";s:1:\"2\";}', '1522420524');
INSERT INTO `jt_web_log` VALUES ('694', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1522420768');
INSERT INTO `jt_web_log` VALUES ('695', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/menu/news_menu_runadd.html', 'admin', 'Menu', 'news_menu_runadd', 'Ajax', 'a:16:{s:9:\"lang_list\";s:0:\"\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"通知公告\";s:11:\"menu_enname\";s:6:\"notice\";s:9:\"menu_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"1\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"通知公告\";s:12:\"menu_seo_key\";s:12:\"通知公告\";s:12:\"menu_seo_des\";s:12:\"通知公告\";}', '1522420915');
INSERT INTO `jt_web_log` VALUES ('696', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/menu/news_menu_state.html', 'admin', 'Menu', 'news_menu_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"18\";}', '1522420942');
INSERT INTO `jt_web_log` VALUES ('697', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/menu/news_menu_state.html', 'admin', 'Menu', 'news_menu_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"18\";}', '1522421081');
INSERT INTO `jt_web_log` VALUES ('698', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/menu/news_menu_state.html', 'admin', 'Menu', 'news_menu_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"18\";}', '1522421083');
INSERT INTO `jt_web_log` VALUES ('699', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/menu/news_menu_runedit.html', 'admin', 'Menu', 'news_menu_runedit', 'Ajax', 'a:18:{s:2:\"id\";s:2:\"18\";s:9:\"lang_list\";s:5:\"zh-cn\";s:8:\"parentid\";s:0:\"\";s:9:\"menu_name\";s:12:\"通知公告\";s:11:\"menu_enname\";s:6:\"notice\";s:9:\"listorder\";s:2:\"50\";s:9:\"menu_type\";s:1:\"3\";s:12:\"menu_address\";s:0:\"\";s:12:\"menu_modelid\";s:1:\"0\";s:12:\"menu_listtpl\";s:4:\"list\";s:12:\"menu_newstpl\";s:4:\"news\";s:8:\"checkpic\";s:0:\"\";s:11:\"oldcheckpic\";s:0:\"\";s:5:\"file0\";s:0:\"\";s:12:\"menu_content\";s:0:\"\";s:14:\"menu_seo_title\";s:12:\"通知公告\";s:12:\"menu_seo_key\";s:12:\"通知公告\";s:12:\"menu_seo_des\";s:12:\"通知公告\";}', '1522421104');
INSERT INTO `jt_web_log` VALUES ('700', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:16:{s:13:\"news_columnid\";s:2:\"18\";s:10:\"news_title\";s:61:\"河南体育界聚议体育产业发展 邓亚萍登台开讲\";s:15:\"news_titleshort\";s:0:\"\";s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:0:\"\";s:11:\"news_source\";s:12:\"服务中心\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2018-03-30\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:360:\"<p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">邓亚萍最近忙啥呢？忙着投资体育产业呢！3月29日，久违的河南乒乓球名将邓亚萍现身全省体育产业发展会议，作为邓亚萍体育产业投资基金的创始人，介绍基金的运作情况。</p><p style=\"font-family: 宋体; whi\";}', '1522421195');
INSERT INTO `jt_web_log` VALUES ('701', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:16:{s:13:\"news_columnid\";s:2:\"18\";s:10:\"news_title\";s:66:\"河南省发布办税“最多跑一次”清单 4月1日起施行\";s:15:\"news_titleshort\";s:0:\"\";s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:0:\"\";s:11:\"news_source\";s:12:\"服务中心\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2018-03-30\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:460:\"<p><span style=\"font-family: 宋体; background-color: rgb(255, 255, 255);\">记者了解到，宣传月期间，河南省税务系统将紧紧围绕“优化税收营商环境，助力经济高质量发展”的主题，开展一系列宣传活动，具体包括举行河南省税务系统新闻通报会，介绍“便民办税春风行动”及办税事项“最多跑一次”清单有关情况；开展“国税地税征管体制改革”宣传活动，宣\";}', '1522421223');
INSERT INTO `jt_web_log` VALUES ('702', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:16:{s:13:\"news_columnid\";s:2:\"18\";s:10:\"news_title\";s:61:\"农村教师住宿条件 河南48县市建8442套周转宿舍\";s:15:\"news_titleshort\";s:0:\"\";s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:0:\"\";s:11:\"news_source\";s:12:\"服务中心\";s:7:\"pic_one\";a:1:{i:0;s:0:\"\";}s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"news_open\";s:1:\"1\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2018-03-30\";s:13:\"news_scontent\";s:0:\"\";s:12:\"news_content\";s:418:\"<p style=\"font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">为改善农村教师住宿条件，建好教师周转宿舍，省教育厅、省财政厅近日联合下发《关于做好2018年河南省农村中小学教师周转宿舍建设工程有关工作的通知》(以下简称《通知》)，明确农村教师周转宿舍建设任务，要求加快项目建设进度。根据规划\";}', '1522421250');
INSERT INTO `jt_web_log` VALUES ('703', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:65:\"河南省交通运输厅机关服务中心 版权所有 2017-2018\";s:14:\"site_seo_title\";s:42:\"河南省交通运输厅机关服务中心\";s:17:\"site_seo_keywords\";s:42:\"河南省交通运输厅机关服务中心\";s:20:\"site_seo_description\";s:48:\"河南省交通运输厅机关服务中心网站\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1522466798');
INSERT INTO `jt_web_log` VALUES ('704', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:65:\"河南省交通运输厅机关服务中心 版权所有 2017-2018\";s:14:\"site_seo_title\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";s:17:\"site_seo_keywords\";s:70:\"php自适应大气政府单位网站,红色十九大政府网站模板\";s:20:\"site_seo_description\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1522466811');
INSERT INTO `jt_web_log` VALUES ('705', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(63.0.3239.132)', '/admin/sys/runsys.html', 'admin', 'Sys', 'runsys', 'Ajax', 'a:7:{s:7:\"options\";a:10:{s:9:\"site_name\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";s:9:\"site_host\";s:17:\"http://www.tp.gl/\";s:8:\"site_tpl\";s:5:\"hnjtt\";s:10:\"site_tpl_m\";s:5:\"hnjtt\";s:8:\"site_icp\";s:20:\"豫ICP备14000861号\";s:11:\"site_tongji\";s:0:\"\";s:14:\"site_copyright\";s:59:\"php自适应大气政府单位网站 版权所有 2017-2018\";s:14:\"site_seo_title\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";s:17:\"site_seo_keywords\";s:70:\"php自适应大气政府单位网站,红色十九大政府网站模板\";s:20:\"site_seo_description\";s:70:\"php自适应大气政府单位网站 红色十九大政府网站模板\";}s:8:\"checkpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:11:\"oldcheckpic\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:15:\"oldcheckpicname\";s:41:\"/data/upload/2017-11-22/5a156c38efe41.png\";s:5:\"file0\";s:0:\"\";s:12:\"maxlengthone\";s:3:\"200\";s:9:\"maxlength\";s:3:\"100\";}', '1522466829');
INSERT INTO `jt_web_log` VALUES ('706', '0', '115.60.165.104', '中国 河南 郑州 ', 'Windows 95', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522482325');
INSERT INTO `jt_web_log` VALUES ('707', '0', '115.60.165.104', '中国 河南 郑州 ', 'Windows 95', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522482401');
INSERT INTO `jt_web_log` VALUES ('708', '0', '115.60.165.104', '中国 河南 郑州 ', 'Windows 95', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522482411');
INSERT INTO `jt_web_log` VALUES ('709', '0', '115.60.165.104', '中国 河南 郑州 ', 'Mac', 'Safari(601.1)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522484472');
INSERT INTO `jt_web_log` VALUES ('710', '0', '115.60.165.104', '中国 河南 郑州 ', 'Mac', 'Safari(601.1)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522484484');
INSERT INTO `jt_web_log` VALUES ('711', '0', '115.60.165.104', '中国 河南 郑州 ', 'Mac', 'Safari(601.1)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522484506');
INSERT INTO `jt_web_log` VALUES ('712', '0', '115.60.165.104', '中国 河南 郑州 ', 'Windows 95', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522485043');
INSERT INTO `jt_web_log` VALUES ('713', '0', '61.162.215.1', '中国 山东 滨州 ', 'Windows 10', 'Chrome(67.0.3371.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1522851868');
INSERT INTO `jt_web_log` VALUES ('714', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523080856');
INSERT INTO `jt_web_log` VALUES ('715', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523080875');
INSERT INTO `jt_web_log` VALUES ('716', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523080881');
INSERT INTO `jt_web_log` VALUES ('717', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523080883');
INSERT INTO `jt_web_log` VALUES ('718', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523080884');
INSERT INTO `jt_web_log` VALUES ('719', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523080886');
INSERT INTO `jt_web_log` VALUES ('720', '0', '1.60.4.247', '中国 黑龙江 黑河 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523080887');
INSERT INTO `jt_web_log` VALUES ('721', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523541273');
INSERT INTO `jt_web_log` VALUES ('722', '0', '202.109.166.220', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523541722');
INSERT INTO `jt_web_log` VALUES ('723', '0', '123.13.244.83', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523541781');
INSERT INTO `jt_web_log` VALUES ('724', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523541786');
INSERT INTO `jt_web_log` VALUES ('725', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523541788');
INSERT INTO `jt_web_log` VALUES ('726', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523541789');
INSERT INTO `jt_web_log` VALUES ('727', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523541791');
INSERT INTO `jt_web_log` VALUES ('728', '0', '106.11.223.48', '中国 广东 深圳 ', 'Linux', '未知浏览器()', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523541793');
INSERT INTO `jt_web_log` VALUES ('729', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523541793');
INSERT INTO `jt_web_log` VALUES ('730', '0', '202.109.166.218', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523541794');
INSERT INTO `jt_web_log` VALUES ('731', '0', '182.122.100.69', '中国 河南 平顶山 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523541796');
INSERT INTO `jt_web_log` VALUES ('732', '0', '115.60.166.77', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523541798');
INSERT INTO `jt_web_log` VALUES ('733', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523541800');
INSERT INTO `jt_web_log` VALUES ('734', '0', '115.60.166.77', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1523541827');
INSERT INTO `jt_web_log` VALUES ('735', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'IE(8.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1523541931');
INSERT INTO `jt_web_log` VALUES ('736', '0', '61.129.6.73', '中国 上海 上海 ', 'Linux', 'Chrome(57.0.2987.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542199');
INSERT INTO `jt_web_log` VALUES ('737', '0', '183.134.59.156', '中国 浙江 嘉兴 ', 'Linux', 'Chrome(57.0.2987.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542224');
INSERT INTO `jt_web_log` VALUES ('738', '1', '123.9.183.62', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542379');
INSERT INTO `jt_web_log` VALUES ('739', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523542507');
INSERT INTO `jt_web_log` VALUES ('740', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542514');
INSERT INTO `jt_web_log` VALUES ('741', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/20.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"20\";}', '1523542551');
INSERT INTO `jt_web_log` VALUES ('742', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542557');
INSERT INTO `jt_web_log` VALUES ('743', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523542604');
INSERT INTO `jt_web_log` VALUES ('744', '1', '123.13.245.230', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523542606');
INSERT INTO `jt_web_log` VALUES ('745', '1', '123.13.245.230', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523542609');
INSERT INTO `jt_web_log` VALUES ('746', '1', '123.13.244.199', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523542610');
INSERT INTO `jt_web_log` VALUES ('747', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523542612');
INSERT INTO `jt_web_log` VALUES ('748', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523542614');
INSERT INTO `jt_web_log` VALUES ('749', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542617');
INSERT INTO `jt_web_log` VALUES ('750', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523542630');
INSERT INTO `jt_web_log` VALUES ('751', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523542819');
INSERT INTO `jt_web_log` VALUES ('752', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523543295');
INSERT INTO `jt_web_log` VALUES ('753', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523543303');
INSERT INTO `jt_web_log` VALUES ('754', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523543307');
INSERT INTO `jt_web_log` VALUES ('755', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523543310');
INSERT INTO `jt_web_log` VALUES ('756', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523543311');
INSERT INTO `jt_web_log` VALUES ('757', '0', '27.220.143.62', '中国 山东 菏泽 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523543312');
INSERT INTO `jt_web_log` VALUES ('758', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523543474');
INSERT INTO `jt_web_log` VALUES ('759', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523543477');
INSERT INTO `jt_web_log` VALUES ('760', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523543482');
INSERT INTO `jt_web_log` VALUES ('761', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523543484');
INSERT INTO `jt_web_log` VALUES ('762', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523543490');
INSERT INTO `jt_web_log` VALUES ('763', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523543493');
INSERT INTO `jt_web_log` VALUES ('764', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523543495');
INSERT INTO `jt_web_log` VALUES ('765', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523543498');
INSERT INTO `jt_web_log` VALUES ('766', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523543501');
INSERT INTO `jt_web_log` VALUES ('767', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523543503');
INSERT INTO `jt_web_log` VALUES ('768', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523543505');
INSERT INTO `jt_web_log` VALUES ('769', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523543510');
INSERT INTO `jt_web_log` VALUES ('770', '0', '117.23.183.182', '中国 陕西 宝鸡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523543514');
INSERT INTO `jt_web_log` VALUES ('771', '0', '101.199.112.51', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523544171');
INSERT INTO `jt_web_log` VALUES ('772', '0', '220.181.132.200', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523544177');
INSERT INTO `jt_web_log` VALUES ('773', '0', '171.13.14.147', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523544177');
INSERT INTO `jt_web_log` VALUES ('774', '0', '101.199.108.51', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523544186');
INSERT INTO `jt_web_log` VALUES ('775', '0', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1523544904');
INSERT INTO `jt_web_log` VALUES ('776', '0', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1523544913');
INSERT INTO `jt_web_log` VALUES ('777', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523544932');
INSERT INTO `jt_web_log` VALUES ('778', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'IE(11.0)', '/admin/news/news_runadd.html', 'admin', 'News', 'news_runadd', 'Ajax', 'a:15:{s:13:\"news_columnid\";s:1:\"3\";s:10:\"news_title\";s:13:\"0000000000000\";s:15:\"news_titleshort\";s:0:\"\";s:9:\"news_flag\";a:9:{i:0;s:1:\"h\";i:1;s:1:\"c\";i:2;s:1:\"f\";i:3;s:1:\"a\";i:4;s:1:\"s\";i:5;s:1:\"p\";i:6;s:1:\"j\";i:7;s:1:\"d\";i:8;s:2:\"cp\";}s:13:\"news_zaddress\";s:0:\"\";s:12:\"news_cpprice\";s:0:\"\";s:8:\"news_key\";s:0:\"\";s:11:\"news_source\";s:12:\"服务中心\";s:13:\"news_pic_type\";s:1:\"1\";s:7:\"pic_all\";a:1:{i:0;s:0:\"\";}s:16:\"news_pic_content\";s:0:\"\";s:9:\"listorder\";s:2:\"50\";s:8:\"showdate\";s:10:\"2018-04-12\";s:13:\"news_scontent\";s:2:\"99\";s:12:\"news_content\";s:113:\"<p>22<img title=\"5acf73cf35f03.jpg\" alt=\"5acf73cf35f03.jpg\" src=\"/data/upload/2018-04-12/5acf73cf35f03.jpg\"/></p>\";}', '1523545043');
INSERT INTO `jt_web_log` VALUES ('779', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545055');
INSERT INTO `jt_web_log` VALUES ('780', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'IE(11.0)', '/admin/news/news_state.html', 'admin', 'News', 'news_state', 'Ajax', 'a:1:{s:1:\"x\";s:2:\"31\";}', '1523545080');
INSERT INTO `jt_web_log` VALUES ('781', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545085');
INSERT INTO `jt_web_log` VALUES ('782', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545183');
INSERT INTO `jt_web_log` VALUES ('783', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545772');
INSERT INTO `jt_web_log` VALUES ('784', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545782');
INSERT INTO `jt_web_log` VALUES ('785', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523545822');
INSERT INTO `jt_web_log` VALUES ('786', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545831');
INSERT INTO `jt_web_log` VALUES ('787', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523545936');
INSERT INTO `jt_web_log` VALUES ('788', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523545964');
INSERT INTO `jt_web_log` VALUES ('789', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523545978');
INSERT INTO `jt_web_log` VALUES ('790', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523546023');
INSERT INTO `jt_web_log` VALUES ('791', '0', '220.181.132.194', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523546116');
INSERT INTO `jt_web_log` VALUES ('792', '1', '218.207.126.252', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1523546125');
INSERT INTO `jt_web_log` VALUES ('793', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523546330');
INSERT INTO `jt_web_log` VALUES ('794', '1', '202.109.166.216', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523546425');
INSERT INTO `jt_web_log` VALUES ('795', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1523546428');
INSERT INTO `jt_web_log` VALUES ('796', '1', '202.109.166.217', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523546433');
INSERT INTO `jt_web_log` VALUES ('797', '1', '183.134.59.156', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523546437');
INSERT INTO `jt_web_log` VALUES ('798', '0', '61.129.6.72', '中国 上海 上海 ', 'Linux', 'Chrome(37.0.0.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523546480');
INSERT INTO `jt_web_log` VALUES ('799', '0', '101.199.108.52', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523546506');
INSERT INTO `jt_web_log` VALUES ('800', '0', '101.199.108.55', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523546533');
INSERT INTO `jt_web_log` VALUES ('801', '0', '101.199.108.55', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523546534');
INSERT INTO `jt_web_log` VALUES ('802', '0', '101.199.108.119', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523546808');
INSERT INTO `jt_web_log` VALUES ('803', '0', '101.199.112.55', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523546834');
INSERT INTO `jt_web_log` VALUES ('804', '0', '101.199.112.55', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523546835');
INSERT INTO `jt_web_log` VALUES ('805', '0', '101.199.108.54', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523547589');
INSERT INTO `jt_web_log` VALUES ('806', '0', '171.38.233.243', '中国 广西 钦州 ', 'Windows 7', 'Chrome(63.0.3239.26)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523550618');
INSERT INTO `jt_web_log` VALUES ('807', '0', '123.151.77.121', '中国 天津 天津 ', 'Linux', 'Chrome(57.0.2987.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523569074');
INSERT INTO `jt_web_log` VALUES ('808', '0', '123.151.77.121', '中国 天津 天津 ', 'Linux', 'Chrome(57.0.2987.132)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523569104');
INSERT INTO `jt_web_log` VALUES ('809', '0', '123.151.77.121', '中国 天津 天津 ', 'Linux', 'Chrome(57.0.2987.132)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1523569131');
INSERT INTO `jt_web_log` VALUES ('810', '0', '123.151.77.121', '中国 天津 天津 ', 'Linux', 'Chrome(57.0.2987.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523569138');
INSERT INTO `jt_web_log` VALUES ('811', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523585226');
INSERT INTO `jt_web_log` VALUES ('812', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/news/index/id/24.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"24\";}', '1523585230');
INSERT INTO `jt_web_log` VALUES ('813', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523585231');
INSERT INTO `jt_web_log` VALUES ('814', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523585236');
INSERT INTO `jt_web_log` VALUES ('815', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523585238');
INSERT INTO `jt_web_log` VALUES ('816', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523585238');
INSERT INTO `jt_web_log` VALUES ('817', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523585239');
INSERT INTO `jt_web_log` VALUES ('818', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523585240');
INSERT INTO `jt_web_log` VALUES ('819', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523585243');
INSERT INTO `jt_web_log` VALUES ('820', '0', '114.85.41.11', '中国 上海 上海 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523585245');
INSERT INTO `jt_web_log` VALUES ('821', '1', '220.162.227.242', '中国 福建 三明 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523585938');
INSERT INTO `jt_web_log` VALUES ('822', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523587014');
INSERT INTO `jt_web_log` VALUES ('823', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523587039');
INSERT INTO `jt_web_log` VALUES ('824', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523587041');
INSERT INTO `jt_web_log` VALUES ('825', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523587042');
INSERT INTO `jt_web_log` VALUES ('826', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523587044');
INSERT INTO `jt_web_log` VALUES ('827', '0', '112.51.97.31', '中国 中国  ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523587045');
INSERT INTO `jt_web_log` VALUES ('828', '0', '114.225.207.99', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523606568');
INSERT INTO `jt_web_log` VALUES ('829', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523784013');
INSERT INTO `jt_web_log` VALUES ('830', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523784260');
INSERT INTO `jt_web_log` VALUES ('831', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523784806');
INSERT INTO `jt_web_log` VALUES ('832', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523784934');
INSERT INTO `jt_web_log` VALUES ('833', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523785387');
INSERT INTO `jt_web_log` VALUES ('834', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523785404');
INSERT INTO `jt_web_log` VALUES ('835', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523785519');
INSERT INTO `jt_web_log` VALUES ('836', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523785925');
INSERT INTO `jt_web_log` VALUES ('837', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523785945');
INSERT INTO `jt_web_log` VALUES ('838', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523786386');
INSERT INTO `jt_web_log` VALUES ('839', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523786408');
INSERT INTO `jt_web_log` VALUES ('840', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523786410');
INSERT INTO `jt_web_log` VALUES ('841', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523786451');
INSERT INTO `jt_web_log` VALUES ('842', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523786456');
INSERT INTO `jt_web_log` VALUES ('843', '0', '115.60.165.47', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523786728');
INSERT INTO `jt_web_log` VALUES ('844', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523787187');
INSERT INTO `jt_web_log` VALUES ('845', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523787204');
INSERT INTO `jt_web_log` VALUES ('846', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1523787207');
INSERT INTO `jt_web_log` VALUES ('847', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523787211');
INSERT INTO `jt_web_log` VALUES ('848', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523787215');
INSERT INTO `jt_web_log` VALUES ('849', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523787217');
INSERT INTO `jt_web_log` VALUES ('850', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523787219');
INSERT INTO `jt_web_log` VALUES ('851', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523787221');
INSERT INTO `jt_web_log` VALUES ('852', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523787222');
INSERT INTO `jt_web_log` VALUES ('853', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523787224');
INSERT INTO `jt_web_log` VALUES ('854', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523787225');
INSERT INTO `jt_web_log` VALUES ('855', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523787228');
INSERT INTO `jt_web_log` VALUES ('856', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523787280');
INSERT INTO `jt_web_log` VALUES ('857', '0', '115.60.161.238', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523789031');
INSERT INTO `jt_web_log` VALUES ('858', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523978689');
INSERT INTO `jt_web_log` VALUES ('859', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523978697');
INSERT INTO `jt_web_log` VALUES ('860', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523978703');
INSERT INTO `jt_web_log` VALUES ('861', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523978706');
INSERT INTO `jt_web_log` VALUES ('862', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523978708');
INSERT INTO `jt_web_log` VALUES ('863', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523978710');
INSERT INTO `jt_web_log` VALUES ('864', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523978715');
INSERT INTO `jt_web_log` VALUES ('865', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523978717');
INSERT INTO `jt_web_log` VALUES ('866', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523978723');
INSERT INTO `jt_web_log` VALUES ('867', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523978969');
INSERT INTO `jt_web_log` VALUES ('868', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523978971');
INSERT INTO `jt_web_log` VALUES ('869', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1523978977');
INSERT INTO `jt_web_log` VALUES ('870', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523978982');
INSERT INTO `jt_web_log` VALUES ('871', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523978986');
INSERT INTO `jt_web_log` VALUES ('872', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523978992');
INSERT INTO `jt_web_log` VALUES ('873', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523978994');
INSERT INTO `jt_web_log` VALUES ('874', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/3.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523978996');
INSERT INTO `jt_web_log` VALUES ('875', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1523978999');
INSERT INTO `jt_web_log` VALUES ('876', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/24.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"24\";}', '1523979003');
INSERT INTO `jt_web_log` VALUES ('877', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523979006');
INSERT INTO `jt_web_log` VALUES ('878', '0', '59.42.121.117', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523979032');
INSERT INTO `jt_web_log` VALUES ('879', '0', '101.199.112.50', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523979532');
INSERT INTO `jt_web_log` VALUES ('880', '0', '182.118.20.143', '中国 河南 郑州 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1523979554');
INSERT INTO `jt_web_log` VALUES ('881', '0', '220.181.132.196', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523979599');
INSERT INTO `jt_web_log` VALUES ('882', '0', '171.13.14.152', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523980304');
INSERT INTO `jt_web_log` VALUES ('883', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1523980824');
INSERT INTO `jt_web_log` VALUES ('884', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523980837');
INSERT INTO `jt_web_log` VALUES ('885', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1523980839');
INSERT INTO `jt_web_log` VALUES ('886', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523980840');
INSERT INTO `jt_web_log` VALUES ('887', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523980842');
INSERT INTO `jt_web_log` VALUES ('888', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523980846');
INSERT INTO `jt_web_log` VALUES ('889', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1523980847');
INSERT INTO `jt_web_log` VALUES ('890', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1523980849');
INSERT INTO `jt_web_log` VALUES ('891', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1523980851');
INSERT INTO `jt_web_log` VALUES ('892', '0', '118.249.102.33', '中国 湖南 长沙 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1523980852');
INSERT INTO `jt_web_log` VALUES ('893', '0', '182.118.20.145', '中国 河南 郑州 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1523980968');
INSERT INTO `jt_web_log` VALUES ('894', '0', '113.109.219.102', '中国 广东 广州 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524015995');
INSERT INTO `jt_web_log` VALUES ('895', '0', '223.104.6.6', '中国 福建  ', 'Mac', 'Safari(601.1)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524107966');
INSERT INTO `jt_web_log` VALUES ('896', '0', '223.104.6.6', '中国 福建  ', 'Mac', 'Safari(601.1)', '/home/news/index/id/4.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524108053');
INSERT INTO `jt_web_log` VALUES ('897', '0', '223.104.6.6', '中国 福建  ', 'Mac', 'Safari(601.1)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524108315');
INSERT INTO `jt_web_log` VALUES ('898', '0', '111.37.21.118', '中国 山东 临沂 ', 'Windows 10', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524112139');
INSERT INTO `jt_web_log` VALUES ('899', '0', '101.75.90.121', '中国 河北 唐山 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524126364');
INSERT INTO `jt_web_log` VALUES ('900', '0', '101.75.90.121', '中国 河北 唐山 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524126378');
INSERT INTO `jt_web_log` VALUES ('901', '0', '101.75.90.121', '中国 河北 唐山 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524127767');
INSERT INTO `jt_web_log` VALUES ('902', '0', '101.75.90.121', '中国 河北 唐山 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1524127773');
INSERT INTO `jt_web_log` VALUES ('903', '0', '101.75.90.121', '中国 河北 唐山 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524127781');
INSERT INTO `jt_web_log` VALUES ('904', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524131342');
INSERT INTO `jt_web_log` VALUES ('905', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524131360');
INSERT INTO `jt_web_log` VALUES ('906', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1524131368');
INSERT INTO `jt_web_log` VALUES ('907', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1524131369');
INSERT INTO `jt_web_log` VALUES ('908', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524131373');
INSERT INTO `jt_web_log` VALUES ('909', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524131378');
INSERT INTO `jt_web_log` VALUES ('910', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/24.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"24\";}', '1524131382');
INSERT INTO `jt_web_log` VALUES ('911', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/20.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"20\";}', '1524131389');
INSERT INTO `jt_web_log` VALUES ('912', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524131391');
INSERT INTO `jt_web_log` VALUES ('913', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524131393');
INSERT INTO `jt_web_log` VALUES ('914', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524131395');
INSERT INTO `jt_web_log` VALUES ('915', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524131397');
INSERT INTO `jt_web_log` VALUES ('916', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524131399');
INSERT INTO `jt_web_log` VALUES ('917', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524131401');
INSERT INTO `jt_web_log` VALUES ('918', '0', '60.171.124.72', '中国 安徽 马鞍山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524131404');
INSERT INTO `jt_web_log` VALUES ('919', '0', '106.120.161.68', '中国 北京 北京 ', '未知操作系统', 'Chrome(55.0.2883.105)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524132364');
INSERT INTO `jt_web_log` VALUES ('920', '0', '101.199.112.51', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524133345');
INSERT INTO `jt_web_log` VALUES ('921', '0', '180.163.220.60', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524133353');
INSERT INTO `jt_web_log` VALUES ('922', '0', '106.120.161.68', '中国 北京 北京 ', '未知操作系统', 'Chrome(55.0.2883.105)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524136000');
INSERT INTO `jt_web_log` VALUES ('923', '0', '106.120.160.109', '中国 北京 北京 ', '未知操作系统', 'Chrome(55.0.2883.105)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524136208');
INSERT INTO `jt_web_log` VALUES ('924', '0', '114.255.236.247', '中国 北京 北京 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524189692');
INSERT INTO `jt_web_log` VALUES ('925', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524190497');
INSERT INTO `jt_web_log` VALUES ('926', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524190528');
INSERT INTO `jt_web_log` VALUES ('927', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524190719');
INSERT INTO `jt_web_log` VALUES ('928', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524190725');
INSERT INTO `jt_web_log` VALUES ('929', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524190726');
INSERT INTO `jt_web_log` VALUES ('930', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524190726');
INSERT INTO `jt_web_log` VALUES ('931', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524190727');
INSERT INTO `jt_web_log` VALUES ('932', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524190728');
INSERT INTO `jt_web_log` VALUES ('933', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524190729');
INSERT INTO `jt_web_log` VALUES ('934', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524190731');
INSERT INTO `jt_web_log` VALUES ('935', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524190765');
INSERT INTO `jt_web_log` VALUES ('936', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191222');
INSERT INTO `jt_web_log` VALUES ('937', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524191225');
INSERT INTO `jt_web_log` VALUES ('938', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191233');
INSERT INTO `jt_web_log` VALUES ('939', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191245');
INSERT INTO `jt_web_log` VALUES ('940', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191254');
INSERT INTO `jt_web_log` VALUES ('941', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524191256');
INSERT INTO `jt_web_log` VALUES ('942', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524191257');
INSERT INTO `jt_web_log` VALUES ('943', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1524191259');
INSERT INTO `jt_web_log` VALUES ('944', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/news/index/id/26.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"26\";}', '1524191263');
INSERT INTO `jt_web_log` VALUES ('945', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1524191265');
INSERT INTO `jt_web_log` VALUES ('946', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191266');
INSERT INTO `jt_web_log` VALUES ('947', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1524191274');
INSERT INTO `jt_web_log` VALUES ('948', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191604');
INSERT INTO `jt_web_log` VALUES ('949', '0', '113.16.69.39', '中国 广西 南宁 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524191786');
INSERT INTO `jt_web_log` VALUES ('950', '0', '113.16.69.39', '中国 广西 南宁 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524191790');
INSERT INTO `jt_web_log` VALUES ('951', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524192153');
INSERT INTO `jt_web_log` VALUES ('952', '0', '60.222.157.136', '中国 山西 运城 ', 'Mac', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524193548');
INSERT INTO `jt_web_log` VALUES ('953', '0', '106.120.160.109', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524210857');
INSERT INTO `jt_web_log` VALUES ('954', '0', '106.120.161.68', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524211354');
INSERT INTO `jt_web_log` VALUES ('955', '0', '106.120.161.68', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524229773');
INSERT INTO `jt_web_log` VALUES ('956', '0', '106.120.160.109', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524230002');
INSERT INTO `jt_web_log` VALUES ('957', '0', '202.109.166.220', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524237798');
INSERT INTO `jt_web_log` VALUES ('958', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524237813');
INSERT INTO `jt_web_log` VALUES ('959', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524237838');
INSERT INTO `jt_web_log` VALUES ('960', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524237841');
INSERT INTO `jt_web_log` VALUES ('961', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524237853');
INSERT INTO `jt_web_log` VALUES ('962', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524237857');
INSERT INTO `jt_web_log` VALUES ('963', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1524237871');
INSERT INTO `jt_web_log` VALUES ('964', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524237875');
INSERT INTO `jt_web_log` VALUES ('965', '0', '106.11.222.67', '中国 广东 深圳 ', 'Linux', '未知浏览器()', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524237966');
INSERT INTO `jt_web_log` VALUES ('966', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524238109');
INSERT INTO `jt_web_log` VALUES ('967', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524238114');
INSERT INTO `jt_web_log` VALUES ('968', '0', '123.9.177.224', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524238118');
INSERT INTO `jt_web_log` VALUES ('969', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524238119');
INSERT INTO `jt_web_log` VALUES ('970', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524238146');
INSERT INTO `jt_web_log` VALUES ('971', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524238148');
INSERT INTO `jt_web_log` VALUES ('972', '0', '182.114.149.176', '中国 河南 平顶山 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524238158');
INSERT INTO `jt_web_log` VALUES ('973', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524238161');
INSERT INTO `jt_web_log` VALUES ('974', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524238165');
INSERT INTO `jt_web_log` VALUES ('975', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/19.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"19\";}', '1524238168');
INSERT INTO `jt_web_log` VALUES ('976', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524238171');
INSERT INTO `jt_web_log` VALUES ('977', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524238172');
INSERT INTO `jt_web_log` VALUES ('978', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524238173');
INSERT INTO `jt_web_log` VALUES ('979', '0', '123.9.176.215', '中国 河南 许昌 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524238174');
INSERT INTO `jt_web_log` VALUES ('980', '0', '182.114.149.175', '中国 河南 平顶山 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524238175');
INSERT INTO `jt_web_log` VALUES ('981', '0', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524238179');
INSERT INTO `jt_web_log` VALUES ('982', '0', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1524238192');
INSERT INTO `jt_web_log` VALUES ('983', '0', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'IE(8.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'POST', 's:12:\"保密数据\";', '1524238257');
INSERT INTO `jt_web_log` VALUES ('984', '0', '182.114.151.92', '中国 河南 平顶山 ', 'Windows 7', 'IE(8.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1524238267');
INSERT INTO `jt_web_log` VALUES ('985', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524238638');
INSERT INTO `jt_web_log` VALUES ('986', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524238656');
INSERT INTO `jt_web_log` VALUES ('987', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524238661');
INSERT INTO `jt_web_log` VALUES ('988', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524238665');
INSERT INTO `jt_web_log` VALUES ('989', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524238669');
INSERT INTO `jt_web_log` VALUES ('990', '1', '115.60.167.4', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524238673');
INSERT INTO `jt_web_log` VALUES ('991', '0', '220.181.132.194', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524239269');
INSERT INTO `jt_web_log` VALUES ('992', '0', '180.163.220.99', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524239276');
INSERT INTO `jt_web_log` VALUES ('993', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(49.0.2623.221)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524288766');
INSERT INTO `jt_web_log` VALUES ('994', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(49.0.2623.221)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1524288784');
INSERT INTO `jt_web_log` VALUES ('995', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(49.0.2623.221)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524288790');
INSERT INTO `jt_web_log` VALUES ('996', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(49.0.2623.221)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1524288796');
INSERT INTO `jt_web_log` VALUES ('997', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(49.0.2623.221)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524288800');
INSERT INTO `jt_web_log` VALUES ('998', '0', '182.203.154.168', '中国 辽宁 阜新 ', 'Windows 95', 'Chrome(39.0.2171.95)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524288897');
INSERT INTO `jt_web_log` VALUES ('999', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524323533');
INSERT INTO `jt_web_log` VALUES ('1000', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524323553');
INSERT INTO `jt_web_log` VALUES ('1001', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/4.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524323555');
INSERT INTO `jt_web_log` VALUES ('1002', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524323558');
INSERT INTO `jt_web_log` VALUES ('1003', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524323560');
INSERT INTO `jt_web_log` VALUES ('1004', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524323564');
INSERT INTO `jt_web_log` VALUES ('1005', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/26.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"26\";}', '1524323567');
INSERT INTO `jt_web_log` VALUES ('1006', '1', '202.109.166.221', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524323570');
INSERT INTO `jt_web_log` VALUES ('1007', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524323572');
INSERT INTO `jt_web_log` VALUES ('1008', '1', '202.109.166.220', '中国 江西 吉安 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524323577');
INSERT INTO `jt_web_log` VALUES ('1009', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524323579');
INSERT INTO `jt_web_log` VALUES ('1010', '0', '123.151.77.90', '中国 天津 天津 ', 'Linux', 'Chrome(57.0.2987.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524363692');
INSERT INTO `jt_web_log` VALUES ('1011', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524363753');
INSERT INTO `jt_web_log` VALUES ('1012', '0', '182.203.160.70', '中国 辽宁 阜新 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524370282');
INSERT INTO `jt_web_log` VALUES ('1013', '0', '182.203.160.70', '中国 辽宁 阜新 ', 'Windows 95', 'Chrome(39.0.2171.95)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524370495');
INSERT INTO `jt_web_log` VALUES ('1014', '0', '182.203.160.70', '中国 辽宁 阜新 ', 'Windows 95', 'Chrome(39.0.2171.95)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1524370515');
INSERT INTO `jt_web_log` VALUES ('1015', '0', '182.203.160.70', '中国 辽宁 阜新 ', 'Windows 95', 'Chrome(39.0.2171.95)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524370525');
INSERT INTO `jt_web_log` VALUES ('1016', '1', '183.134.59.150', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524373938');
INSERT INTO `jt_web_log` VALUES ('1017', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524393265');
INSERT INTO `jt_web_log` VALUES ('1018', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524393269');
INSERT INTO `jt_web_log` VALUES ('1019', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524393271');
INSERT INTO `jt_web_log` VALUES ('1020', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524393272');
INSERT INTO `jt_web_log` VALUES ('1021', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524393273');
INSERT INTO `jt_web_log` VALUES ('1022', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524393279');
INSERT INTO `jt_web_log` VALUES ('1023', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524397299');
INSERT INTO `jt_web_log` VALUES ('1024', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524397327');
INSERT INTO `jt_web_log` VALUES ('1025', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524397332');
INSERT INTO `jt_web_log` VALUES ('1026', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524397333');
INSERT INTO `jt_web_log` VALUES ('1027', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524397334');
INSERT INTO `jt_web_log` VALUES ('1028', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524397336');
INSERT INTO `jt_web_log` VALUES ('1029', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524397337');
INSERT INTO `jt_web_log` VALUES ('1030', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524397338');
INSERT INTO `jt_web_log` VALUES ('1031', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524397339');
INSERT INTO `jt_web_log` VALUES ('1032', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524397339');
INSERT INTO `jt_web_log` VALUES ('1033', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524397341');
INSERT INTO `jt_web_log` VALUES ('1034', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524397741');
INSERT INTO `jt_web_log` VALUES ('1035', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524399864');
INSERT INTO `jt_web_log` VALUES ('1036', '0', '123.174.177.190', '中国 山西 运城 ', 'Windows 7', 'Chrome(66.0.3359.117)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524399865');
INSERT INTO `jt_web_log` VALUES ('1037', '0', '106.120.160.109', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524449857');
INSERT INTO `jt_web_log` VALUES ('1038', '0', '106.120.161.68', '中国 北京 北京 ', '未知操作系统', 'Safari(537.36)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524450075');
INSERT INTO `jt_web_log` VALUES ('1039', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524536176');
INSERT INTO `jt_web_log` VALUES ('1040', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1524536206');
INSERT INTO `jt_web_log` VALUES ('1041', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1524536214');
INSERT INTO `jt_web_log` VALUES ('1042', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524536251');
INSERT INTO `jt_web_log` VALUES ('1043', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524536254');
INSERT INTO `jt_web_log` VALUES ('1044', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524536257');
INSERT INTO `jt_web_log` VALUES ('1045', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524536259');
INSERT INTO `jt_web_log` VALUES ('1046', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524536260');
INSERT INTO `jt_web_log` VALUES ('1047', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524536262');
INSERT INTO `jt_web_log` VALUES ('1048', '0', '112.115.184.207', '中国 云南 昆明 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524536286');
INSERT INTO `jt_web_log` VALUES ('1049', '0', '101.199.108.53', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524650908');
INSERT INTO `jt_web_log` VALUES ('1050', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524885239');
INSERT INTO `jt_web_log` VALUES ('1051', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1524885252');
INSERT INTO `jt_web_log` VALUES ('1052', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524885257');
INSERT INTO `jt_web_log` VALUES ('1053', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524885259');
INSERT INTO `jt_web_log` VALUES ('1054', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524885262');
INSERT INTO `jt_web_log` VALUES ('1055', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524885264');
INSERT INTO `jt_web_log` VALUES ('1056', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524885266');
INSERT INTO `jt_web_log` VALUES ('1057', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524885267');
INSERT INTO `jt_web_log` VALUES ('1058', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524885270');
INSERT INTO `jt_web_log` VALUES ('1059', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524885272');
INSERT INTO `jt_web_log` VALUES ('1060', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524885273');
INSERT INTO `jt_web_log` VALUES ('1061', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524885276');
INSERT INTO `jt_web_log` VALUES ('1062', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/19.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"19\";}', '1524885277');
INSERT INTO `jt_web_log` VALUES ('1063', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524885283');
INSERT INTO `jt_web_log` VALUES ('1064', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524885296');
INSERT INTO `jt_web_log` VALUES ('1065', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/2.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524885298');
INSERT INTO `jt_web_log` VALUES ('1066', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524885326');
INSERT INTO `jt_web_log` VALUES ('1067', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524885344');
INSERT INTO `jt_web_log` VALUES ('1068', '0', '124.239.94.120', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524885346');
INSERT INTO `jt_web_log` VALUES ('1069', '0', '220.181.132.198', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524887041');
INSERT INTO `jt_web_log` VALUES ('1070', '0', '180.163.220.43', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524887051');
INSERT INTO `jt_web_log` VALUES ('1071', '0', '101.199.108.118', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524888454');
INSERT INTO `jt_web_log` VALUES ('1072', '0', '182.118.20.149', '中国 河南 郑州 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524888455');
INSERT INTO `jt_web_log` VALUES ('1073', '0', '101.199.112.55', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524888466');
INSERT INTO `jt_web_log` VALUES ('1074', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524902247');
INSERT INTO `jt_web_log` VALUES ('1075', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1524902262');
INSERT INTO `jt_web_log` VALUES ('1076', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1524902263');
INSERT INTO `jt_web_log` VALUES ('1077', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1524902264');
INSERT INTO `jt_web_log` VALUES ('1078', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1524902265');
INSERT INTO `jt_web_log` VALUES ('1079', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1524902266');
INSERT INTO `jt_web_log` VALUES ('1080', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1524902267');
INSERT INTO `jt_web_log` VALUES ('1081', '0', '113.110.155.27', '中国 广东 深圳 ', 'Windows 10', 'Firefox(59.0)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1524902268');
INSERT INTO `jt_web_log` VALUES ('1082', '0', '115.53.6.171', '中国 河南 濮阳 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1524930645');
INSERT INTO `jt_web_log` VALUES ('1083', '0', '115.53.6.171', '中国 河南 濮阳 ', 'Windows 7', 'Chrome(45.0.2454.101)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525070794');
INSERT INTO `jt_web_log` VALUES ('1084', '0', '111.147.63.8', '中国 福建 三明 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525155112');
INSERT INTO `jt_web_log` VALUES ('1085', '0', '219.157.255.159', '中国 河南 郑州 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525155117');
INSERT INTO `jt_web_log` VALUES ('1086', '0', '183.134.59.152', '中国 浙江 嘉兴 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525155134');
INSERT INTO `jt_web_log` VALUES ('1087', '0', '111.147.63.8', '中国 福建 三明 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525155136');
INSERT INTO `jt_web_log` VALUES ('1088', '0', '182.114.144.97', '中国 河南 平顶山 ', 'Windows 7', 'Chrome(31.0.1650.63)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525155139');
INSERT INTO `jt_web_log` VALUES ('1089', '0', '125.46.79.214', '中国 河南 郑州 ', 'Windows 7', 'Chrome(64.0.3282.140)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525258803');
INSERT INTO `jt_web_log` VALUES ('1090', '0', '125.46.79.214', '中国 河南 郑州 ', 'Windows 7', 'Chrome(64.0.3282.140)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525258869');
INSERT INTO `jt_web_log` VALUES ('1091', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525321020');
INSERT INTO `jt_web_log` VALUES ('1092', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525321037');
INSERT INTO `jt_web_log` VALUES ('1093', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525321047');
INSERT INTO `jt_web_log` VALUES ('1094', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525321054');
INSERT INTO `jt_web_log` VALUES ('1095', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525321056');
INSERT INTO `jt_web_log` VALUES ('1096', '0', '119.86.24.103', '中国 重庆 重庆 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525321059');
INSERT INTO `jt_web_log` VALUES ('1097', '0', '101.199.108.119', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525322145');
INSERT INTO `jt_web_log` VALUES ('1098', '0', '180.163.220.43', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525322154');
INSERT INTO `jt_web_log` VALUES ('1099', '0', '101.199.108.58', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525322162');
INSERT INTO `jt_web_log` VALUES ('1100', '0', '171.13.14.131', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525322163');
INSERT INTO `jt_web_log` VALUES ('1101', '0', '101.199.121.77', '中国 北京 北京 ', 'Linux', 'Chrome(64.0.3282.119)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525326263');
INSERT INTO `jt_web_log` VALUES ('1102', '0', '101.199.108.56', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525328889');
INSERT INTO `jt_web_log` VALUES ('1103', '0', '115.60.164.156', '中国 河南 郑州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525348838');
INSERT INTO `jt_web_log` VALUES ('1104', '0', '115.60.164.156', '中国 河南 郑州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525348850');
INSERT INTO `jt_web_log` VALUES ('1105', '0', '115.60.164.156', '中国 河南 郑州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525348854');
INSERT INTO `jt_web_log` VALUES ('1106', '0', '115.60.164.156', '中国 河南 郑州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525348855');
INSERT INTO `jt_web_log` VALUES ('1107', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525400240');
INSERT INTO `jt_web_log` VALUES ('1108', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525400244');
INSERT INTO `jt_web_log` VALUES ('1109', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/news/index/id/4.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525400247');
INSERT INTO `jt_web_log` VALUES ('1110', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525400255');
INSERT INTO `jt_web_log` VALUES ('1111', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525400269');
INSERT INTO `jt_web_log` VALUES ('1112', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525400271');
INSERT INTO `jt_web_log` VALUES ('1113', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525400290');
INSERT INTO `jt_web_log` VALUES ('1114', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/news/index/id/4.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525400294');
INSERT INTO `jt_web_log` VALUES ('1115', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525400297');
INSERT INTO `jt_web_log` VALUES ('1116', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525400300');
INSERT INTO `jt_web_log` VALUES ('1117', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525400301');
INSERT INTO `jt_web_log` VALUES ('1118', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525400303');
INSERT INTO `jt_web_log` VALUES ('1119', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525400305');
INSERT INTO `jt_web_log` VALUES ('1120', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525400307');
INSERT INTO `jt_web_log` VALUES ('1121', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525400308');
INSERT INTO `jt_web_log` VALUES ('1122', '0', '113.70.45.155', '中国 广东 佛山 ', 'Windows 7', 'Chrome(62.0.3202.75)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525400309');
INSERT INTO `jt_web_log` VALUES ('1123', '0', '180.163.220.125', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525400841');
INSERT INTO `jt_web_log` VALUES ('1124', '0', '49.67.227.246', '中国 江苏 南通 ', 'Windows XP', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525489893');
INSERT INTO `jt_web_log` VALUES ('1125', '0', '49.67.227.246', '中国 江苏 南通 ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525489957');
INSERT INTO `jt_web_log` VALUES ('1126', '0', '49.67.227.246', '中国 江苏 南通 ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525489962');
INSERT INTO `jt_web_log` VALUES ('1127', '0', '49.67.227.246', '中国 江苏 南通 ', 'Windows XP', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525489963');
INSERT INTO `jt_web_log` VALUES ('1128', '0', '144.0.179.23', '中国 山东 烟台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525584698');
INSERT INTO `jt_web_log` VALUES ('1129', '0', '115.60.165.191', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525599417');
INSERT INTO `jt_web_log` VALUES ('1130', '0', '115.60.165.191', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1525599438');
INSERT INTO `jt_web_log` VALUES ('1131', '0', '112.53.84.155', '中国 山东 潍坊 ', 'Windows 10', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1525600911');
INSERT INTO `jt_web_log` VALUES ('1132', '1', '112.53.84.155', '中国 山东 潍坊 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525600958');
INSERT INTO `jt_web_log` VALUES ('1133', '0', '116.20.27.14', '中国 广东 佛山 ', 'Windows 10', 'Chrome(58.0.3029.110)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525778409');
INSERT INTO `jt_web_log` VALUES ('1134', '0', '116.20.27.14', '中国 广东 佛山 ', 'Windows 10', 'Chrome(58.0.3029.110)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1525778415');
INSERT INTO `jt_web_log` VALUES ('1135', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525781018');
INSERT INTO `jt_web_log` VALUES ('1136', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525781025');
INSERT INTO `jt_web_log` VALUES ('1137', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525781029');
INSERT INTO `jt_web_log` VALUES ('1138', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525781032');
INSERT INTO `jt_web_log` VALUES ('1139', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525781037');
INSERT INTO `jt_web_log` VALUES ('1140', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525781038');
INSERT INTO `jt_web_log` VALUES ('1141', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525781043');
INSERT INTO `jt_web_log` VALUES ('1142', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525781050');
INSERT INTO `jt_web_log` VALUES ('1143', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525781057');
INSERT INTO `jt_web_log` VALUES ('1144', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525781066');
INSERT INTO `jt_web_log` VALUES ('1145', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1525781069');
INSERT INTO `jt_web_log` VALUES ('1146', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525781072');
INSERT INTO `jt_web_log` VALUES ('1147', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525781228');
INSERT INTO `jt_web_log` VALUES ('1148', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525781233');
INSERT INTO `jt_web_log` VALUES ('1149', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525781236');
INSERT INTO `jt_web_log` VALUES ('1150', '0', '113.66.33.143', '中国 广东 广州 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525781238');
INSERT INTO `jt_web_log` VALUES ('1151', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525792886');
INSERT INTO `jt_web_log` VALUES ('1152', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525792890');
INSERT INTO `jt_web_log` VALUES ('1153', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525792894');
INSERT INTO `jt_web_log` VALUES ('1154', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525792899');
INSERT INTO `jt_web_log` VALUES ('1155', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525792919');
INSERT INTO `jt_web_log` VALUES ('1156', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525792929');
INSERT INTO `jt_web_log` VALUES ('1157', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525792962');
INSERT INTO `jt_web_log` VALUES ('1158', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525792964');
INSERT INTO `jt_web_log` VALUES ('1159', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525792966');
INSERT INTO `jt_web_log` VALUES ('1160', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525792970');
INSERT INTO `jt_web_log` VALUES ('1161', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1525792973');
INSERT INTO `jt_web_log` VALUES ('1162', '0', '27.226.28.127', '中国 甘肃 平凉 ', 'Windows 7', 'Firefox(59.0)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525792976');
INSERT INTO `jt_web_log` VALUES ('1163', '0', '139.204.103.164', '中国 四川 南充 ', 'Windows 7', 'Chrome(67.0.3396.18)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525835107');
INSERT INTO `jt_web_log` VALUES ('1164', '0', '180.163.220.125', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525836269');
INSERT INTO `jt_web_log` VALUES ('1165', '0', '220.181.132.199', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525836314');
INSERT INTO `jt_web_log` VALUES ('1166', '0', '101.199.112.51', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525838242');
INSERT INTO `jt_web_log` VALUES ('1167', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525886383');
INSERT INTO `jt_web_log` VALUES ('1168', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525886403');
INSERT INTO `jt_web_log` VALUES ('1169', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525886410');
INSERT INTO `jt_web_log` VALUES ('1170', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525886412');
INSERT INTO `jt_web_log` VALUES ('1171', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525886415');
INSERT INTO `jt_web_log` VALUES ('1172', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525886417');
INSERT INTO `jt_web_log` VALUES ('1173', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525886419');
INSERT INTO `jt_web_log` VALUES ('1174', '0', '58.214.211.115', '中国 江苏 无锡 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525886421');
INSERT INTO `jt_web_log` VALUES ('1175', '0', '101.199.112.45', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525886460');
INSERT INTO `jt_web_log` VALUES ('1176', '0', '101.199.108.51', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525888951');
INSERT INTO `jt_web_log` VALUES ('1177', '0', '113.10.190.146', '中国 香港  ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1525888981');
INSERT INTO `jt_web_log` VALUES ('1178', '0', '115.60.163.86', '中国 河南 郑州 ', 'Windows 10', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525911722');
INSERT INTO `jt_web_log` VALUES ('1179', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525935527');
INSERT INTO `jt_web_log` VALUES ('1180', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/18.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1525935564');
INSERT INTO `jt_web_log` VALUES ('1181', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525935573');
INSERT INTO `jt_web_log` VALUES ('1182', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525935578');
INSERT INTO `jt_web_log` VALUES ('1183', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525935583');
INSERT INTO `jt_web_log` VALUES ('1184', '0', '123.180.105.222', '中国 河北 邢台 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525935587');
INSERT INTO `jt_web_log` VALUES ('1185', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525942681');
INSERT INTO `jt_web_log` VALUES ('1186', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525942701');
INSERT INTO `jt_web_log` VALUES ('1187', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1525943180');
INSERT INTO `jt_web_log` VALUES ('1188', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1525943209');
INSERT INTO `jt_web_log` VALUES ('1189', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1525943216');
INSERT INTO `jt_web_log` VALUES ('1190', '0', '117.30.140.218', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1525943221');
INSERT INTO `jt_web_log` VALUES ('1191', '0', '117.30.229.102', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1525943225');
INSERT INTO `jt_web_log` VALUES ('1192', '0', '117.30.229.102', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1525943236');
INSERT INTO `jt_web_log` VALUES ('1193', '0', '117.30.229.102', '中国 福建 厦门 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1525943238');
INSERT INTO `jt_web_log` VALUES ('1194', '1', '115.60.161.166', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526088510');
INSERT INTO `jt_web_log` VALUES ('1195', '1', '115.60.161.166', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1526088522');
INSERT INTO `jt_web_log` VALUES ('1196', '0', '114.225.205.179', '中国 江苏 无锡 ', 'Windows 7', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1526088663');
INSERT INTO `jt_web_log` VALUES ('1197', '0', '114.225.205.179', '中国 江苏 无锡 ', 'Windows 7', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1526088668');
INSERT INTO `jt_web_log` VALUES ('1198', '0', '114.225.205.179', '中国 江苏 无锡 ', 'Windows 7', 'IE(11.0)', '/admin/login/runlogin.html', 'admin', 'Login', 'runlogin', 'Ajax', 's:12:\"保密数据\";', '1526088675');
INSERT INTO `jt_web_log` VALUES ('1199', '0', '42.3.230.215', '中国 香港  ', 'Mac', 'Chrome(66.0.3359.139)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526097852');
INSERT INTO `jt_web_log` VALUES ('1200', '0', '42.3.230.215', '中国 香港  ', 'Mac', 'Chrome(66.0.3359.139)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1526097868');
INSERT INTO `jt_web_log` VALUES ('1201', '0', '42.3.230.215', '中国 香港  ', 'Mac', 'Chrome(66.0.3359.139)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1526097870');
INSERT INTO `jt_web_log` VALUES ('1202', '0', '42.3.230.215', '中国 香港  ', 'Mac', 'Chrome(66.0.3359.139)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526097871');
INSERT INTO `jt_web_log` VALUES ('1203', '0', '42.3.230.215', '中国 香港  ', 'Mac', 'Chrome(66.0.3359.139)', '/home/news/index/id/9.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"9\";}', '1526097875');
INSERT INTO `jt_web_log` VALUES ('1204', '0', '59.41.167.106', '中国 广东 广州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526176554');
INSERT INTO `jt_web_log` VALUES ('1205', '0', '59.41.167.106', '中国 广东 广州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526176555');
INSERT INTO `jt_web_log` VALUES ('1206', '0', '59.41.167.106', '中国 广东 广州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1526176559');
INSERT INTO `jt_web_log` VALUES ('1207', '0', '59.41.167.106', '中国 广东 广州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526176562');
INSERT INTO `jt_web_log` VALUES ('1208', '0', '59.41.167.106', '中国 广东 广州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1526176567');
INSERT INTO `jt_web_log` VALUES ('1209', '0', '101.199.108.120', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526196134');
INSERT INTO `jt_web_log` VALUES ('1210', '0', '171.13.14.134', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526196135');
INSERT INTO `jt_web_log` VALUES ('1211', '0', '101.199.108.51', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526196144');
INSERT INTO `jt_web_log` VALUES ('1212', '0', '220.181.132.193', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526196153');
INSERT INTO `jt_web_log` VALUES ('1213', '0', '180.163.220.97', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526196160');
INSERT INTO `jt_web_log` VALUES ('1214', '0', '101.199.108.58', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1526212823');
INSERT INTO `jt_web_log` VALUES ('1215', '0', '171.13.14.149', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1526212824');
INSERT INTO `jt_web_log` VALUES ('1216', '0', '112.5.204.46', '中国 福建  ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526225215');
INSERT INTO `jt_web_log` VALUES ('1217', '0', '1.193.203.231', '中国 河南 周口 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526284245');
INSERT INTO `jt_web_log` VALUES ('1218', '0', '112.113.148.179', '中国 云南 保山 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526352809');
INSERT INTO `jt_web_log` VALUES ('1219', '0', '114.221.76.26', '中国 江苏 南京 ', 'Windows 7', 'Chrome(64.0.3282.186)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526455066');
INSERT INTO `jt_web_log` VALUES ('1220', '0', '114.221.76.26', '中国 江苏 南京 ', 'Windows 7', 'Chrome(64.0.3282.186)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526455154');
INSERT INTO `jt_web_log` VALUES ('1221', '0', '106.120.22.178', '中国 北京 北京 ', 'Windows XP', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526458458');
INSERT INTO `jt_web_log` VALUES ('1222', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526462773');
INSERT INTO `jt_web_log` VALUES ('1223', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1526462782');
INSERT INTO `jt_web_log` VALUES ('1224', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526462784');
INSERT INTO `jt_web_log` VALUES ('1225', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1526462785');
INSERT INTO `jt_web_log` VALUES ('1226', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1526462787');
INSERT INTO `jt_web_log` VALUES ('1227', '0', '58.57.136.19', '中国 山东 东营 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1526462788');
INSERT INTO `jt_web_log` VALUES ('1228', '0', '123.150.64.247', '中国 天津 天津 ', 'Windows NT', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526462938');
INSERT INTO `jt_web_log` VALUES ('1229', '0', '123.150.64.247', '中国 天津 天津 ', 'Windows NT', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1526462939');
INSERT INTO `jt_web_log` VALUES ('1230', '0', '101.199.112.53', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526466055');
INSERT INTO `jt_web_log` VALUES ('1231', '0', '180.163.220.43', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526466062');
INSERT INTO `jt_web_log` VALUES ('1232', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526629381');
INSERT INTO `jt_web_log` VALUES ('1233', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526629396');
INSERT INTO `jt_web_log` VALUES ('1234', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1526629400');
INSERT INTO `jt_web_log` VALUES ('1235', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1526629402');
INSERT INTO `jt_web_log` VALUES ('1236', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1526629403');
INSERT INTO `jt_web_log` VALUES ('1237', '0', '113.87.43.54', '中国 广东 深圳 ', 'Windows 10', 'Chrome(66.0.3359.139)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1526629466');
INSERT INTO `jt_web_log` VALUES ('1238', '0', '171.38.205.106', '中国 广西 钦州 ', 'Windows 7', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526664604');
INSERT INTO `jt_web_log` VALUES ('1239', '0', '42.238.124.198', '中国 河南 濮阳 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1526730437');
INSERT INTO `jt_web_log` VALUES ('1240', '0', '115.213.239.47', '中国 浙江 丽水 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527149490');
INSERT INTO `jt_web_log` VALUES ('1241', '0', '114.102.185.210', '中国 安徽 宿州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527216879');
INSERT INTO `jt_web_log` VALUES ('1242', '0', '218.91.161.48', '中国 江苏 南通 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527311078');
INSERT INTO `jt_web_log` VALUES ('1243', '0', '218.91.161.48', '中国 江苏 南通 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527311089');
INSERT INTO `jt_web_log` VALUES ('1244', '0', '218.91.161.48', '中国 江苏 南通 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1527311092');
INSERT INTO `jt_web_log` VALUES ('1245', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527666083');
INSERT INTO `jt_web_log` VALUES ('1246', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527666110');
INSERT INTO `jt_web_log` VALUES ('1247', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527666114');
INSERT INTO `jt_web_log` VALUES ('1248', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527666119');
INSERT INTO `jt_web_log` VALUES ('1249', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1527666120');
INSERT INTO `jt_web_log` VALUES ('1250', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1527666121');
INSERT INTO `jt_web_log` VALUES ('1251', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527666122');
INSERT INTO `jt_web_log` VALUES ('1252', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1527666123');
INSERT INTO `jt_web_log` VALUES ('1253', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1527666127');
INSERT INTO `jt_web_log` VALUES ('1254', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1527666129');
INSERT INTO `jt_web_log` VALUES ('1255', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1527666132');
INSERT INTO `jt_web_log` VALUES ('1256', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Chrome(63.0.3239.26)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527666134');
INSERT INTO `jt_web_log` VALUES ('1257', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527668590');
INSERT INTO `jt_web_log` VALUES ('1258', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527668597');
INSERT INTO `jt_web_log` VALUES ('1259', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1527668599');
INSERT INTO `jt_web_log` VALUES ('1260', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527668600');
INSERT INTO `jt_web_log` VALUES ('1261', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527668600');
INSERT INTO `jt_web_log` VALUES ('1262', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1527668605');
INSERT INTO `jt_web_log` VALUES ('1263', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527668610');
INSERT INTO `jt_web_log` VALUES ('1264', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527668645');
INSERT INTO `jt_web_log` VALUES ('1265', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1527668648');
INSERT INTO `jt_web_log` VALUES ('1266', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1527668663');
INSERT INTO `jt_web_log` VALUES ('1267', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527668666');
INSERT INTO `jt_web_log` VALUES ('1268', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1527668668');
INSERT INTO `jt_web_log` VALUES ('1269', '0', '183.166.205.55', '中国 安徽 亳州 ', 'Mac', 'Chrome(66.0.3359.181)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1527668672');
INSERT INTO `jt_web_log` VALUES ('1270', '0', '14.155.159.177', '中国 广东 深圳 ', 'Windows 10', 'Firefox(60.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527673879');
INSERT INTO `jt_web_log` VALUES ('1271', '0', '14.155.159.177', '中国 广东 深圳 ', 'Linux', 'Chrome(63.0.3239.26)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527673895');
INSERT INTO `jt_web_log` VALUES ('1272', '0', '111.196.83.73', '中国 北京 北京 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527771964');
INSERT INTO `jt_web_log` VALUES ('1273', '0', '1.29.190.33', '中国 内蒙古 兴安盟 ', 'Windows 98', 'Chrome(57.0.2987.98)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527836553');
INSERT INTO `jt_web_log` VALUES ('1274', '0', '116.2.224.222', '中国 辽宁 沈阳 ', 'Windows 95', 'Chrome(39.0.2171.95)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527837069');
INSERT INTO `jt_web_log` VALUES ('1275', '0', '223.166.115.5', '中国 上海 上海 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527916329');
INSERT INTO `jt_web_log` VALUES ('1276', '0', '116.2.226.84', '中国 辽宁 沈阳 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527925172');
INSERT INTO `jt_web_log` VALUES ('1277', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527943676');
INSERT INTO `jt_web_log` VALUES ('1278', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527943683');
INSERT INTO `jt_web_log` VALUES ('1279', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1527943684');
INSERT INTO `jt_web_log` VALUES ('1280', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527943687');
INSERT INTO `jt_web_log` VALUES ('1281', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/news/index/id/20.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"20\";}', '1527943689');
INSERT INTO `jt_web_log` VALUES ('1282', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527943691');
INSERT INTO `jt_web_log` VALUES ('1283', '0', '117.87.224.249', '中国 江苏 徐州 ', 'Windows 10', 'Chrome(53.0.2785.104)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527943692');
INSERT INTO `jt_web_log` VALUES ('1284', '0', '58.18.228.68', '中国 内蒙古 呼伦贝尔 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527992621');
INSERT INTO `jt_web_log` VALUES ('1285', '0', '106.11.223.53', '中国 广东 深圳 ', 'Linux', 'Safari(534.30)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527992651');
INSERT INTO `jt_web_log` VALUES ('1286', '0', '58.18.228.68', '中国 内蒙古 呼伦贝尔 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527992864');
INSERT INTO `jt_web_log` VALUES ('1287', '0', '58.18.228.68', '中国 内蒙古 呼伦贝尔 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527992892');
INSERT INTO `jt_web_log` VALUES ('1288', '0', '58.18.228.68', '中国 内蒙古 呼伦贝尔 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1527994667');
INSERT INTO `jt_web_log` VALUES ('1289', '0', '58.18.228.68', '中国 内蒙古 呼伦贝尔 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527994677');
INSERT INTO `jt_web_log` VALUES ('1290', '0', '1.27.49.70', '中国 内蒙古 呼和浩特 ', 'Windows 10', 'Chrome(65.0.3325.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527997883');
INSERT INTO `jt_web_log` VALUES ('1291', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1527998023');
INSERT INTO `jt_web_log` VALUES ('1292', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/news/index/id/5.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1527998028');
INSERT INTO `jt_web_log` VALUES ('1293', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1527998031');
INSERT INTO `jt_web_log` VALUES ('1294', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1527998034');
INSERT INTO `jt_web_log` VALUES ('1295', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1527998036');
INSERT INTO `jt_web_log` VALUES ('1296', '0', '14.153.203.16', '中国 广东 深圳 ', 'Windows 7', 'Chrome(58.0.3029.110)', '/home/news/index/id/15.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1527998038');
INSERT INTO `jt_web_log` VALUES ('1297', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528009898');
INSERT INTO `jt_web_log` VALUES ('1298', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528009941');
INSERT INTO `jt_web_log` VALUES ('1299', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528009943');
INSERT INTO `jt_web_log` VALUES ('1300', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1528009947');
INSERT INTO `jt_web_log` VALUES ('1301', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528009952');
INSERT INTO `jt_web_log` VALUES ('1302', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/news/index/id/27.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"27\";}', '1528009956');
INSERT INTO `jt_web_log` VALUES ('1303', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528009958');
INSERT INTO `jt_web_log` VALUES ('1304', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/18.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"18\";}', '1528009964');
INSERT INTO `jt_web_log` VALUES ('1305', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528009969');
INSERT INTO `jt_web_log` VALUES ('1306', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528010005');
INSERT INTO `jt_web_log` VALUES ('1307', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528010032');
INSERT INTO `jt_web_log` VALUES ('1308', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html?page=2', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"2\";s:2:\"id\";s:1:\"1\";}', '1528010036');
INSERT INTO `jt_web_log` VALUES ('1309', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/1.html?page=1', 'home', 'Listn', 'index', 'Ajax', 'a:2:{s:4:\"page\";s:1:\"1\";s:2:\"id\";s:1:\"1\";}', '1528010039');
INSERT INTO `jt_web_log` VALUES ('1310', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528010041');
INSERT INTO `jt_web_log` VALUES ('1311', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528010046');
INSERT INTO `jt_web_log` VALUES ('1312', '0', '222.140.137.220', '中国 河南 信阳 ', 'Windows 7', 'Chrome(63.0.3239.132)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528010048');
INSERT INTO `jt_web_log` VALUES ('1313', '0', '220.181.132.200', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528011826');
INSERT INTO `jt_web_log` VALUES ('1314', '0', '220.181.132.198', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528011833');
INSERT INTO `jt_web_log` VALUES ('1315', '0', '101.199.112.51', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528013766');
INSERT INTO `jt_web_log` VALUES ('1316', '0', '101.199.112.45', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528013781');
INSERT INTO `jt_web_log` VALUES ('1317', '0', '180.163.220.45', '中国 上海 上海 ', 'Windows 7', 'Chrome(50.0.2661.102)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528013786');
INSERT INTO `jt_web_log` VALUES ('1318', '0', '101.199.108.120', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528018143');
INSERT INTO `jt_web_log` VALUES ('1319', '0', '220.181.132.198', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528021352');
INSERT INTO `jt_web_log` VALUES ('1320', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528097433');
INSERT INTO `jt_web_log` VALUES ('1321', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528097444');
INSERT INTO `jt_web_log` VALUES ('1322', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528097446');
INSERT INTO `jt_web_log` VALUES ('1323', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1528097448');
INSERT INTO `jt_web_log` VALUES ('1324', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1528097451');
INSERT INTO `jt_web_log` VALUES ('1325', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528097454');
INSERT INTO `jt_web_log` VALUES ('1326', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1528097456');
INSERT INTO `jt_web_log` VALUES ('1327', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1528097459');
INSERT INTO `jt_web_log` VALUES ('1328', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528097461');
INSERT INTO `jt_web_log` VALUES ('1329', '0', '113.116.116.195', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528097464');
INSERT INTO `jt_web_log` VALUES ('1330', '0', '101.199.108.120', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528129983');
INSERT INTO `jt_web_log` VALUES ('1331', '0', '106.45.111.192', '中国 宁夏 银川 ', 'Windows 10', 'Chrome(66.0.3359.181)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528187591');
INSERT INTO `jt_web_log` VALUES ('1332', '0', '14.155.158.167', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528189802');
INSERT INTO `jt_web_log` VALUES ('1333', '0', '14.155.158.167', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528189809');
INSERT INTO `jt_web_log` VALUES ('1334', '0', '14.155.158.167', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528189812');
INSERT INTO `jt_web_log` VALUES ('1335', '0', '14.155.158.167', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528189815');
INSERT INTO `jt_web_log` VALUES ('1336', '0', '101.199.112.49', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528191215');
INSERT INTO `jt_web_log` VALUES ('1337', '0', '14.155.158.167', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528191430');
INSERT INTO `jt_web_log` VALUES ('1338', '0', '183.50.99.71', '中国 广东 湛江 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528196963');
INSERT INTO `jt_web_log` VALUES ('1339', '0', '183.50.99.71', '中国 广东 湛江 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528197018');
INSERT INTO `jt_web_log` VALUES ('1340', '0', '183.50.99.71', '中国 广东 湛江 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/home/news/index/id/6.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528197025');
INSERT INTO `jt_web_log` VALUES ('1341', '0', '27.187.58.192', '中国 河北 保定 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528202857');
INSERT INTO `jt_web_log` VALUES ('1342', '0', '220.181.132.193', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528204673');
INSERT INTO `jt_web_log` VALUES ('1343', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528339608');
INSERT INTO `jt_web_log` VALUES ('1344', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1528340252');
INSERT INTO `jt_web_log` VALUES ('1345', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528340259');
INSERT INTO `jt_web_log` VALUES ('1346', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528340261');
INSERT INTO `jt_web_log` VALUES ('1347', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528340263');
INSERT INTO `jt_web_log` VALUES ('1348', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528340266');
INSERT INTO `jt_web_log` VALUES ('1349', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1528340281');
INSERT INTO `jt_web_log` VALUES ('1350', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1528340284');
INSERT INTO `jt_web_log` VALUES ('1351', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528340288');
INSERT INTO `jt_web_log` VALUES ('1352', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/index/index.html', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528340292');
INSERT INTO `jt_web_log` VALUES ('1353', '0', '101.199.112.45', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528341972');
INSERT INTO `jt_web_log` VALUES ('1354', '0', '182.118.20.149', '中国 河南 郑州 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528341973');
INSERT INTO `jt_web_log` VALUES ('1355', '0', '220.181.132.194', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528342444');
INSERT INTO `jt_web_log` VALUES ('1356', '0', '171.13.14.151', '中国 河南 洛阳 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528342451');
INSERT INTO `jt_web_log` VALUES ('1357', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528343493');
INSERT INTO `jt_web_log` VALUES ('1358', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528343513');
INSERT INTO `jt_web_log` VALUES ('1359', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528343638');
INSERT INTO `jt_web_log` VALUES ('1360', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528343640');
INSERT INTO `jt_web_log` VALUES ('1361', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528343694');
INSERT INTO `jt_web_log` VALUES ('1362', '0', '101.199.110.111', '中国 北京 北京 ', 'Linux', 'Opera(11.2.3.102637)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528351929');
INSERT INTO `jt_web_log` VALUES ('1363', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528354391');
INSERT INTO `jt_web_log` VALUES ('1364', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528354397');
INSERT INTO `jt_web_log` VALUES ('1365', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528354401');
INSERT INTO `jt_web_log` VALUES ('1366', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/news/index/id/10.html', 'home', 'News', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"10\";}', '1528354405');
INSERT INTO `jt_web_log` VALUES ('1367', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1528354418');
INSERT INTO `jt_web_log` VALUES ('1368', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528354422');
INSERT INTO `jt_web_log` VALUES ('1369', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528354424');
INSERT INTO `jt_web_log` VALUES ('1370', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528354426');
INSERT INTO `jt_web_log` VALUES ('1371', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Chrome(55.0.2883.87)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528354433');
INSERT INTO `jt_web_log` VALUES ('1372', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528356247');
INSERT INTO `jt_web_log` VALUES ('1373', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/1.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528356251');
INSERT INTO `jt_web_log` VALUES ('1374', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528356252');
INSERT INTO `jt_web_log` VALUES ('1375', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528356253');
INSERT INTO `jt_web_log` VALUES ('1376', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/3.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1528356257');
INSERT INTO `jt_web_log` VALUES ('1377', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/6.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"6\";}', '1528356258');
INSERT INTO `jt_web_log` VALUES ('1378', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/16.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"16\";}', '1528356259');
INSERT INTO `jt_web_log` VALUES ('1379', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/4.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"4\";}', '1528356260');
INSERT INTO `jt_web_log` VALUES ('1380', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/15.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:2:\"15\";}', '1528356262');
INSERT INTO `jt_web_log` VALUES ('1381', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/5.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"5\";}', '1528356262');
INSERT INTO `jt_web_log` VALUES ('1382', '0', '112.9.106.168', '中国 山东 青岛 ', 'Windows 10', 'Firefox(60.0)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528356263');
INSERT INTO `jt_web_log` VALUES ('1383', '0', '101.199.108.118', '中国 北京 北京 ', 'Windows 98', 'Chrome(36.0.1985.125)', '/home/listn/index/id/2.html', 'home', 'Listn', 'index', 'Ajax', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1528358383');
INSERT INTO `jt_web_log` VALUES ('1384', '0', '221.182.96.220', '中国 四川 凉山彝族自治州 ', 'Windows 7', 'Firefox(59.0)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528423526');
INSERT INTO `jt_web_log` VALUES ('1385', '0', '113.116.116.85', '中国 广东 深圳 ', 'Windows 10', 'Chrome(55.0.2883.87)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528428138');
INSERT INTO `jt_web_log` VALUES ('1386', '0', '115.60.166.51', '中国 河南 郑州 ', 'Windows 10', 'Chrome(57.0.2979.2)', '/', 'home', 'Index', 'index', 'Ajax', 'a:0:{}', '1528428833');
