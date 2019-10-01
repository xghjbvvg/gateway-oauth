/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50718
Source Host           : 120.78.88.169:3306
Source Database       : file

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-10-01 15:19:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', '查询用户', 'query');
INSERT INTO `authority` VALUES ('2', '注册用户', 'register');
INSERT INTO `authority` VALUES ('3', '用户登入', 'login');
INSERT INTO `authority` VALUES ('4', '验证码获取', 'getMessageCode');
INSERT INTO `authority` VALUES ('5', '用户更新', 'updateUser');
INSERT INTO `authority` VALUES ('6', '用户注销', 'deleteUser');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `path` varchar(100) NOT NULL,
  `upload_time` datetime(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', '高级系统架构设计师2009年下半年下午试题Ⅱ.doc', 'b6987f1c8fb23c498bde2e293c708d55', '/usr/local/webserver/nginx/html/mycloud/file/341122d3-39ba-42b6-89a2-2ce10ecadfa2.doc', '2019-08-31 16:49:45.000');
INSERT INTO `file` VALUES ('2', '西电计划-20190902164728.csv', '6e1480e74314b926da8f0ca684f2c417', '/usr/local/webserver/nginx/html/mycloud/file/0b128d67-5ef0-4ab0-a97b-8663816152de.csv', '2019-09-03 11:21:51.000');
INSERT INTO `file` VALUES ('3', 'uugai.com_1561711027566.png', 'c51915f85f20006d30b8663b4b3b2624', '/usr/local/webserver/nginx/html/mycloud/file/62be28be-5a84-4a76-9456-adbd71c71150.com_1561711027566', '2019-09-11 15:21:08.000');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');
INSERT INTO `hibernate_sequence` VALUES ('1');
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` tinyblob NOT NULL,
  `update_time` tinyblob NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A071C8CF5C078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A071C8CF5C078, '管理员', 'ROLE_ADMIN');
INSERT INTO `role` VALUES ('2', 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A0726165DC078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A0726165DC078, '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `role_authorities`;
CREATE TABLE `role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`authorities_id`),
  KEY `FK4cy1svku5asbuvksc7ap47iyi` (`authorities_id`),
  CONSTRAINT `FK4cy1svku5asbuvksc7ap47iyi` FOREIGN KEY (`authorities_id`) REFERENCES `authority` (`id`),
  CONSTRAINT `FK8dv2uo3imjpm4dmk7pge9v2vo` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_authorities
-- ----------------------------
INSERT INTO `role_authorities` VALUES ('1', '1');
INSERT INTO `role_authorities` VALUES ('2', '1');
INSERT INTO `role_authorities` VALUES ('1', '2');
INSERT INTO `role_authorities` VALUES ('2', '2');
INSERT INTO `role_authorities` VALUES ('1', '3');
INSERT INTO `role_authorities` VALUES ('2', '3');
INSERT INTO `role_authorities` VALUES ('1', '4');
INSERT INTO `role_authorities` VALUES ('2', '4');
INSERT INTO `role_authorities` VALUES ('1', '5');
INSERT INTO `role_authorities` VALUES ('2', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` tinyblob NOT NULL,
  `update_time` tinyblob NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A081200278078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A081200278078, null, null, null, null, '$2a$10$m3/xnJFLANK.woBv7jwS5ewwo/zFfoPr0Wg2uWpYhHWnbvFVjpCIi', 'fpf', null);
INSERT INTO `user` VALUES ('2', 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A08300A958078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A08300A958078, null, null, null, null, '$2a$10$ZAx299o5k3kCmZD.9Txtxe4/3MCkMkyPe.etaLWaEb5WWcdKPrIuy', 'wl', null);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`roles_id`),
  KEY `FKj9553ass9uctjrmh0gkqsmv0d` (`roles_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKj9553ass9uctjrmh0gkqsmv0d` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '1');
INSERT INTO `user_roles` VALUES ('2', '2');
