/*
Navicat MySQL Data Transfer

Source Server         : helloDjango
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : foodbox

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2016-06-06 15:43:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can add mlogin', '8', 'add_mlogin');
INSERT INTO `auth_permission` VALUES ('23', 'Can change mlogin', '8', 'change_mlogin');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete mlogin', '8', 'delete_mlogin');
INSERT INTO `auth_permission` VALUES ('28', 'Can add message post', '10', 'add_messagepost');
INSERT INTO `auth_permission` VALUES ('29', 'Can change message post', '10', 'change_messagepost');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete message post', '10', 'delete_messagepost');
INSERT INTO `auth_permission` VALUES ('31', 'Can add first restaurant', '11', 'add_firstrestaurant');
INSERT INTO `auth_permission` VALUES ('32', 'Can change first restaurant', '11', 'change_firstrestaurant');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete first restaurant', '11', 'delete_firstrestaurant');
INSERT INTO `auth_permission` VALUES ('34', 'Can add second restaurant', '12', 'add_secondrestaurant');
INSERT INTO `auth_permission` VALUES ('35', 'Can change second restaurant', '12', 'change_secondrestaurant');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete second restaurant', '12', 'delete_secondrestaurant');
INSERT INTO `auth_permission` VALUES ('37', 'Can add first message', '13', 'add_firstmessage');
INSERT INTO `auth_permission` VALUES ('38', 'Can change first message', '13', 'change_firstmessage');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete first message', '13', 'delete_firstmessage');
INSERT INTO `auth_permission` VALUES ('40', 'Can add second message', '14', 'add_secondmessage');
INSERT INTO `auth_permission` VALUES ('41', 'Can change second message', '14', 'change_secondmessage');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete second message', '14', 'delete_secondmessage');
INSERT INTO `auth_permission` VALUES ('43', 'Can add details', '15', 'add_details');
INSERT INTO `auth_permission` VALUES ('44', 'Can change details', '15', 'change_details');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete details', '15', 'delete_details');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$UqEGKylAOuDS$OdxTcr7NvuRJKEnyFQLNJgHSedp/5xH/NI2cfQIp3vw=', '2016-05-29 10:38:31', '1', 'zhen', '', '', '842618916@qq.com', '1', '1', '2016-04-26 08:32:38');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `chicken_firstmessage`
-- ----------------------------
DROP TABLE IF EXISTS `chicken_firstmessage`;
CREATE TABLE `chicken_firstmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chicken_firstmessage
-- ----------------------------
INSERT INTO `chicken_firstmessage` VALUES ('1', 0xE5A5BDE59083, '2016-05-28 08:59:31');
INSERT INTO `chicken_firstmessage` VALUES ('2', 0xE4B88DE5A5BDE59083, '2016-05-28 09:00:46');
INSERT INTO `chicken_firstmessage` VALUES ('6', 0xE4B88DE5A682E4BAA4E999A2E9A39FE5A082E79A84E88F9CE5A5BDE59083EFBC8120, '2016-05-28 09:39:11');

-- ----------------------------
-- Table structure for `chicken_firstrestaurant`
-- ----------------------------
DROP TABLE IF EXISTS `chicken_firstrestaurant`;
CREATE TABLE `chicken_firstrestaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21) COLLATE utf8_bin NOT NULL,
  `price` varchar(10) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `introduction` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chicken_firstrestaurant
-- ----------------------------
INSERT INTO `chicken_firstrestaurant` VALUES ('1', '风味儿茄子', '￥12', '2016-05-26 03:35:54', '2016-05-26 03:36:28', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('2', '糖醋里脊', '￥22', '2016-05-26 03:36:22', '2016-05-26 03:36:22', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('3', '木桶饭', '￥8', '2016-05-26 04:11:59', '2016-05-26 04:11:59', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('4', '小鸡仔儿', '不要钱', '2016-05-26 04:12:14', '2016-05-26 04:42:31', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('5', '小笼蒸包', '￥8', '2016-05-26 04:12:51', '2016-05-26 04:12:51', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('6', '水饺', '￥0.4/个', '2016-05-26 04:15:20', '2016-05-26 04:15:20', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('7', '烤肠', '￥2/根', '2016-05-26 04:15:39', '2016-05-26 04:15:39', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_firstrestaurant` VALUES ('8', '鱼香肉丝', '￥7', '2016-05-26 04:16:05', '2016-05-26 04:16:05', 0xE9B281E5A4A7E7ACACE4B880E9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);

-- ----------------------------
-- Table structure for `chicken_mlogin`
-- ----------------------------
DROP TABLE IF EXISTS `chicken_mlogin`;
CREATE TABLE `chicken_mlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `password` varchar(21) COLLATE utf8_bin NOT NULL,
  `name` varchar(21) COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chicken_mlogin
-- ----------------------------
INSERT INTO `chicken_mlogin` VALUES ('1', '2416139479@qq.com', '2016-05-24 11:08:01', '2016-05-31 13:59:49', 'fzz19951106', '张梦迪');
INSERT INTO `chicken_mlogin` VALUES ('4', '1451287617@qq.com', '2016-05-26 02:04:03', '2016-05-26 02:04:03', '123', null);
INSERT INTO `chicken_mlogin` VALUES ('6', '842618916@qq.com', '2016-05-29 10:35:53', '2016-05-29 10:35:53', 'password', '范泽朕');
INSERT INTO `chicken_mlogin` VALUES ('9', '543255070@qq.com', '2016-05-29 11:45:51', '2016-05-29 11:45:51', '543255070', '李双双');
INSERT INTO `chicken_mlogin` VALUES ('10', '1451287617@qq.com', '2016-05-29 11:47:15', '2016-05-29 11:47:15', '1451287617', '屈冬霞');
INSERT INTO `chicken_mlogin` VALUES ('11', '1042822230@qq.com', '2016-05-29 11:50:07', '2016-05-29 11:50:07', '1042822230', 'Ms.乖');
INSERT INTO `chicken_mlogin` VALUES ('30', '2303115354@qq.com', '2016-05-31 12:41:25', '2016-05-31 12:41:57', '123', '朱迪');
INSERT INTO `chicken_mlogin` VALUES ('32', '1159699442@qq.com', '2016-06-06 06:33:11', '2016-06-06 06:33:24', '1159699442', '阿超');
INSERT INTO `chicken_mlogin` VALUES ('34', '824284257@qq.com', '2016-06-06 07:14:45', '2016-06-06 07:14:45', '824284257', '阿凡');
INSERT INTO `chicken_mlogin` VALUES ('35', '1146697478@qq.com', '2016-06-06 07:20:58', '2016-06-06 07:20:58', '1146697478', '阿杰');

-- ----------------------------
-- Table structure for `chicken_secondmessage`
-- ----------------------------
DROP TABLE IF EXISTS `chicken_secondmessage`;
CREATE TABLE `chicken_secondmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chicken_secondmessage
-- ----------------------------
INSERT INTO `chicken_secondmessage` VALUES ('1', 0xE79C9FE698AFE6AF8FE4B8AAE9A39FE5A082E983BDE6AF94E4BAA4E999A2E5A5BDE5958AEFBC81, '2016-05-28 10:47:57');
INSERT INTO `chicken_secondmessage` VALUES ('2', 0x31, '2016-05-28 10:48:10');

-- ----------------------------
-- Table structure for `chicken_secondrestaurant`
-- ----------------------------
DROP TABLE IF EXISTS `chicken_secondrestaurant`;
CREATE TABLE `chicken_secondrestaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21) COLLATE utf8_bin NOT NULL,
  `price` varchar(10) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `introduction` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chicken_secondrestaurant
-- ----------------------------
INSERT INTO `chicken_secondrestaurant` VALUES ('1', '油条', '￥1/根', '2016-05-26 09:53:14', '2016-05-29 04:45:16', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_secondrestaurant` VALUES ('2', '牛肉拉面', '￥9', '2016-05-26 09:53:34', '2016-05-29 04:45:11', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_secondrestaurant` VALUES ('3', '豆浆', '￥1.5', '2016-05-26 09:53:50', '2016-05-29 04:44:57', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_secondrestaurant` VALUES ('4', '粥', '￥1.5', '2016-05-26 09:54:02', '2016-05-29 04:44:53', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_secondrestaurant` VALUES ('5', '油饼', '￥1.5', '2016-05-26 09:54:13', '2016-05-29 04:44:49', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);
INSERT INTO `chicken_secondrestaurant` VALUES ('6', '茄子', '￥5', '2016-05-26 09:54:45', '2016-05-29 04:44:42', 0xE9B281E5A4A7E7ACACE4BA8CE9A490E58E85E7BB8FE585B8E7BE8EE9A39FEFBC81);

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2016-04-26 08:33:30', 0x31, 'ChickenPost object', '1', 0x41646465642E, null, '1');
INSERT INTO `django_admin_log` VALUES ('2', '2016-05-24 13:06:55', 0x31, 'MessagePost object', '1', 0x41646465642E, '10', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2016-05-24 13:38:55', 0x31, '123@qq.com', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2016-05-25 01:22:28', 0x31, '123@qq.com', '2', 0xE5B7B2E4BFAEE694B920636F6E74656E7420E5928C206E616D6520E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2016-05-25 01:31:06', 0x31, '123@qq.com', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2016-05-25 01:31:11', 0x32, '', '1', 0x41646465642E, '10', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2016-05-25 01:31:32', 0x33, '', '1', 0x41646465642E, '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2016-05-25 11:05:01', 0x36, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2016-05-25 11:05:01', 0x35, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2016-05-25 11:05:01', 0x34, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2016-05-25 11:05:01', 0x33, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2016-05-25 11:05:01', 0x32, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2016-05-25 12:04:01', 0x3139, '2', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2016-05-25 12:04:01', 0x3138, 'a', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2016-05-25 12:04:01', 0x3137, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2016-05-25 12:04:01', 0x3136, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2016-05-25 12:04:01', 0x3135, 'q', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2016-05-25 12:04:01', 0x3134, 'a', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2016-05-25 12:04:01', 0x3132, '0', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2016-05-25 12:04:01', 0x3131, '啊1@qq.com', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2016-05-25 12:04:01', 0x3130, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2016-05-25 12:04:01', 0x39, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2016-05-25 12:04:01', 0x38, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2016-05-26 02:02:03', 0x3237, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2016-05-26 02:02:03', 0x3235, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2016-05-26 03:35:54', 0x31, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2016-05-26 03:36:22', 0x32, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2016-05-26 03:36:28', 0x31, 'FirstRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E5928C20707269636520E38082, '11', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2016-05-26 04:11:59', 0x33, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2016-05-26 04:12:14', 0x34, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2016-05-26 04:12:51', 0x35, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2016-05-26 04:15:20', 0x36, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2016-05-26 04:15:39', 0x37, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2016-05-26 04:16:05', 0x38, 'FirstRestaurant object', '1', 0x41646465642E, '11', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2016-05-26 04:42:31', 0x34, 'FirstRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E5928C20707269636520E38082, '11', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2016-05-26 09:53:14', 0x31, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2016-05-26 09:53:34', 0x32, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2016-05-26 09:53:50', 0x33, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2016-05-26 09:54:02', 0x34, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2016-05-26 09:54:13', 0x35, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2016-05-26 09:54:45', 0x36, 'SecondRestaurant object', '1', 0x41646465642E, '12', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2016-05-26 15:10:25', 0x3330, '阿迪2416139479@qq.com', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2016-05-28 08:59:31', 0x31, 'FirstMessage object', '1', 0x41646465642E, '13', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2016-05-28 09:00:46', 0x32, 'FirstMessage object', '1', 0x41646465642E, '13', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2016-05-28 09:10:41', 0x35, 'FirstMessage object', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2016-05-28 09:10:41', 0x34, 'FirstMessage object', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2016-05-28 09:39:24', 0x33, 'FirstMessage object', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2016-05-28 10:47:48', 0x37, 'FirstMessage object', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2016-05-29 04:44:40', 0x36, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2016-05-29 04:44:42', 0x36, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E5928C20707269636520E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2016-05-29 04:44:49', 0x35, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2016-05-29 04:44:53', 0x34, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2016-05-29 04:44:57', 0x33, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2016-05-29 04:45:01', 0x32, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2016-05-29 04:45:11', 0x32, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E5928C20707269636520E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2016-05-29 04:45:16', 0x31, 'SecondRestaurant object', '2', 0xE5B7B2E4BFAEE694B9206E616D65EFBC8C707269636520E5928C20696E74726F64756374696F6E20E38082, '12', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2016-05-29 10:28:23', 0x38, 'FirstMessage object', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2016-05-29 10:29:15', 0x35, '842618916@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2016-05-29 10:38:45', 0x38, '842618916@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2016-05-29 10:38:45', 0x37, '842618916@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2016-05-29 10:38:49', 0x33, '123@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2016-05-29 10:39:11', 0x32, '2416139479@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2016-05-29 11:12:48', 0x31, 'Details object', '1', 0x41646465642E, '15', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2016-05-29 11:20:51', 0x31, 'Details object', '2', 0xE5B7B2E4BFAEE694B9206469726563746F7231EFBC8C6469726563746F723220E5928C20703220E38082, '15', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2016-05-29 11:24:12', 0x31, 'Web Master', '2', 0xE5B7B2E4BFAEE694B9206469726563746F723120E5928C206469726563746F723220E38082, '15', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2016-05-29 11:25:33', 0x32, 'Feedback Function', '1', 0x41646465642E, '15', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2016-05-29 11:26:32', 0x33, 'Message Function', '1', 0x41646465642E, '15', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2016-05-29 11:27:12', 0x31, 'Web Master', '2', 0xE5B7B2E4BFAEE694B9206469726563746F7231EFBC8C6469726563746F723220E5928C206461746520E38082, '15', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2016-05-29 12:21:51', 0x3238, '555@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2016-05-29 12:21:51', 0x3237, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2016-05-29 12:21:51', 0x3236, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2016-05-29 12:21:51', 0x3235, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2016-05-29 12:21:51', 0x3234, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2016-05-29 12:21:51', 0x3233, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2016-05-29 12:21:51', 0x3232, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2016-05-29 12:21:51', 0x3231, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2016-05-29 12:21:51', 0x3230, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2016-05-29 12:21:51', 0x3139, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2016-05-29 12:21:51', 0x3138, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2016-05-29 12:21:51', 0x3137, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2016-05-29 12:21:51', 0x3136, '222@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2016-05-29 12:21:51', 0x3135, '123@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2016-05-29 12:21:51', 0x3134, '123@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2016-05-29 12:21:51', 0x3133, '123@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2016-05-29 12:21:51', 0x3132, '123@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2016-05-29 12:24:13', 0x3239, '555@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2016-05-29 12:30:52', 0x3331, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2016-05-29 12:31:00', 0x3233, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2016-05-29 12:34:30', 0x3238, '霞霞', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('90', '2016-05-29 12:35:51', 0x3332, '', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('91', '2016-05-29 12:46:41', 0x3333, '( 匿名 )', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E5928C20636F6E74656E7420E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('92', '2016-05-29 12:48:17', 0x3335, '( 匿名 )', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('93', '2016-05-29 12:48:17', 0x3333, '( 匿名 )', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('94', '2016-05-29 12:48:17', 0x3334, '（匿名）', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('95', '2016-05-29 12:49:45', 0x3239, '', '2', 0xE6B2A1E69C89E5AD97E6AEB5E8A2ABE4BFAEE694B9E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('96', '2016-05-29 12:50:27', 0x3330, '双双', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '10', '1');
INSERT INTO `django_admin_log` VALUES ('97', '2016-05-31 12:41:57', 0x3330, '2303115354@qq.com', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '8', '1');
INSERT INTO `django_admin_log` VALUES ('98', '2016-05-31 13:29:55', 0x3339, '123', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('99', '2016-05-31 13:29:55', 0x3338, '(匿名)', '3', '', '10', '1');
INSERT INTO `django_admin_log` VALUES ('100', '2016-05-31 13:59:36', 0x31, '2416139479@qq.com', '2', 0xE6B2A1E69C89E5AD97E6AEB5E8A2ABE4BFAEE694B9E38082, '8', '1');
INSERT INTO `django_admin_log` VALUES ('101', '2016-05-31 13:59:49', 0x31, '2416139479@qq.com', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '8', '1');
INSERT INTO `django_admin_log` VALUES ('102', '2016-06-06 06:18:08', 0x3331, '88888888@qq.com', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('103', '2016-06-06 06:33:24', 0x3332, '1159699442@qq.com', '2', 0xE5B7B2E4BFAEE694B9206E616D6520E38082, '8', '1');
INSERT INTO `django_admin_log` VALUES ('104', '2016-06-06 07:14:58', 0x3333, '824284257@qq.com', '3', '', '8', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('13', 'chicken', 'firstmessage');
INSERT INTO `django_content_type` VALUES ('11', 'chicken', 'firstrestaurant');
INSERT INTO `django_content_type` VALUES ('8', 'chicken', 'mlogin');
INSERT INTO `django_content_type` VALUES ('14', 'chicken', 'secondmessage');
INSERT INTO `django_content_type` VALUES ('12', 'chicken', 'secondrestaurant');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'introduction', 'details');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('10', 'untitled', 'messagepost');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2016-04-16 03:30:07');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2016-04-16 03:30:08');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2016-04-16 03:30:09');
INSERT INTO `django_migrations` VALUES ('13', 'chicken', '0001_initial', '2016-04-16 03:30:22');
INSERT INTO `django_migrations` VALUES ('14', 'chicken', '0002_mlogin', '2016-05-24 09:41:32');
INSERT INTO `django_migrations` VALUES ('15', 'chicken', '0003_mlogin_password', '2016-05-24 11:07:39');
INSERT INTO `django_migrations` VALUES ('16', 'chicken', '0004_messagepost', '2016-05-24 12:49:09');
INSERT INTO `django_migrations` VALUES ('17', 'chicken', '0005_delete_messagepost', '2016-05-24 13:05:07');
INSERT INTO `django_migrations` VALUES ('18', 'untitled', '0001_initial', '2016-05-24 13:05:07');
INSERT INTO `django_migrations` VALUES ('19', 'untitled', '0002_auto_20160524_2138', '2016-05-24 13:38:28');
INSERT INTO `django_migrations` VALUES ('20', 'chicken', '0006_auto_20160526_1134', '2016-05-26 03:35:12');
INSERT INTO `django_migrations` VALUES ('21', 'untitled', '0003_auto_20160526_1134', '2016-05-26 03:35:12');
INSERT INTO `django_migrations` VALUES ('22', 'chicken', '0007_auto_20160526_1150', '2016-05-26 03:51:05');
INSERT INTO `django_migrations` VALUES ('23', 'chicken', '0008_auto_20160526_1214', '2016-05-26 04:14:55');
INSERT INTO `django_migrations` VALUES ('24', 'chicken', '0009_firstmessage', '2016-05-28 08:58:14');
INSERT INTO `django_migrations` VALUES ('25', 'chicken', '0010_auto_20160528_1700', '2016-05-28 09:00:32');
INSERT INTO `django_migrations` VALUES ('26', 'chicken', '0011_secondmessage', '2016-05-28 10:00:36');
INSERT INTO `django_migrations` VALUES ('27', 'chicken', '0012_auto_20160529_1241', '2016-05-29 04:42:03');
INSERT INTO `django_migrations` VALUES ('28', 'chicken', '0013_auto_20160529_1910', '2016-05-29 11:10:11');
INSERT INTO `django_migrations` VALUES ('29', 'introduction', '0001_initial', '2016-05-29 11:10:11');
INSERT INTO `django_migrations` VALUES ('30', 'introduction', '0002_auto_20160529_1919', '2016-05-29 11:20:02');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('8rksra289n4fet6w3wnxbifjft64dg32', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-06-08 11:04:15');
INSERT INTO `django_session` VALUES ('d8fapd1wnru91m0jlvrd91t1wddl4yn8', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-06-07 09:40:03');
INSERT INTO `django_session` VALUES ('ku1pg3i8jvjara7emygdrrcfb78fc8yr', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-06-09 02:01:30');
INSERT INTO `django_session` VALUES ('qle4uk3qoorcfs6mqcmllec20tzobzv9', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-05-10 08:32:50');
INSERT INTO `django_session` VALUES ('r0h2d1k95ad7qny0n8w6ipxdgylznfwr', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-05-25 11:56:50');
INSERT INTO `django_session` VALUES ('v4ugvevauxnym9ahrl49qvhx7szf8mgk', 0x4F4463304E5445354E7A466C4D4751324F5467774E7A426C4D32466C4D6A686C5A5459785A544D344D544A6D5A6D4A6C5A445A684E547037496C39686458526F5833567A5A584A666147467A61434936496A466A4D7A4E6D4D4467794D6A466A596D5134597A646C597A63304F4745775A44426A4F5459334F474D34597A566C597A45314F4745694C434A6659585630614639316332567958324A685932746C626D51694F694A6B616D46755A3238755932397564484A70596935686458526F4C6D4A685932746C626D527A4C6B31765A475673516D466A613256755A434973496C39686458526F5833567A5A584A66615751694F694978496E303D, '2016-06-12 10:38:31');

-- ----------------------------
-- Table structure for `introduction_details`
-- ----------------------------
DROP TABLE IF EXISTS `introduction_details`;
CREATE TABLE `introduction_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `director1` varchar(21) COLLATE utf8_bin NOT NULL,
  `href1` varchar(21) COLLATE utf8_bin NOT NULL,
  `director2` varchar(21) COLLATE utf8_bin NOT NULL,
  `href2` varchar(21) COLLATE utf8_bin NOT NULL,
  `header` varchar(21) COLLATE utf8_bin NOT NULL,
  `p1` longtext COLLATE utf8_bin NOT NULL,
  `p2` longtext COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of introduction_details
-- ----------------------------
INSERT INTO `introduction_details` VALUES ('1', '阿朕', 'myprofile', '鸡仔', 'wenprofile', 'Web Master', 0xE68891E4BBACE8BF99E4B8AAE7BE8EE9A39FE7AEA1E79086E7B3BBE7BB9FE68890E7AB8BE4BA8E32303136E5B9B4E79A84E698A5E5A4A9EFBC8C20E5BD93E697B6E68891E4BBACE98089E4BFAEE79A84776562E8AFBEE8A681E6B182E4BBA5E5B08FE7BB84E4B8BAE58D95E4BD8DE5819AE4B880E4B8AAE7AEA1E79086E7B3BBE7BB9FEFBC8C20E68980E4BBA5E68891E4BBACE7BB84E68890E4BA86E5B08FE7BB84E5B9B6E5819AE4BA86E8BF99E4B880E4B8AAE7BE8EE9A39FE7AEA1E79086E7B3BBE7BB9FE38082, 0x54686520666F6F64206D616E6167656D656E742073797374656D207761732065737461626C697368656420696E2074686520737072696E67206F6620323031362C207768656E2077652063686F6F7365207468652077656220636F7572736520726571756972656D656E747320746F2067726F7570206173206120756E697420746F20646F2061206D616E6167656D656E742073797374656D2C20736F20776520666F726D65642061207465616D20616E64206D616465206974206120666F6F64206D616E6167656D656E742073797374656D2E, '2016-04-01');
INSERT INTO `introduction_details` VALUES ('2', '阿朕', 'myprofile', '鸡仔', 'wenprofile', 'Feedback Function', 0xE794B1E4BA8EE6ADA4E7B3BBE7BB9FE5B9B6E4B88DE5AE8CE7BE8EEFBC8C20E68980E4BBA5E68891E4BBACE59CA8E59586E9878FE4B98BE5908EE586B3E5AE9AE696B0E58AA0E585A5E58F8DE9A688E58A9FE883BDEFBC8C20E8AEA9E6B58FE8A788E88085E58FAFE4BBA5E99A8FE697B6E68A8AE6ADA4E7B3BBE7BB9FE79A84E4B88DE8B6B3E58F8DE9A688E7BB99E68891E4BBACEFBC8C20E8BF99E6A0B7E68891E4BBACE5B0B1E58FAFE4BBA5E6A0B9E68DAEE5A4A7E5AEB6E79A84E58F8DE9A688E4B88DE696ADE5AE8CE59684E38082, 0x42656361757365207468652073797374656D206973206E6F7420706572666563742C20736F2077652074616C6B206166746572206465636964656420746F206A6F696E20746865206E657720666565646261636B2066756E6374696F6E2C20736F207468617420746865207669657765722063616E206B656570207468652073797374656D206C61636B206F6620666565646261636B20746F2075732C20736F20746861742077652063616E206261736564206F6E20796F757220666565646261636B20616E6420636F6E74696E756F757320696D70726F76656D656E742E, '2016-05-01');
INSERT INTO `introduction_details` VALUES ('3', '阿朕', 'myprofile', '鸡仔', 'wenprofile', 'Message Function', 0xE4B8BAE4BA86E696B9E4BEBFE5A4A7E5AEB6E4BA92E79BB8E4BAA4E6B581E9A5ADE88F9CE79A84E58FA3E591B3E584BFEFBC8C20E68891E4BBACE5B7B2E7BB8FE6B7BBE58AA0E4BA86E79599E8A880E69DBFE58A9FE883BDEFBC8C20E5B88CE69C9BE5A4A7E5AEB6E5969CE6ACA2EFBC81, 0x496E206F7264657220746F20666163696C6974617465207468652065786368616E6765206F6620666F6F642074617374652C20776520686176652061646465642061206D65737361676520626F6172642066756E6374696F6E2C204920686F706520796F75206C696B6521, '2016-06-01');

-- ----------------------------
-- Table structure for `untitled_messagepost`
-- ----------------------------
DROP TABLE IF EXISTS `untitled_messagepost`;
CREATE TABLE `untitled_messagepost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `timestamp` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `name` varchar(120) COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of untitled_messagepost
-- ----------------------------
INSERT INTO `untitled_messagepost` VALUES ('1', '123@qq.com', 0x3132330D0A3132330D0A3132330D0A3132330D0A313233, '2016-05-24 13:06:55', '2016-05-25 01:31:06', '杨冠群');
INSERT INTO `untitled_messagepost` VALUES ('7', '842618916@qq.com', 0xE5A4A7E5AEB6E5A5BDEFBC81, '2016-05-25 10:12:50', '2016-05-25 10:12:50', '范泽朕');
INSERT INTO `untitled_messagepost` VALUES ('20', '1297298462@qq.com', 0xE592AFE592AFE593927E, '2016-05-25 12:05:20', '2016-05-25 12:05:20', '鸡仔');
INSERT INTO `untitled_messagepost` VALUES ('21', 'testtest@test.com', 0xE6B58BE8AF9521, '2016-05-25 12:20:15', '2016-05-25 12:20:15', '测试');
INSERT INTO `untitled_messagepost` VALUES ('22', '', 0xE4BAA4E999A2E9A39FE5A082E79A84E9A5ADE6B2A1E69C89E6AF92, '2016-05-25 12:25:54', '2016-05-25 12:25:54', '');
INSERT INTO `untitled_messagepost` VALUES ('24', '1297298462@qq.com', 0xE4BDA0E5A5BD, '2016-05-26 01:30:26', '2016-05-26 01:30:26', '葛静雯');
INSERT INTO `untitled_messagepost` VALUES ('26', '', 0x313233, '2016-05-26 01:57:16', '2016-05-26 01:57:16', '阿晓');
INSERT INTO `untitled_messagepost` VALUES ('28', '', 0xE5969CE6ACA2E4BDA0, '2016-05-26 02:01:08', '2016-05-29 12:34:30', '霞霞');
INSERT INTO `untitled_messagepost` VALUES ('29', '', 0xE8AEA8E58E8CE4BDA0, '2016-05-26 02:01:20', '2016-05-29 12:49:45', '');
INSERT INTO `untitled_messagepost` VALUES ('30', '', 0x48656C6C6F21, '2016-05-29 10:23:23', '2016-05-29 12:50:27', '双双');
INSERT INTO `untitled_messagepost` VALUES ('36', '1049220049@qq.com', 0xE69DA5E4B8AAE9BB84E7939CE78292E9B8A1E89B8B, '2016-05-31 12:59:44', '2016-05-31 12:59:44', '开发');
INSERT INTO `untitled_messagepost` VALUES ('37', '', 0xE68891E4B88DE5969CE6ACA2E9B8A1E89B8B, '2016-05-31 13:00:05', '2016-05-31 13:00:05', '(匿名)');
