/*
Navicat MySQL Data Transfer

Source Server         : 75
Source Server Version : 50719
Source Host           : 120.25.69.75:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-29 22:26:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'Zara', 'Ali', '5000');
INSERT INTO `employee` VALUES ('3', 'John', 'Paul', '10000');

-- ----------------------------
-- Table structure for lecture
-- ----------------------------
DROP TABLE IF EXISTS `lecture`;
CREATE TABLE `lecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lecture_name` varchar(255) NOT NULL COMMENT '课程名',
  `note` varchar(255) DEFAULT NULL COMMENT '中文备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lecture
-- ----------------------------
INSERT INTO `lecture` VALUES ('1', 'chinese', '语文');
INSERT INTO `lecture` VALUES ('2', 'math', '数学');
INSERT INTO `lecture` VALUES ('3', 'engilsh', '英语');
INSERT INTO `lecture` VALUES ('4', 'chemichical', '化学');
INSERT INTO `lecture` VALUES ('5', 'chemichical', '化学');
INSERT INTO `lecture` VALUES ('6', 'chemichical', '化学');
INSERT INTO `lecture` VALUES ('7', 'chemichical', '化学');
INSERT INTO `lecture` VALUES ('9', 'phisical', '物理');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '张三', '张三的备注');
INSERT INTO `role` VALUES ('7', 'sinan', '司楠的备注');
INSERT INTO `role` VALUES ('9', '李四', '李四的备注');
INSERT INTO `role` VALUES ('10', '李四', '李四的备注');
INSERT INTO `role` VALUES ('11', '李四', '李四的备注');
INSERT INTO `role` VALUES ('12', '李四', '李四的备注');
INSERT INTO `role` VALUES ('13', '李四', '李四的备注');
INSERT INTO `role` VALUES ('14', '李四', '李四的备注');
INSERT INTO `role` VALUES ('15', '李四', '李四的备注');
INSERT INTO `role` VALUES ('16', '李四', '李四的备注');
INSERT INTO `role` VALUES ('18', '李四', '李四的备注');
INSERT INTO `role` VALUES ('19', '李四', '李四的备注');
INSERT INTO `role` VALUES ('20', '李四', '李四的备注');
INSERT INTO `role` VALUES ('21', '李四', '李四的备注');
INSERT INTO `role` VALUES ('24', '李四', '李四的备注');
INSERT INTO `role` VALUES ('25', '李四', '李四的备注');
INSERT INTO `role` VALUES ('28', '李四', '李四的备注');
INSERT INTO `role` VALUES ('30', '李四', '李四的备注');
INSERT INTO `role` VALUES ('31', '李四', '李四的备注');
INSERT INTO `role` VALUES ('32', '李四', '李四的备注');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for student_lecture
-- ----------------------------
DROP TABLE IF EXISTS `student_lecture`;
CREATE TABLE `student_lecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lecture_id` int(11) DEFAULT NULL COMMENT '课程号',
  `student_id` int(11) DEFAULT NULL COMMENT '学号',
  `grade` varchar(255) DEFAULT NULL COMMENT '分数',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_lecture
-- ----------------------------
INSERT INTO `student_lecture` VALUES ('1', '2', '1', '87', '');
INSERT INTO `student_lecture` VALUES ('2', '1', '1', '76', null);
INSERT INTO `student_lecture` VALUES ('3', '3', '1', '82', null);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL,
  `cnname` varchar(255) NOT NULL COMMENT '姓名',
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '王五', '0', '广东省广州');
INSERT INTO `t_student` VALUES ('2', '小芳', '1', '广东省广州');

-- ----------------------------
-- Table structure for t_student_health_female
-- ----------------------------
DROP TABLE IF EXISTS `t_student_health_female`;
CREATE TABLE `t_student_health_female` (
  `id` int(11) NOT NULL COMMENT '编号',
  `student_id` varchar(60) DEFAULT NULL COMMENT '学生编号',
  `check_data` varchar(60) DEFAULT NULL COMMENT '检查日期',
  `heart` varchar(60) DEFAULT NULL COMMENT '心',
  `liver` varchar(60) DEFAULT NULL COMMENT '肝',
  `spleen` varchar(60) DEFAULT NULL COMMENT '脾',
  `lung` varchar(60) DEFAULT NULL COMMENT '肺',
  `kidney` varchar(60) DEFAULT NULL COMMENT '肾',
  `uterus` varchar(60) DEFAULT NULL COMMENT '子宫',
  `note` varchar(60) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_health_female
-- ----------------------------
INSERT INTO `t_student_health_female` VALUES ('1', '2', '2018-04-03', '正常', '正常', '正常', '正常', '正常', '正常', '正常');

-- ----------------------------
-- Table structure for t_student_health_male
-- ----------------------------
DROP TABLE IF EXISTS `t_student_health_male`;
CREATE TABLE `t_student_health_male` (
  `id` int(11) NOT NULL COMMENT '编号',
  `student_id` varchar(60) DEFAULT NULL COMMENT '学生编号',
  `check_data` varchar(60) DEFAULT NULL COMMENT '检查日期',
  `heart` varchar(60) DEFAULT NULL COMMENT '心',
  `liver` varchar(60) DEFAULT NULL COMMENT '肝',
  `spleen` varchar(60) DEFAULT NULL COMMENT '脾',
  `lung` varchar(60) DEFAULT NULL COMMENT '肺',
  `kidney` varchar(60) DEFAULT NULL COMMENT '肾',
  `prostate` varchar(60) DEFAULT NULL COMMENT '前列腺',
  `note` varchar(60) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_health_male
-- ----------------------------
INSERT INTO `t_student_health_male` VALUES ('1', '1', '2017-02-03', '正常', '正常', '正常', '正常', '正常', '正常', '正常');

-- ----------------------------
-- Table structure for t_student_selfcard
-- ----------------------------
DROP TABLE IF EXISTS `t_student_selfcard`;
CREATE TABLE `t_student_selfcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) DEFAULT NULL COMMENT '学号',
  `native` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `issue_date` date DEFAULT NULL COMMENT '发证日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_selfcard
-- ----------------------------
INSERT INTO `t_student_selfcard` VALUES ('1', '1', 'guangzhoushi', '2015-09-12', '2017-06-30', 'postgraduate');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `cnname` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'qingshihuan', '秦始皇', '19920301', '0', '1234567@qq.com', '13973150133', '秦始皇的备注');
