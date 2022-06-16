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

 Date: 16/06/2022 23:19:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '评论人id',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父id',
  `origin_id` int(0) NULL DEFAULT NULL COMMENT '最上级评论id',
  `article_id` int(0) NULL DEFAULT NULL COMMENT '关联文章的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (23, '好耶', 19, '2022-06-15 23:23:12', NULL, NULL, 3);
INSERT INTO `t_comment` VALUES (24, '哒哒哒', 19, '2022-06-15 23:23:36', NULL, NULL, 3);
INSERT INTO `t_comment` VALUES (25, '哒哒哒', 19, '2022-06-15 23:23:41', NULL, NULL, 4);
INSERT INTO `t_comment` VALUES (27, 'dadada', 20, '2022-06-15 23:42:33', 24, 24, 3);
INSERT INTO `t_comment` VALUES (28, '11111', 20, '2022-06-16 10:57:08', NULL, NULL, 5);

SET FOREIGN_KEY_CHECKS = 1;
