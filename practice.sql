/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : practice

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2021-03-18 21:28:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `personId` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `personName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `personNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cardNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `personMobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`personId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('402889e054182b2f0154182bc84d0001', '管理员', 'admin', 'admin', 'admin', '430511199102207035', '18925186343', '男');
INSERT INTO `person` VALUES ('402889e054182b2f015418654051000c', '管理员', '111', 'secretary', 'student', '430511199102207035', '18925186343', '女');

-- ----------------------------
-- Table structure for `practice`
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `projectId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `projectName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `projectContext` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `studentId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `teacherId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `practiceType` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fileURL` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fileName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `practiceStatus` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `creatorId` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `creatorName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updaterId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `updaterName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of practice
-- ----------------------------
INSERT INTO `practice` VALUES ('029fc166589a48d9a49c51a7a992e165', '97d06210251f4497a9998e65fce8d7d5', '测试项目', '啛啛喳喳', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '教师2', '1ca2d646ea1d4c0695416de7df703ff7', '可行性研究', '39ca16855f9b4c968d16c13815447fb8.txt', '学生登记（student）.txt', '2024-03-18 17:38:07', '审核中', '1ca2d646ea1d4c0695416de7df703ff7', '教师2', '', '', null, '2021-03-18 17:37:26');
INSERT INTO `practice` VALUES ('78c223b7f0a84c2d9785eadda8e58af9', '158f5c8508de4f47b5d8c3a9a027f7eb', '测试', '导出的', '6f5a7e575a384737a407e30f50198aae', '学生1', '教师1', 'ce27caefe9f442cd92370dc842027fc8', '问题定义', '0aa16f1cddcd4de8865d59f3a06d8e70.txt', '学生登记（student）.txt', '2021-07-30 17:20:37', '不通过', 'ce27caefe9f442cd92370dc842027fc8', '教师1', '', '', null, '2021-03-18 16:40:40');
INSERT INTO `practice` VALUES ('7e59554022cf4054babb1c6648e35906', '97d06210251f4497a9998e65fce8d7d5', '测试项目', '啛啛喳喳', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '教师2', '1ca2d646ea1d4c0695416de7df703ff7', '可行性研究', '1425894257fc4c53be99350dcbeb0c45.txt', 'remark(教学审核).txt', '2021-03-18 17:33:58', '通过', '1ca2d646ea1d4c0695416de7df703ff7', '教师2', '', '', null, '2021-03-18 17:34:01');

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `projectName` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `teacherId` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `projectContext` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `studentId` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `projectType` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `authorContext` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `authorDate` datetime DEFAULT NULL,
  `creatorId` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `creatorName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updaterId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `updaterName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('158f5c8508de4f47b5d8c3a9a027f7eb', '测试', '教师1', 'ce27caefe9f442cd92370dc842027fc8', '2021-03-18 16:20:35', '2021-03-27 16:20:37', '导出的', '6f5a7e575a384737a407e30f50198aae', '学生1', '通过', '端茶倒水', '2021-03-18 16:29:44', '6f5a7e575a384737a407e30f50198aae', '学生1', 'ce27caefe9f442cd92370dc842027fc8', '教师1', '2021-03-18 16:29:47', '2021-03-18 16:20:41');
INSERT INTO `project` VALUES ('97d06210251f4497a9998e65fce8d7d5', '测试项目', '教师2', '1ca2d646ea1d4c0695416de7df703ff7', '2021-03-18 17:32:25', '2021-03-26 17:32:27', '啛啛喳喳', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '通过', 'ddf', '2021-03-18 17:32:52', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '1ca2d646ea1d4c0695416de7df703ff7', '教师2', '2021-03-18 17:32:54', '2021-03-18 17:32:33');

-- ----------------------------
-- Table structure for `remark`
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `practiceId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `projectId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `projectName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `projectContext` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `studentId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `teacherId` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `practiceType` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fileURL1` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fileName1` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `fileURL` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `fileName` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `remarkType` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `creatorId` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `creatorName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updaterId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `updaterName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of remark
-- ----------------------------
INSERT INTO `remark` VALUES ('28ed5ab7af1e41ef9e0a85dad1726824', '78c223b7f0a84c2d9785eadda8e58af9', '158f5c8508de4f47b5d8c3a9a027f7eb', '测试', '导出的', '6f5a7e575a384737a407e30f50198aae', '学生1', '教师1', 'ce27caefe9f442cd92370dc842027fc8', '问题定义', '0aa16f1cddcd4de8865d59f3a06d8e70.txt', '学生登记（student）.txt', '2021-07-30 17:20:37', 'acd2d8afb04d440b890633eef934e95d.txt', '学生登记（student）.txt', '导出导出的', '不通过', '6f5a7e575a384737a407e30f50198aae', '学生1', 'ce27caefe9f442cd92370dc842027fc8', '教师1', '2021-03-18 17:20:44', '2021-03-18 16:52:28');
INSERT INTO `remark` VALUES ('93882c2d0dc64e97b2a043e540a3c776', '78c223b7f0a84c2d9785eadda8e58af9', '158f5c8508de4f47b5d8c3a9a027f7eb', '测试', '导出的', '6f5a7e575a384737a407e30f50198aae', '学生1', '教师1', 'ce27caefe9f442cd92370dc842027fc8', '问题定义', '0aa16f1cddcd4de8865d59f3a06d8e70.txt', '学生登记（student）.txt', null, '07d51b230b584abc8c1e4ff84c9fd8f0.txt', '项目信息(project).txt', '的吃的是草', '通过', '6f5a7e575a384737a407e30f50198aae', '学生1', 'ce27caefe9f442cd92370dc842027fc8', '教师1', '2021-03-18 17:20:31', '2021-03-18 16:56:05');
INSERT INTO `remark` VALUES ('b6aa2fc147624f73a8c54e3bafa52221', '7e59554022cf4054babb1c6648e35906', '97d06210251f4497a9998e65fce8d7d5', '测试项目', '啛啛喳喳', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '教师2', '1ca2d646ea1d4c0695416de7df703ff7', '可行性研究', '1425894257fc4c53be99350dcbeb0c45.txt', 'remark(教学审核).txt', null, 'af7fcf5936fa49ec8d842870b23f7ec6.txt', '项目信息(project).txt', '测试通过', '通过', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '1ca2d646ea1d4c0695416de7df703ff7', '教师2', '2021-03-18 17:37:08', '2021-03-18 17:36:45');
INSERT INTO `remark` VALUES ('bfbdcb5ae2e846ab95c96bd2bdf6cbfc', '029fc166589a48d9a49c51a7a992e165', '97d06210251f4497a9998e65fce8d7d5', '测试项目', '啛啛喳喳', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '教师2', '1ca2d646ea1d4c0695416de7df703ff7', '可行性研究', '39ca16855f9b4c968d16c13815447fb8.txt', '学生登记（student）.txt', '2024-03-18 17:38:07', '6beba23aa4584f9384285f63d6575a72.txt', '学生登记（student）.txt', '测试不通过', '不通过', 'ebb336807a9f47479e2a53ea1dc2ed9a', '学生2', '1ca2d646ea1d4c0695416de7df703ff7', '教师2', '2021-03-18 17:38:13', '2021-03-18 17:37:47');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `studentNo` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `reamrk` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `creatorId` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `creatorName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updaterId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `updaterName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('6f5a7e575a384737a407e30f50198aae', 's1', '11', '学生1', '12', '女', '2021-03-18 16:12:16', '成都市成都', '', '', '', '', null, null);
INSERT INTO `student` VALUES ('ebb336807a9f47479e2a53ea1dc2ed9a', 's2', '11', '学生2', '34', '男', '2021-03-18 17:31:19', '测得的的', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL,
  `teacherNo` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `reamrk` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `creatorId` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `creatorName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updaterId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `updaterName` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1ca2d646ea1d4c0695416de7df703ff7', 't2', '11', '教师2', '344', '女', '2021-03-18 17:31:35', '导出的', '', '', '', '', null, null);
INSERT INTO `teacher` VALUES ('ce27caefe9f442cd92370dc842027fc8', 't1', '11', '教师1', '11', '女', '2021-03-18 16:13:46', '是第三次的', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `t_file`
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `resourceId` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fileOldName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fileNewName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `filePath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fileSuffix` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_file
-- ----------------------------
INSERT INTO `t_file` VALUES ('1e467be1dbec4866b7e74f349841fea6', '项目信息(project)', 'af7fcf5936fa49ec8d842870b23f7ec6', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('37e38119d21345cd8ad5aa31a8dd430a', '学生登记（student）', '0aa16f1cddcd4de8865d59f3a06d8e70', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('71415db9c89f45018476e558768baaf4', '学生登记（student）', 'acd2d8afb04d440b890633eef934e95d', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('8681f7477e3e4740af7adea2c00c1dfa', 'remark(教学审核)', '1425894257fc4c53be99350dcbeb0c45', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('a3611be176b04f2a82f8ef04285928e9', '项目信息(project)', '07d51b230b584abc8c1e4ff84c9fd8f0', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('b1f7cf517bef45ea9fa2d250d15a8345', '学生登记（student）', '39ca16855f9b4c968d16c13815447fb8', 'D://student//IMAGE\\', 'txt', '');
INSERT INTO `t_file` VALUES ('f9aa38a15e8b48ddbe9095e10f79231f', '学生登记（student）', '6beba23aa4584f9384285f63d6575a72', 'D://student//IMAGE\\', 'txt', '');
