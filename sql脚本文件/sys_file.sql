/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : liu

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 16/06/2022 23:17:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint(0) NULL DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (44, '一个测试word.docx', 'docx', 0, 'http://localhost:9090/file/5c796f53c6f94d319c5c0f579011bc8c.docx', 'd41d8cd98f00b204e9800998ecf8427e', 1, 1);
INSERT INTO `sys_file` VALUES (45, '一个测试word.docx', 'docx', 0, 'http://localhost:9090/file/5c796f53c6f94d319c5c0f579011bc8c.docx', 'd41d8cd98f00b204e9800998ecf8427e', 1, 1);
INSERT INTO `sys_file` VALUES (46, '论文管理系统_中期进度报告.docx', 'docx', 3297, 'http://localhost:9090/file/fb52fd4580c04a72b8881a602baac7d4.docx', '9ace6c5793ca1543479a27b43199af5e', 0, 1);
INSERT INTO `sys_file` VALUES (47, '一个测试word.docx', 'docx', 0, 'http://localhost:9090/file/5c796f53c6f94d319c5c0f579011bc8c.docx', 'd41d8cd98f00b204e9800998ecf8427e', 1, 1);
INSERT INTO `sys_file` VALUES (48, '一个测试word.docx', 'docx', 0, 'http://localhost:9090/file/5c796f53c6f94d319c5c0f579011bc8c.docx', 'd41d8cd98f00b204e9800998ecf8427e', 0, 1);
INSERT INTO `sys_file` VALUES (49, '一个测试word.docx', 'docx', 0, 'http://localhost:9090/file/5c796f53c6f94d319c5c0f579011bc8c.docx', 'd41d8cd98f00b204e9800998ecf8427e', 0, 1);
INSERT INTO `sys_file` VALUES (50, 'R-C (2).jpg', 'jpg', 30, 'http://localhost:9090/file/b219fd2ceef247488a1ecf0942a108d0.jpg', '1462c9a84d963f7d2c3202439c47e4cb', 0, 1);
INSERT INTO `sys_file` VALUES (51, '(0).png', 'png', 2230, 'http://localhost:9090/file/4470d4155cd64122aba1039d91763e6e.png', 'a710a44600dcdeea6e35a7ec75e9c551', 0, 1);
INSERT INTO `sys_file` VALUES (52, 'Liella! (リエラ) - ノンフィクション!! (非虚构！！).mp3', 'mp3', 3286, 'http://localhost:9090/file/907a253b209e4ea7b1ac6fb540f0b6a3.mp3', '05f5664db76685e74a459651f3f912b0', 0, 1);
INSERT INTO `sys_file` VALUES (53, '用户信息.xlsx', 'xlsx', 8, 'http://localhost:9090/file/d6a03218b0a3403792d267f435aea417.xlsx', '7f9134ed5e6f364324cc9a0dd62aa636', 0, 1);
INSERT INTO `sys_file` VALUES (54, '13.png', 'png', 1253, 'http://localhost:9090/file/fd1f30c3c78949acbfb45384b165cd28.png', 'fb90e1e011fc79c0d712ebed8eaa0f5c', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
