/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_news

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 06/07/2024 11:21:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add comment', 16, 'add_comment');
INSERT INTO `auth_permission` VALUES (62, 'Can change comment', 16, 'change_comment');
INSERT INTO `auth_permission` VALUES (63, 'Can delete comment', 16, 'delete_comment');
INSERT INTO `auth_permission` VALUES (64, 'Can view comment', 16, 'view_comment');
INSERT INTO `auth_permission` VALUES (65, 'Can add feedback', 17, 'add_feedback');
INSERT INTO `auth_permission` VALUES (66, 'Can change feedback', 17, 'change_feedback');
INSERT INTO `auth_permission` VALUES (67, 'Can delete feedback', 17, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (68, 'Can view feedback', 17, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1720232422427.jpeg', 'https://m3u8player.org', '2024-07-06 10:20:24.970197');
INSERT INTO `b_ad` VALUES (2, 'ad/1720235370354.jpeg', 'https://m3u8player.org', '2024-07-06 11:09:32.884424');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '娱乐', '2024-07-05 20:48:01.191153');
INSERT INTO `b_classification` VALUES (2, '体育', '2024-07-05 20:48:04.881993');
INSERT INTO `b_classification` VALUES (3, '科技', '2024-07-05 21:24:51.377319');
INSERT INTO `b_classification` VALUES (4, '经济', '2024-07-05 21:24:57.460217');
INSERT INTO `b_classification` VALUES (5, '教育', '2024-07-05 21:25:26.563243');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (3, '2222222222222222', '2024-07-06 10:43:38.847030', 0, 4, 3);
INSERT INTO `b_comment` VALUES (4, '11111111111111111111', '2024-07-06 10:43:40.842876', 0, 4, 3);
INSERT INTO `b_comment` VALUES (5, '1111111111111', '2024-07-06 10:53:12.141541', 0, 14, 3);
INSERT INTO `b_comment` VALUES (6, '哈哈哈', '2024-07-06 10:53:17.173302', 0, 14, 3);
INSERT INTO `b_comment` VALUES (7, '哈哈哈', '2024-07-06 11:13:36.461485', 0, 5, 5);
INSERT INTO `b_comment` VALUES (8, '9900', '2024-07-06 11:13:39.399350', 0, 5, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2024-07-05 21:48:50.429517');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2024-07-05 21:48:50.433500');
INSERT INTO `b_error_log` VALUES (3, '127.0.0.1', '/myapp/admin/thing/update', 'POST', '参数错误', '2024-07-06 10:29:33.712141');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈', '刘洋', '999011@gmail.com', '87766634', '2024-07-06 11:10:20.021015');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-05 21:14:51.320123');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-05 21:22:54.020604');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-06 10:06:08.958529');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-06 11:08:45.244178');
INSERT INTO `b_login_log` VALUES (5, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-06 11:12:30.178581');
INSERT INTO `b_login_log` VALUES (6, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-06 11:18:37.213497');
INSERT INTO `b_login_log` VALUES (7, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-07-06 11:20:29.706182');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈', '2024-07-06 11:09:41.306523');
INSERT INTO `b_notice` VALUES (2, '测试通知222', '哈哈哈888', '2024-07-06 11:09:48.309835');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1520 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-05 20:43:26.484279', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-05 20:43:26.512337', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-05 20:44:55.502420', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-05 20:44:55.522419', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-05 20:46:20.817943', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-05 20:46:20.830926', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-05 20:47:16.625777', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-05 20:47:16.628783', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-05 20:47:20.523660', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-05 20:47:20.911940', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-05 20:47:20.924692', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-05 20:47:31.905833', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-05 20:47:32.923169', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-05 20:47:32.927188', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-05 20:47:33.310019', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-05 20:47:48.311063', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-05 20:48:01.193166', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-05 20:48:01.220350', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-05 20:48:04.884969', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-05 20:48:04.911937', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-05 20:48:06.441030', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-05 20:48:06.443035', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-05 20:48:21.453305', '/myapp/admin/thing/create', 'POST', NULL, '169');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-05 20:48:21.480139', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-05 20:49:14.653437', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-05 20:49:14.662261', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-05 20:49:25.789546', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-05 20:49:25.800543', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-05 20:50:09.795137', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-05 20:50:10.264709', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-05 20:50:10.281111', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-05 20:50:24.719477', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-05 20:50:35.595182', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-05 20:51:54.967598', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-05 20:51:55.027277', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-05 20:52:00.992196', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-05 20:52:25.329843', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-05 20:52:25.389982', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-05 20:53:16.118708', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-05 20:53:16.148801', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-05 20:53:25.818935', '/myapp/admin/thing/upload', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-05 20:53:25.870432', '/upload/cover/1714812227797.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-05 20:53:53.269912', '/myapp/admin/thing/upload', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-05 20:53:53.322738', '/upload/cover/1714812227797.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-05 20:55:48.178256', '/myapp/admin/thing/upload', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-05 20:55:48.211703', '/upload/cover/1714812227797.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-05 21:01:05.523294', '/myapp/admin/thing/upload', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-05 21:01:05.553947', '/upload/img/1720184465519.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-05 21:01:14.964146', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-05 21:01:15.014811', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-05 21:03:46.602410', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-05 21:03:47.227189', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-05 21:03:47.237660', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-05 21:03:48.894387', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-05 21:03:48.909375', '/upload/img/1720184465519.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-05 21:03:54.539113', '/myapp/admin/thing/upload', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-05 21:03:54.561508', '/upload/img/1720184634533.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-05 21:03:56.040397', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-05 21:03:56.096990', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-05 21:03:59.399509', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-05 21:08:04.755138', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-05 21:08:04.764511', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-05 21:08:07.161531', '/upload/img/1720184634533.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-05 21:08:07.162531', '/upload/img/1720184634533.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-05 21:08:12.311503', '/myapp/admin/thing/upload', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-05 21:08:12.344119', '/upload/img/1720184892302.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-05 21:08:14.333117', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-05 21:08:14.379934', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-05 21:14:40.301924', '/myapp/admin/user/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-05 21:14:47.199763', '/myapp/admin/user/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-05 21:14:47.238777', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-05 21:14:51.325108', '/myapp/admin/adminLogin', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-05 21:14:51.467736', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-05 21:14:51.478763', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-05 21:14:52.835066', '/upload/img/1720184892302.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-05 21:14:52.837066', '/upload/img/1720184892302.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-05 21:14:54.249041', '/myapp/admin/thing/update', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-05 21:16:00.229955', '/myapp/admin/thing/upload', 'POST', NULL, '3046');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-05 21:19:56.443446', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-05 21:19:56.455440', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-05 21:19:57.976104', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-05 21:19:57.990910', '/upload/img/1720184892302.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-05 21:20:02.783213', '/myapp/admin/thing/upload', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-05 21:21:41.603942', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-05 21:21:41.644495', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-05 21:22:44.910785', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-05 21:22:44.919154', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-05 21:22:48.186778', '/upload/img/1720184892302.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-05 21:22:48.208349', '/upload/img/1720184892302.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-05 21:22:49.624522', '/myapp/admin/thing/update', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-05 21:22:54.027710', '/myapp/admin/adminLogin', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-05 21:22:54.143998', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-05 21:22:54.154500', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-05 21:22:56.795026', '/upload/img/1720184892302.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-05 21:22:56.796027', '/upload/img/1720184892302.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-05 21:23:02.191534', '/myapp/admin/thing/upload', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-05 21:23:02.212683', '/upload/img/1720185782186.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-05 21:23:04.004102', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-05 21:23:04.063951', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-05 21:23:58.870193', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-05 21:23:58.916461', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-05 21:24:46.646971', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-05 21:24:51.381323', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-05 21:24:51.419290', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-05 21:24:57.464727', '/myapp/admin/classification/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-05 21:24:57.483733', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-05 21:25:26.576004', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-05 21:25:26.626233', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-05 21:25:27.946058', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-05 21:25:28.599422', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-05 21:25:29.329677', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-05 21:25:29.337442', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-05 21:25:34.133156', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-05 21:25:34.149575', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-05 21:25:34.305659', '/myapp/index/thing/getRecommend', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-05 21:25:34.490143', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-05 21:25:34.493142', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-05 21:25:34.529152', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-05 21:25:34.584844', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-05 21:25:36.081075', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-05 21:25:36.095085', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-05 21:25:36.100076', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-05 21:25:36.160707', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-05 21:25:36.164708', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-05 21:25:36.232660', '/myapp/index/comment/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-05 21:27:00.979610', '/upload/img/1720185782186.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-05 21:27:41.488965', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-05 21:27:41.514971', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-05 21:27:44.910325', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-05 21:27:44.945869', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-05 21:27:44.961869', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-05 21:27:44.968851', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-05 21:27:44.998854', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-05 21:27:45.000875', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-05 21:27:45.063803', '/upload/img/1720185782186.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-05 21:27:45.068758', '/upload/img/1720185782186.jpeg', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-05 21:30:35.691274', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-05 21:30:36.079388', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-05 21:30:36.089100', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-05 21:30:42.354584', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-05 21:30:42.359611', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-05 21:30:42.377360', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-05 21:30:42.457061', '/myapp/index/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-05 21:30:55.151850', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-05 21:30:55.548669', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-05 21:30:56.097698', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-05 21:30:56.747126', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-05 21:30:57.098849', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-05 21:30:58.360499', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-05 21:32:08.858938', '/myapp/admin/thing/create', 'POST', NULL, '290');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-05 21:32:08.898705', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-05 21:32:19.695439', '/myapp/admin/thing/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-05 21:32:19.750708', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-05 21:32:22.616731', '/myapp/index/thing/getRecommend', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-05 21:32:22.623714', '/myapp/index/thing/getRecommend', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-05 21:32:22.697813', '/upload/cover/1720186336097.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-05 21:32:22.702212', '/upload/cover/1720186336097.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-05 21:32:22.706225', '/upload/cover/1720186336097.jpeg', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-05 21:32:22.914144', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-05 21:32:22.918145', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-05 21:32:22.956694', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-05 21:32:23.027196', '/myapp/index/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-05 21:33:16.056617', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-05 21:33:16.064616', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-05 21:33:16.099915', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-05 21:33:16.177291', '/myapp/index/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-05 21:35:34.952197', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-05 21:35:34.955172', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-05 21:35:34.957172', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-05 21:35:34.971236', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-05 21:35:34.972240', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-05 21:35:34.973241', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-05 21:35:35.025749', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-05 21:36:51.026341', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-05 21:36:51.067673', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-05 21:36:51.070671', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-05 21:36:51.089146', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-05 21:36:51.099155', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-05 21:36:51.187984', '/myapp/index/comment/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-05 21:36:52.734508', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-05 21:36:52.742505', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-05 21:36:52.774162', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-05 21:36:52.837261', '/myapp/index/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-05 21:36:53.649637', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-05 21:36:53.677548', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-05 21:36:53.680894', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-05 21:36:53.709928', '/myapp/index/thing/detail', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-05 21:36:53.723192', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-05 21:36:53.788917', '/myapp/index/thing/detail', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-05 21:36:54.422635', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-05 21:36:54.426380', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-05 21:36:54.455408', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-05 21:36:54.542287', '/myapp/index/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-05 21:36:55.539215', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-05 21:36:55.542146', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-05 21:36:55.543701', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-05 21:36:55.577945', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-05 21:36:55.625946', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-05 21:36:55.632946', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-05 21:36:55.635970', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-05 21:36:55.726673', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-05 21:36:56.241118', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-05 21:36:56.247123', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-05 21:36:56.283654', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-05 21:36:56.356112', '/myapp/index/user/info', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-05 21:36:58.360965', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-05 21:36:58.367591', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-05 21:36:58.403785', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-05 21:36:58.427802', '/myapp/index/comment/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-05 21:36:58.436797', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-05 21:36:58.485598', '/myapp/index/comment/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-05 21:36:59.391069', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-05 21:36:59.401086', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-05 21:36:59.434087', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-05 21:36:59.498102', '/myapp/index/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-05 21:38:47.939113', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-05 21:38:48.714207', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-05 21:39:27.182180', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-05 21:39:27.861183', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-05 21:39:27.892604', '/upload/cover/1720186336097.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-05 21:40:55.099828', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-05 21:40:55.110171', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-05 21:40:55.148734', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-05 21:40:55.181866', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-05 21:40:55.193745', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-05 21:40:55.277330', '/myapp/admin/ad/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-05 21:40:57.310900', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-05 21:40:57.317890', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-05 21:40:57.390892', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-05 21:40:57.456283', '/myapp/index/user/info', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-05 21:42:07.983836', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-05 21:42:08.024310', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-05 21:42:08.048915', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-05 21:42:08.080479', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-05 21:42:08.080479', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-05 21:42:08.085918', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-05 21:42:08.601001', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-05 21:42:08.605184', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-05 21:42:08.643528', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-05 21:42:08.711007', '/myapp/index/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-05 21:42:14.182843', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-05 21:42:14.200947', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-05 21:42:19.705564', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-05 21:42:19.774113', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-05 21:42:23.019654', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-05 21:42:23.105216', '/myapp/admin/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-05 21:42:24.755807', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-05 21:42:25.215295', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-05 21:43:34.540911', '/upload/img/1720185782186.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-05 21:43:39.169068', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-05 21:43:39.225419', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-05 21:43:41.502778', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-05 21:43:41.979517', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-05 21:44:43.170463', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-05 21:44:46.092115', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-05 21:44:46.158038', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-05 21:44:48.783269', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-05 21:44:49.457090', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-05 21:45:07.875468', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-05 21:45:08.676029', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-05 21:48:04.769903', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-05 21:48:04.819797', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-05 21:48:04.886330', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-05 21:48:04.917373', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-05 21:48:04.920542', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-05 21:48:04.925967', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-05 21:48:05.357979', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-05 21:48:05.360978', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-05 21:48:05.397936', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-05 21:48:05.461188', '/myapp/index/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-05 21:48:43.167291', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-05 21:48:43.198832', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-05 21:48:43.210847', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-05 21:48:43.229848', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-05 21:48:43.231850', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-05 21:48:43.291389', '/myapp/admin/ad/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-05 21:48:47.526672', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-05 21:48:47.533813', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-05 21:48:47.567564', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-05 21:48:47.642581', '/myapp/index/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-05 21:48:50.400504', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-05 21:48:50.436497', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-05 21:48:50.441497', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-05 21:48:50.520422', '/myapp/index/thing/getWishThingList', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-05 21:48:50.620384', '/myapp/index/user/info', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-05 21:48:50.723005', '/myapp/index/user/info', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-05 21:48:53.642913', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-05 21:48:53.652908', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-05 21:48:53.666150', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-05 21:48:54.757194', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-05 21:48:54.779335', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-05 21:48:55.803034', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-05 21:48:55.811016', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-05 21:48:55.825012', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-05 21:48:57.039593', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-05 21:48:57.917711', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-06 09:49:28.597612', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-06 09:49:28.612530', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-06 09:49:28.648861', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-06 09:49:28.659647', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-06 09:49:28.663603', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-06 09:49:28.722976', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-06 09:49:28.724025', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-06 09:49:28.725071', '/upload/cover/1720183695129.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-06 09:51:03.174741', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-06 09:51:03.223608', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-06 09:51:03.231826', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-06 09:51:03.234822', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-06 09:51:03.252517', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-06 09:51:07.504263', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-06 09:51:07.507066', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-06 09:51:07.524654', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-06 09:51:08.761122', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-06 09:51:08.758112', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-06 09:51:08.785158', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-06 09:51:08.798083', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-06 09:51:08.805806', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-06 09:51:10.362307', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-06 09:51:10.365114', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-06 09:51:10.379713', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-06 09:51:11.726576', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-06 09:51:11.737885', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-06 09:51:11.755195', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-06 09:51:11.764063', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-06 09:51:11.792240', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-06 09:51:11.820652', '/upload/img/1720185782186.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-06 09:55:54.846018', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-06 09:55:54.879376', '/myapp/admin/ad/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-06 09:55:54.883422', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-06 09:55:54.891435', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-06 09:55:54.895608', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-06 10:01:24.252691', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-06 10:01:24.255689', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-06 10:01:24.274198', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-06 10:01:24.286540', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-06 10:01:24.298811', '/myapp/admin/ad/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-06 10:05:42.217665', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-06 10:05:42.219863', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-06 10:05:42.230003', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-06 10:05:42.250708', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-06 10:05:42.253705', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-06 10:06:01.804380', '/myapp/index/user/login', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-06 10:06:06.492217', '/myapp/index/user/register', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-06 10:06:08.966546', '/myapp/index/user/login', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-06 10:06:09.046986', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-06 10:06:09.052026', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-06 10:06:09.062653', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-06 10:06:09.074629', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-06 10:06:11.632542', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-06 10:06:11.636542', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-06 10:06:11.642541', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-06 10:06:11.655546', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-06 10:06:11.673617', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-06 10:06:11.680935', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-06 10:06:15.348535', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-06 10:06:15.413357', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-06 10:06:16.235072', '/myapp/index/thing/addCollectUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-06 10:06:16.279838', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-06 10:06:46.152791', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-06 10:06:46.172064', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-06 10:06:46.180077', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-06 10:06:46.187457', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-06 10:06:46.218927', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-06 10:06:46.222926', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-06 10:07:30.097331', '/myapp/admin/thing/upload', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-06 10:07:30.168430', '/upload/img/1720231650093.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-06 10:07:33.150815', '/upload/img/1720231650093.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-06 10:07:43.816374', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-06 10:07:43.911737', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-06 10:07:47.209041', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-06 10:07:47.214896', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-06 10:07:47.216913', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-06 10:07:47.222242', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-06 10:07:47.231515', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-06 10:07:47.243519', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-06 10:07:47.264947', '/upload/img/1720231650093.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-06 10:10:16.478939', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-06 10:10:16.477940', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-06 10:10:16.485829', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-06 10:10:16.489905', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-06 10:10:16.496271', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-06 10:10:16.516782', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-06 10:10:16.538779', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-06 10:10:16.540135', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-06 10:10:16.543673', '/upload/cover/1720186325123.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-06 10:10:16.560143', '/upload/img/1720231650093.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-06 10:15:45.253166', '/myapp/admin/thing/create', 'POST', NULL, '418');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-06 10:15:45.309129', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-06 10:15:49.669859', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-06 10:15:49.673325', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-06 10:15:49.712885', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-06 10:15:49.728875', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-06 10:15:49.745101', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-06 10:15:49.752109', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-06 10:15:49.770709', '/upload/img/1720231650093.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-06 10:15:49.793336', '/upload/cover/1720232137155.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-06 10:15:52.428673', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-06 10:15:52.439282', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-06 10:15:52.459471', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-06 10:15:52.475488', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-06 10:15:53.563605', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-06 10:15:53.567279', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-06 10:15:53.588642', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-06 10:15:54.469190', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-06 10:15:54.477173', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-06 10:15:54.483616', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-06 10:15:54.510373', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-06 10:15:57.246956', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-06 10:15:57.251086', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-06 10:15:57.265117', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-06 10:15:57.282725', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-06 10:15:57.314681', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-06 10:15:57.334876', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-06 10:17:43.886088', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-06 10:17:43.889085', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-06 10:17:43.892505', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-06 10:17:43.909283', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-06 10:17:44.470720', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-06 10:17:44.480285', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-06 10:17:44.486305', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-06 10:17:45.271841', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-06 10:17:45.275101', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-06 10:17:45.277393', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-06 10:17:45.286037', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-06 10:17:47.775073', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-06 10:17:47.781171', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-06 10:17:47.789126', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-06 10:17:47.795868', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-06 10:17:47.815448', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-06 10:17:47.819409', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-06 10:19:53.699581', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-06 10:19:53.745431', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-06 10:19:54.911355', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-06 10:19:54.948864', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-06 10:19:57.880953', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-06 10:20:00.378237', '/myapp/index/comment/like', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-06 10:20:00.424213', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-06 10:20:01.689645', '/myapp/index/comment/like', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-06 10:20:01.729151', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-06 10:20:03.101869', '/myapp/index/comment/like', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-06 10:20:03.142887', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-06 10:20:17.668479', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-06 10:20:24.983530', '/myapp/admin/ad/create', 'POST', NULL, '292');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-06 10:20:25.011734', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-06 10:20:25.054552', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-06 10:20:28.165971', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-06 10:20:28.184534', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-06 10:20:28.190535', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-06 10:20:28.208511', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-06 10:20:28.212512', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-06 10:20:28.216510', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-06 10:20:28.221889', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-06 10:20:28.240884', '/upload/img/1720231650093.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-06 10:20:28.254891', '/upload/cover/1720232137155.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-06 10:25:53.799599', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-06 10:25:53.836990', '/myapp/admin/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-06 10:25:55.322557', '/upload/cover/1720232137155.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-06 10:26:00.223726', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-06 10:26:00.317802', '/myapp/admin/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-06 10:26:08.771586', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-06 10:26:08.885205', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-06 10:26:12.732272', '/myapp/admin/thing/delete', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-06 10:26:12.800349', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-06 10:26:15.015639', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-06 10:26:22.852213', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-06 10:26:22.902893', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-06 10:27:11.927227', '/myapp/admin/thing/delete', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-06 10:27:11.975786', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-06 10:27:13.979158', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-06 10:27:13.987064', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-06 10:27:14.000964', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-06 10:27:14.007291', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-06 10:27:14.014494', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-06 10:28:48.023567', '/myapp/admin/thing/upload', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-06 10:28:48.046566', '/upload/img/1720232928018.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-06 10:29:33.722138', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-06 10:31:19.889788', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-06 10:31:19.967572', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-06 10:31:23.601342', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-06 10:31:23.622247', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-06 10:31:23.627154', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-06 10:31:24.034178', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-06 10:31:24.038072', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-06 10:31:24.041219', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-06 10:31:24.060265', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-06 10:31:25.407846', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-06 10:31:25.415062', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-06 10:31:25.426268', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-06 10:31:25.418684', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-06 10:31:25.447353', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-06 10:31:25.474137', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-06 10:31:25.480404', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-06 10:31:25.493887', '/upload/img/1720232928018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-06 10:32:38.983489', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-06 10:32:38.989648', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-06 10:32:38.995560', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-06 10:32:38.999297', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-06 10:32:39.013657', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-06 10:32:39.032953', '/myapp/index/notice/list_api', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-06 10:32:39.052420', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-06 10:32:39.088556', '/upload/img/1720232928018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-06 10:32:39.089570', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-06 10:34:20.195553', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-06 10:34:20.200133', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-06 10:34:20.204117', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-06 10:34:20.214106', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-06 10:34:20.241797', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-06 10:34:20.253110', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-06 10:34:20.257071', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-06 10:34:20.274342', '/upload/img/1720232928018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-06 10:34:20.313015', '/upload/img/1720232928018.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-06 10:34:34.028900', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-06 10:34:34.032894', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-06 10:34:34.047200', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-06 10:34:34.055475', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-06 10:34:34.073698', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-06 10:34:34.082360', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-06 10:34:34.090772', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-06 10:34:34.099189', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-06 10:34:34.109460', '/upload/img/1720232928018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-06 10:35:36.598390', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-06 10:35:36.603905', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-06 10:35:36.607478', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-06 10:35:36.614745', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-06 10:35:36.636059', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-06 10:35:36.641044', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-06 10:35:36.672986', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-06 10:35:36.689322', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-06 10:35:36.700850', '/upload/img/1720232928018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-06 10:37:10.225550', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-06 10:37:10.228545', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-06 10:37:10.234569', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-06 10:37:10.243547', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-06 10:37:10.251546', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-06 10:37:10.264400', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-06 10:37:10.268392', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-06 10:37:10.273433', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-06 10:37:10.282896', '/upload/img/1720232928018.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-06 10:39:21.907917', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-06 10:39:21.912437', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-06 10:39:21.916545', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-06 10:39:21.922116', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-06 10:39:21.943899', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-06 10:39:21.957009', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-06 10:39:21.963744', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-06 10:39:21.981622', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-06 10:39:22.004454', '/upload/img/1720232928018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-06 10:40:41.546105', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-06 10:40:41.628552', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-06 10:40:45.464477', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-06 10:40:45.471670', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-06 10:40:45.473670', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-06 10:40:45.484669', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-06 10:40:45.500604', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-06 10:40:45.501876', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-06 10:40:45.514716', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-06 10:40:45.521716', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-06 10:40:45.535972', '/upload/img/1720232928018.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-06 10:41:07.878770', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-06 10:41:07.889027', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-06 10:41:07.904714', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-06 10:41:07.918050', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-06 10:41:07.920524', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-06 10:41:07.935698', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-06 10:41:23.241749', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-06 10:41:23.313552', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-06 10:41:25.590775', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-06 10:41:25.596065', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-06 10:41:25.599571', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-06 10:41:25.615926', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-06 10:41:25.612830', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-06 10:41:25.648162', '/myapp/index/user/info', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-06 10:42:53.599288', '/upload/img/1720232928018.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-06 10:43:00.228042', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-06 10:43:00.271025', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-06 10:43:04.007755', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-06 10:43:04.015152', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-06 10:43:04.029635', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-06 10:43:04.026624', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-06 10:43:04.061847', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-06 10:43:04.064342', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-06 10:43:04.068859', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-06 10:43:04.085822', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-06 10:43:19.702760', '/myapp/index/thing/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-06 10:43:19.760575', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-06 10:43:20.184956', '/myapp/index/thing/addCollectUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-06 10:43:20.241946', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-06 10:43:38.861743', '/myapp/index/comment/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-06 10:43:38.917120', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-06 10:43:40.850911', '/myapp/index/comment/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-06 10:43:40.903916', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-06 10:43:49.785146', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-06 10:43:49.788676', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-06 10:43:49.809297', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-06 10:43:49.812741', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-06 10:44:11.266691', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-06 10:44:11.336113', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-06 10:45:27.140694', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-06 10:45:27.186421', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-06 10:45:31.076859', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-06 10:45:31.085860', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-06 10:45:31.089856', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-06 10:45:31.095986', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-06 10:45:31.110930', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-06 10:45:31.682655', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-06 10:45:31.690701', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-06 10:45:31.707382', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-06 10:45:31.733030', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-06 10:45:31.745415', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-06 10:45:31.749324', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-06 10:45:31.762380', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-06 10:46:30.313186', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-06 10:46:34.828447', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-06 10:46:34.833448', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-06 10:46:34.894276', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-06 10:46:34.924214', '/myapp/index/user/info', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-06 10:46:59.205359', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-06 10:46:59.377117', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-06 10:47:36.546930', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-06 10:47:36.675357', '/myapp/admin/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-06 10:47:51.035813', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-06 10:47:51.217135', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-06 10:48:03.935149', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-06 10:48:04.065774', '/myapp/admin/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-06 10:48:14.685838', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-06 10:48:14.835909', '/myapp/admin/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-06 10:48:27.062859', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-06 10:48:27.206870', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-06 10:48:40.958630', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-06 10:48:41.081093', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-06 10:49:00.548107', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-06 10:49:00.714872', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-06 10:49:13.894552', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-06 10:49:14.112568', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-06 10:49:29.388658', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-06 10:49:29.542821', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-06 10:49:43.636077', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-06 10:49:43.792469', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-06 10:49:57.433876', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-06 10:49:57.592494', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-06 10:50:08.296372', '/myapp/admin/thing/update', 'POST', NULL, '315');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-06 10:50:08.512480', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-06 10:50:12.918081', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-06 10:50:13.076789', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-06 10:50:17.988218', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-06 10:50:18.162741', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-06 10:50:24.036102', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-06 10:50:24.275968', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-06 10:50:29.990312', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-06 10:50:30.171214', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-06 10:50:36.361590', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-06 10:50:36.515463', '/myapp/admin/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-06 10:50:42.231724', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-06 10:50:42.443826', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-06 10:50:47.515601', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-06 10:50:47.663323', '/myapp/admin/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-06 10:50:52.510222', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-06 10:50:52.672703', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-06 10:50:59.041123', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-06 10:50:59.230697', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-06 10:51:06.602967', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-06 10:51:06.769564', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-06 10:51:10.632281', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-06 10:51:10.636824', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-06 10:51:10.640396', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-06 10:51:10.677137', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-06 10:51:10.682964', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-06 10:51:10.684034', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-06 10:51:10.684582', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-06 10:51:10.689931', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-06 10:51:10.697989', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-06 10:51:10.723928', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-06 10:51:10.724927', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-06 10:51:10.725928', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-06 10:51:10.768421', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-06 10:51:10.769530', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-06 10:51:11.185089', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-06 10:51:11.212208', '/myapp/index/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-06 10:51:11.219208', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-06 10:51:11.235617', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-06 10:51:19.206505', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-06 10:51:20.142784', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-06 10:51:23.214307', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-06 10:51:23.218853', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-06 10:51:23.228920', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-06 10:51:23.241188', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-06 10:51:23.275374', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-06 10:51:23.277374', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-06 10:51:23.311146', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-06 10:51:24.512782', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-06 10:51:24.519330', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-06 10:51:24.529645', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-06 10:51:24.567656', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-06 10:51:25.489967', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-06 10:51:26.290732', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-06 10:51:40.992634', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-06 10:51:41.776891', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-06 10:51:42.297245', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-06 10:51:42.749615', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-06 10:51:45.214361', '/upload/cover/1720234206513.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-06 10:51:48.825344', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-06 10:51:48.972295', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-06 10:51:49.884143', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-06 10:51:53.452471', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-06 10:51:53.600173', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-06 10:51:56.444199', '/upload/cover/1720234222683.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-06 10:51:59.732137', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-06 10:51:59.878218', '/myapp/admin/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-06 10:52:02.534030', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-06 10:52:02.571625', '/upload/cover/1720234206513.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-06 10:52:03.983936', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-06 10:52:04.649813', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-06 10:52:04.684513', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-06 10:52:04.685514', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-06 10:52:04.686514', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-06 10:52:04.690018', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-06 10:52:04.690018', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-06 10:52:04.692123', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-06 10:52:04.711460', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-06 10:52:04.711460', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-06 10:52:04.711460', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-06 10:52:05.248673', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-06 10:52:05.274856', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-06 10:52:05.870750', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-06 10:52:05.884802', '/upload/cover/1720234222683.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-06 10:52:06.591482', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-06 10:52:12.141841', '/myapp/admin/thing/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-06 10:52:12.315298', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-06 10:52:14.037985', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-06 10:52:17.212921', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-06 10:52:17.345931', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-06 10:52:19.772552', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-06 10:52:19.817587', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-06 10:52:19.818595', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-06 10:52:19.818595', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-06 10:52:19.821708', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-06 10:52:19.840951', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-06 10:52:19.842321', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-06 10:52:19.843836', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-06 10:52:19.844491', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-06 10:52:19.844491', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-06 10:52:19.846623', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-06 10:52:20.314371', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-06 10:52:20.866006', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-06 10:52:21.477749', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-06 10:52:21.833962', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-06 10:52:22.226196', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-06 10:52:22.847821', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-06 10:52:23.324291', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-06 10:52:26.230625', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-06 10:52:26.961044', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-06 10:52:28.663428', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-06 10:52:28.673782', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-06 10:52:28.680790', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-06 10:52:28.691951', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-06 10:52:28.728020', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-06 10:52:28.754025', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-06 10:52:30.222526', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-06 10:52:30.228830', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-06 10:52:30.238836', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-06 10:52:30.289484', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-06 10:52:30.343943', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-06 10:52:30.343943', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-06 10:52:30.344959', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-06 10:52:30.349008', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-06 10:52:30.350241', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-06 10:52:30.355370', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-06 10:52:31.372944', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-06 10:52:31.383969', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-06 10:52:31.394481', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-06 10:52:31.403644', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-06 10:52:31.456727', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-06 10:52:31.468853', '/myapp/index/thing/detail', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-06 10:52:32.615003', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-06 10:52:32.623001', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-06 10:52:32.628534', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-06 10:52:32.667884', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-06 10:52:33.632729', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-06 10:52:33.647735', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-06 10:52:33.652735', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-06 10:52:33.666730', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-06 10:52:33.708288', '/myapp/index/thing/detail', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-06 10:52:33.720791', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-06 10:52:34.476324', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-06 10:52:34.487355', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-06 10:52:34.495867', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-06 10:52:34.541963', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-06 10:52:36.178944', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-06 10:52:36.576153', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-06 10:52:37.863231', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-06 10:52:46.901275', '/upload/cover/1720234206513.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-06 10:52:56.057652', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-06 10:52:56.066660', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-06 10:52:56.070724', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-06 10:52:56.101043', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-06 10:52:56.136952', '/myapp/admin/ad/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-06 10:52:56.146244', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-06 10:52:59.869948', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-06 10:52:59.873951', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-06 10:52:59.880210', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-06 10:52:59.922303', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-06 10:53:01.247103', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-06 10:53:01.252114', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-06 10:53:01.264072', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-06 10:53:01.275270', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-06 10:53:01.317997', '/myapp/index/thing/detail', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-06 10:53:01.345880', '/myapp/index/thing/detail', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-06 10:53:06.479417', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-06 10:53:06.476437', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-06 10:53:06.488418', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-06 10:53:06.530546', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-06 10:53:07.912771', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-06 10:53:07.926793', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-06 10:53:07.933781', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-06 10:53:07.950755', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-06 10:53:07.988545', '/myapp/index/thing/detail', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-06 10:53:08.013681', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-06 10:53:12.145527', '/myapp/index/comment/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-06 10:53:12.195424', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-06 10:53:17.181320', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-06 10:53:17.228528', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-06 10:53:20.383999', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-06 10:53:20.390005', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-06 10:53:20.397002', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-06 10:53:20.438590', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-06 10:53:20.481234', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-06 10:53:20.482231', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-06 10:53:20.485246', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-06 10:53:20.485246', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-06 10:53:20.488276', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-06 10:53:20.492583', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-06 10:53:20.522605', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-06 10:53:21.641343', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-06 10:53:21.655171', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-06 10:53:21.668338', '/myapp/index/thing/getRecommend', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-06 10:53:21.683785', '/myapp/index/thing/getRecommend', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-06 10:53:21.706590', '/myapp/index/thing/getRecommend', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-06 10:53:21.738641', '/myapp/index/thing/getRecommend', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-06 10:53:25.615282', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-06 10:53:25.622302', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-06 10:53:25.635364', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-06 10:53:25.677690', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-06 10:53:27.206017', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-06 10:53:27.241153', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-06 10:53:27.247197', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-06 10:53:27.253216', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-06 10:53:27.289792', '/myapp/admin/ad/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-06 10:53:27.324824', '/myapp/admin/ad/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-06 10:53:36.998575', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-06 10:53:37.010624', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-06 10:53:37.026589', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-06 10:53:37.057053', '/myapp/index/classification/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-06 10:53:45.522086', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-06 10:53:45.551716', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-06 10:53:45.592878', '/myapp/index/user/info', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-06 10:53:45.996887', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-06 10:53:46.002880', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-06 10:53:46.011882', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-06 10:53:46.055273', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-06 10:53:46.647801', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-06 10:53:47.264298', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-06 10:53:57.061146', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-06 10:53:57.067770', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-06 10:53:57.073970', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-06 10:53:57.113566', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-06 10:53:57.139953', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-06 10:53:57.168947', '/myapp/admin/ad/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-06 10:54:12.323538', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-06 10:54:12.328193', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-06 10:54:12.346210', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-06 10:54:12.390607', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-06 10:54:13.018708', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-06 10:54:13.032245', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-06 10:54:13.076622', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-06 10:55:22.000907', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-06 10:55:22.006258', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-06 10:55:22.012923', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-06 10:55:22.047403', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-06 10:55:23.539821', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-06 10:55:23.554737', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-06 10:55:23.604586', '/myapp/index/thing/getRecommend', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-06 10:55:30.016022', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-06 10:55:30.021056', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-06 10:55:30.039045', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-06 10:55:30.075707', '/myapp/index/user/info', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-06 10:55:31.930131', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-06 10:55:31.942309', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-06 10:55:31.988676', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-06 10:55:32.886168', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-06 10:55:32.903142', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-06 10:55:32.908792', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-06 10:55:32.941986', '/myapp/index/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-06 10:55:45.744303', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-06 10:55:45.740248', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-06 10:55:45.797500', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-06 10:55:49.341783', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-06 10:55:49.356147', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-06 10:55:49.362146', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-06 10:55:49.409816', '/myapp/index/classification/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-06 10:55:53.733641', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-06 10:55:53.748015', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-06 10:55:53.793113', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-06 10:56:29.677394', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-06 10:56:29.681414', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-06 10:56:34.912214', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-06 10:56:34.917223', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-06 10:56:34.928468', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-06 10:56:34.948550', '/upload/cover/1720232758564.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-06 10:57:01.887170', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-06 10:57:01.892163', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-06 10:57:01.948770', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-06 10:57:02.008383', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-06 10:57:02.009357', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-06 10:57:02.009357', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-06 10:57:02.011517', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-06 10:57:02.013695', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-06 10:57:02.023070', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-06 10:57:02.034762', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-06 10:57:02.035760', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-06 10:57:02.037767', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-06 10:57:02.039761', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-06 10:57:02.039761', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-06 10:57:38.621917', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-06 10:57:38.630424', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-06 10:57:38.674709', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-06 10:57:38.697652', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-06 10:57:38.698648', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-06 10:57:44.352059', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-06 10:57:44.360020', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-06 10:57:44.380255', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-06 10:57:44.398380', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-06 10:57:44.403456', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-06 10:57:44.423697', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-06 10:57:45.834893', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-06 10:57:46.527377', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-06 10:58:36.161878', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-06 10:58:40.553145', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-06 10:58:40.555809', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-06 10:58:40.560921', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-06 10:58:40.564454', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-06 10:58:40.603424', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-06 10:58:40.605429', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-06 10:58:40.616758', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-06 10:58:40.651363', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-06 10:58:40.652584', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-06 10:58:40.652584', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-06 10:58:42.959625', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-06 10:58:43.005070', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-06 10:58:43.476591', '/myapp/index/thing/addCollectUser', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-06 10:58:43.560214', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-06 10:58:45.194718', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-06 10:58:45.202997', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-06 10:58:45.251628', '/myapp/admin/ad/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-06 10:58:45.274037', '/myapp/admin/ad/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-06 10:58:47.069912', '/myapp/index/thing/addWishUser', 'POST', NULL, '108');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-06 10:58:47.109905', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-06 10:58:47.592969', '/myapp/index/thing/addCollectUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-06 10:58:47.634472', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-06 10:58:48.012997', '/myapp/index/thing/addCollectUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-06 10:58:48.086201', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-06 10:58:48.780888', '/myapp/index/thing/addWishUser', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-06 10:58:48.829132', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-06 10:58:52.085262', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-06 10:58:52.699290', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-06 11:02:09.650182', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-06 11:02:09.670781', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-06 11:02:09.670781', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-06 11:02:09.671884', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-06 11:02:10.961096', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-06 11:02:12.457574', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-06 11:02:14.379392', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-06 11:02:15.939272', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-06 11:02:22.674199', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-06 11:02:28.769718', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-06 11:02:29.254574', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-06 11:02:36.758095', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-06 11:02:36.819664', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-06 11:02:39.210986', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-06 11:02:39.217984', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-06 11:02:39.247306', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-06 11:02:39.251311', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-06 11:02:39.262947', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-06 11:02:39.277610', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-06 11:02:41.141217', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-06 11:02:41.200895', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-06 11:02:42.767434', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-06 11:02:42.775261', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-06 11:02:42.805197', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-06 11:02:42.815191', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-06 11:02:42.822530', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-06 11:02:42.825539', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-06 11:02:42.840680', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-06 11:02:42.858956', '/upload/cover/1720234206513.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-06 11:02:47.631898', '/myapp/index/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-06 11:02:48.050136', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-06 11:02:48.069950', '/myapp/index/thing/listUserThing', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-06 11:02:58.602515', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-06 11:02:59.461406', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-06 11:03:00.154456', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-06 11:03:00.280321', '/myapp/admin/classification/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-06 11:03:40.969377', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-06 11:03:40.972383', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-06 11:03:40.993858', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-06 11:03:41.021354', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-06 11:03:41.058114', '/upload/cover/1720234222683.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-06 11:03:41.058114', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-06 11:03:41.059593', '/upload/cover/1720234222683.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-06 11:03:41.067398', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-06 11:03:41.074407', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-06 11:03:41.090713', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-06 11:03:41.097234', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-06 11:03:41.098235', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-06 11:03:41.100238', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-06 11:03:41.101238', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-06 11:03:42.676925', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-06 11:03:42.670316', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-06 11:03:42.674923', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-06 11:03:42.694919', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-06 11:03:42.720167', '/myapp/index/comment/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-07-06 11:03:42.752184', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-07-06 11:03:47.965224', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-07-06 11:03:47.974224', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-07-06 11:03:47.989219', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-07-06 11:03:48.004497', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-07-06 11:03:48.043518', '/myapp/index/thing/detail', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-07-06 11:03:48.064765', '/myapp/index/thing/detail', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-07-06 11:04:13.961902', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-07-06 11:04:13.969532', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-07-06 11:04:13.975099', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-07-06 11:04:14.002461', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-07-06 11:04:14.050299', '/myapp/index/user/info', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-07-06 11:04:14.057931', '/myapp/index/user/info', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-07-06 11:04:14.109397', '/upload/cover/1720234206513.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-07-06 11:05:10.404994', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-07-06 11:05:10.486609', '/myapp/admin/classification/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-07-06 11:05:10.674003', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-07-06 11:05:10.686529', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-07-06 11:05:10.692933', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-07-06 11:05:10.702034', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-07-06 11:05:10.724943', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-07-06 11:05:10.742418', '/myapp/index/comment/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-07-06 11:05:10.774281', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-07-06 11:05:10.775423', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-07-06 11:05:10.776433', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-07-06 11:05:13.577448', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-07-06 11:05:13.584396', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-07-06 11:05:13.618821', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-07-06 11:05:13.625907', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-07-06 11:05:13.639289', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-07-06 11:05:13.673324', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-07-06 11:05:14.822567', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-07-06 11:05:15.164658', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-07-06 11:05:17.200342', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-07-06 11:05:27.419612', '/myapp/index/user/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-07-06 11:05:28.612559', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-07-06 11:05:28.619895', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-07-06 11:05:28.652438', '/upload/avatar/1720235120630.png', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-07-06 11:05:28.656434', '/upload/avatar/1720235120630.png', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-07-06 11:05:28.668912', '/upload/avatar/1720235120630.png', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-07-06 11:05:28.669923', '/upload/avatar/1720235120630.png', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-07-06 11:05:28.686939', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-07-06 11:05:30.759732', '/myapp/index/comment/listMyComments', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-07-06 11:05:32.825074', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-07-06 11:05:34.616388', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-07-06 11:05:35.633684', '/myapp/index/comment/listMyComments', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-07-06 11:06:36.456339', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-07-06 11:06:36.565378', '/myapp/admin/classification/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-07-06 11:06:36.838122', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-07-06 11:06:36.850137', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-07-06 11:06:36.900097', '/upload/avatar/1720235120630.png', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-07-06 11:06:36.903569', '/upload/avatar/1720235120630.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-07-06 11:06:36.918018', '/upload/avatar/1720235120630.png', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-07-06 11:06:36.925445', '/upload/avatar/1720235120630.png', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-07-06 11:06:36.931755', '/upload/avatar/1720235120630.png', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-07-06 11:06:37.929270', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-07-06 11:06:38.495406', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-07-06 11:06:39.339387', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-07-06 11:06:42.561268', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-07-06 11:06:44.005606', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-07-06 11:06:46.328236', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-07-06 11:06:46.333253', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-07-06 11:06:46.350059', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-07-06 11:06:46.381865', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-07-06 11:06:46.421018', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-07-06 11:06:46.422027', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-07-06 11:06:46.423828', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-07-06 11:06:46.422027', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-07-06 11:06:46.425873', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-07-06 11:06:46.436707', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-07-06 11:06:46.438717', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-07-06 11:06:46.458815', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-07-06 11:06:46.458815', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-07-06 11:06:46.458815', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-07-06 11:06:46.461800', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-07-06 11:06:46.463296', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-07-06 11:06:46.892364', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-07-06 11:06:46.903274', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-07-06 11:06:46.932876', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-07-06 11:06:47.578648', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-07-06 11:06:47.587438', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-07-06 11:06:47.601437', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-07-06 11:06:47.621193', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-07-06 11:06:47.630190', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-07-06 11:06:47.647593', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-07-06 11:06:48.547821', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-07-06 11:06:48.553831', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-07-06 11:06:48.561862', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-07-06 11:06:48.601995', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-07-06 11:06:50.781805', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-07-06 11:06:50.790811', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-07-06 11:06:50.801222', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-07-06 11:06:50.810257', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-07-06 11:06:50.843145', '/myapp/admin/ad/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-07-06 11:06:50.849126', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-07-06 11:06:55.807392', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-07-06 11:06:55.816024', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-07-06 11:06:55.820027', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-07-06 11:06:55.857989', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-07-06 11:07:00.425933', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-07-06 11:07:00.450556', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-07-06 11:07:00.440454', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-07-06 11:07:00.486743', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-07-06 11:07:00.491292', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-07-06 11:07:00.508688', '/myapp/index/thing/getRecommend', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-07-06 11:07:02.037806', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-07-06 11:07:02.045435', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-07-06 11:07:02.055476', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-07-06 11:07:02.094598', '/myapp/index/user/info', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-07-06 11:07:04.032721', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-07-06 11:07:04.034720', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-07-06 11:07:04.039720', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-07-06 11:07:04.043719', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-07-06 11:07:04.071456', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-07-06 11:07:04.097629', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-07-06 11:07:04.094098', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-07-06 11:07:05.245396', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-07-06 11:07:05.249413', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-07-06 11:07:05.255405', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-07-06 11:07:05.299071', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-07-06 11:08:01.232325', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-07-06 11:08:01.240236', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-07-06 11:08:01.246750', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-07-06 11:08:01.280630', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-07-06 11:08:03.202567', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-07-06 11:08:03.206567', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-07-06 11:08:03.236562', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-07-06 11:08:03.235563', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-07-06 11:08:03.287575', '/upload/avatar/1720235120630.png', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-07-06 11:08:03.295573', '/upload/avatar/1720235120630.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-07-06 11:08:03.306573', '/upload/avatar/1720235120630.png', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-07-06 11:08:05.408677', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-07-06 11:08:05.419087', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-07-06 11:08:05.446179', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-07-06 11:08:07.059693', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-07-06 11:08:07.065980', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-07-06 11:08:07.084245', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-07-06 11:08:07.108291', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-07-06 11:08:07.115296', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-07-06 11:08:07.128521', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-07-06 11:08:09.859953', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-06 11:08:09.865986', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-06 11:08:09.874032', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-06 11:08:09.881393', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-06 11:08:09.911390', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-06 11:08:09.938601', '/myapp/index/thing/detail', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-06 11:08:11.520796', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-06 11:08:11.524823', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-06 11:08:11.530795', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-06 11:08:11.578765', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-06 11:08:14.751429', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-06 11:08:14.757416', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-06 11:08:14.769170', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-06 11:08:14.786609', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-06 11:08:14.794210', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-06 11:08:14.824093', '/myapp/index/user/info', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-06 11:08:16.954504', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-06 11:08:16.960774', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-06 11:08:16.991910', '/myapp/admin/ad/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-07-06 11:08:17.034826', '/myapp/admin/ad/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-07-06 11:08:18.241350', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-07-06 11:08:18.257384', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-07-06 11:08:18.278765', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-07-06 11:08:18.314010', '/myapp/index/comment/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-07-06 11:08:40.011659', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-07-06 11:08:40.126151', '/myapp/admin/classification/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-07-06 11:08:45.250921', '/myapp/admin/adminLogin', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-07-06 11:08:45.383329', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-07-06 11:08:45.469936', '/myapp/admin/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-07-06 11:08:46.404460', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-07-06 11:08:54.877875', '/myapp/admin/user/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-07-06 11:08:54.918502', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-07-06 11:09:04.630029', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-07-06 11:09:04.707131', '/myapp/admin/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-07-06 11:09:05.027816', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-07-06 11:09:05.573338', '/myapp/admin/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-07-06 11:09:07.641289', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-07-06 11:09:11.752748', '/myapp/admin/loginLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-07-06 11:09:12.425303', '/myapp/admin/opLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-07-06 11:09:13.154877', '/myapp/admin/errorLog/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-07-06 11:09:16.746277', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-07-06 11:09:17.560605', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-07-06 11:09:17.943444', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-07-06 11:09:32.889427', '/myapp/admin/ad/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-07-06 11:09:32.961106', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-07-06 11:09:33.011821', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-07-06 11:09:35.336786', '/myapp/admin/notice/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-07-06 11:09:41.310958', '/myapp/admin/notice/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-07-06 11:09:41.328873', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-07-06 11:09:48.314835', '/myapp/admin/notice/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-07-06 11:09:48.340301', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-07-06 11:09:50.722632', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-07-06 11:09:54.448862', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-07-06 11:09:54.456054', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-07-06 11:09:54.462067', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-07-06 11:09:54.494899', '/upload/avatar/1720235120630.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-07-06 11:09:54.508897', '/upload/avatar/1720235120630.png', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-07-06 11:09:54.540422', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-07-06 11:09:54.540422', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-07-06 11:09:54.541641', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-07-06 11:09:54.543125', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-07-06 11:09:54.543125', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-07-06 11:09:54.566760', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-07-06 11:09:54.567998', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-07-06 11:09:54.569462', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-07-06 11:09:54.569462', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-07-06 11:09:54.573211', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-07-06 11:09:54.575529', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-07-06 11:09:57.807241', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-07-06 11:09:57.815821', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-07-06 11:10:20.026014', '/myapp/index/feedback/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-07-06 11:10:22.283263', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-07-06 11:10:22.286262', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-07-06 11:10:22.320117', '/upload/avatar/1720235120630.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-07-06 11:10:24.585551', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-07-06 11:10:25.525268', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-07-06 11:10:28.675669', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1092');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-07-06 11:10:29.958673', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-07-06 11:10:30.939805', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-07-06 11:10:31.584702', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-07-06 11:10:32.198619', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-07-06 11:10:33.548350', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-07-06 11:10:53.624619', '/myapp/admin/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-07-06 11:10:55.105161', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-07-06 11:10:55.218148', '/myapp/admin/classification/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-07-06 11:11:08.155989', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-07-06 11:11:08.321704', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-07-06 11:11:30.084026', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-07-06 11:11:30.209118', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-07-06 11:11:36.382926', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-07-06 11:11:41.163265', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-07-06 11:11:44.123713', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-07-06 11:11:45.460720', '/myapp/admin/overview/count', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-07-06 11:11:46.213258', '/myapp/admin/feedback/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-07-06 11:11:48.060592', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1045');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-07-06 11:11:48.670424', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-07-06 11:11:48.739320', '/myapp/admin/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-07-06 11:11:55.212809', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-07-06 11:11:55.216005', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-07-06 11:11:55.249565', '/myapp/index/notice/list_api', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-07-06 11:11:56.426769', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-07-06 11:11:56.442034', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-07-06 11:11:56.455776', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-07-06 11:11:56.470781', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-07-06 11:11:56.479792', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-07-06 11:11:56.494462', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-07-06 11:11:57.623457', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-07-06 11:11:57.625455', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-07-06 11:11:57.666232', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-07-06 11:11:59.790739', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-07-06 11:11:59.798508', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-07-06 11:11:59.814876', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-07-06 11:11:59.824917', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-07-06 11:11:59.831917', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-07-06 11:11:59.868224', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-07-06 11:12:03.148952', '/myapp/index/comment/listMyComments', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-07-06 11:12:07.198646', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-07-06 11:12:07.220928', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-07-06 11:12:07.215922', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-07-06 11:12:07.275382', '/upload/avatar/1720235120630.png', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-07-06 11:12:07.286397', '/upload/avatar/1720235120630.png', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-07-06 11:12:07.287593', '/upload/avatar/1720235120630.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-07-06 11:12:07.291785', '/upload/avatar/1720235120630.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-07-06 11:12:07.299794', '/upload/avatar/1720235120630.png', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-07-06 11:12:07.319599', '/upload/avatar/1720235120630.png', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-07-06 11:12:07.343924', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-07-06 11:12:07.345951', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-07-06 11:12:07.347301', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-07-06 11:12:07.348774', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-07-06 11:12:10.919141', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-07-06 11:12:10.924139', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-07-06 11:12:10.960531', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-07-06 11:12:10.972032', '/myapp/index/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-07-06 11:12:12.778537', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-07-06 11:12:13.544586', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-07-06 11:12:14.142422', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-07-06 11:12:15.138726', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-07-06 11:12:15.179999', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-07-06 11:12:15.194092', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-07-06 11:12:15.974456', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-07-06 11:12:15.979457', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-07-06 11:12:16.004924', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-07-06 11:12:16.027304', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-07-06 11:12:28.246539', '/myapp/index/user/register', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-07-06 11:12:30.185581', '/myapp/index/user/login', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-07-06 11:12:30.223098', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-07-06 11:12:30.228603', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-07-06 11:12:30.246398', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-07-06 11:12:30.275399', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-07-06 11:12:32.138808', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-07-06 11:12:32.150795', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-07-06 11:12:32.144952', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-07-06 11:12:32.172125', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-07-06 11:12:32.197547', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-07-06 11:12:32.199930', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-07-06 11:12:32.210060', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-07-06 11:12:36.339862', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-07-06 11:12:36.346718', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-07-06 11:12:36.354696', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-07-06 11:12:36.359945', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-07-06 11:12:36.390731', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-07-06 11:12:36.412319', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-07-06 11:13:19.679669', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-07-06 11:13:19.686668', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-07-06 11:13:19.695669', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-07-06 11:13:19.712668', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-07-06 11:13:19.731821', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-07-06 11:13:19.739486', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-07-06 11:13:19.774329', '/upload/ad/1720235370354.jpeg', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-07-06 11:13:22.536575', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-07-06 11:13:22.539574', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-07-06 11:13:22.544939', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-07-06 11:13:22.563051', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-07-06 11:13:22.601207', '/myapp/index/thing/getRecommend', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-07-06 11:13:22.609053', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-07-06 11:13:31.160518', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-07-06 11:13:31.174504', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-07-06 11:13:31.176500', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-07-06 11:13:31.180493', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-07-06 11:13:31.224290', '/myapp/admin/ad/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-07-06 11:13:31.244119', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-07-06 11:13:36.466487', '/myapp/index/comment/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-07-06 11:13:36.544483', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-07-06 11:13:39.406944', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-07-06 11:13:39.452448', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-07-06 11:14:53.302863', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-07-06 11:14:53.307859', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-07-06 11:14:53.345070', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-07-06 11:14:53.373142', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-07-06 11:14:53.375513', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-07-06 11:14:53.377693', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-07-06 11:14:53.377693', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-07-06 11:14:53.378756', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-07-06 11:14:53.396910', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-07-06 11:14:53.397918', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-07-06 11:14:53.397918', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-07-06 11:14:53.402078', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-07-06 11:14:53.402078', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-07-06 11:14:53.404506', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-07-06 11:14:53.406613', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-07-06 11:14:54.832518', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-07-06 11:14:54.835518', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-07-06 11:14:54.843865', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-07-06 11:14:54.875183', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-07-06 11:14:55.298062', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-07-06 11:14:55.310080', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-07-06 11:14:55.348945', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-07-06 11:14:56.341303', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-07-06 11:14:56.349926', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-07-06 11:14:56.358977', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-07-06 11:14:56.389609', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-07-06 11:14:57.181168', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-07-06 11:14:57.185196', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-07-06 11:14:57.223579', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-07-06 11:14:58.248775', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-07-06 11:14:58.252595', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-07-06 11:14:58.258025', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-07-06 11:14:58.291819', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-07-06 11:15:22.385620', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-07-06 11:15:22.541768', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-07-06 11:15:24.842265', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-07-06 11:15:25.362611', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-07-06 11:16:17.327728', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-07-06 11:16:17.418111', '/myapp/admin/classification/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-07-06 11:16:17.456666', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-07-06 11:16:17.459665', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-07-06 11:16:17.466209', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-07-06 11:16:17.493505', '/myapp/index/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-07-06 11:16:19.479111', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-07-06 11:16:19.485604', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-07-06 11:16:19.521180', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-07-06 11:16:20.096601', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-07-06 11:16:20.094601', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-07-06 11:16:20.121221', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-07-06 11:16:20.132234', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-07-06 11:17:00.202116', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-07-06 11:17:00.207125', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-07-06 11:17:00.231698', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-07-06 11:17:00.229673', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-07-06 11:17:03.208885', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-07-06 11:17:03.216956', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-07-06 11:17:03.222956', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-07-06 11:17:03.250179', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-07-06 11:17:05.851407', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-07-06 11:17:05.860864', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-07-06 11:17:05.915499', '/myapp/index/thing/getRecommend', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-07-06 11:17:06.632324', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-07-06 11:17:06.636349', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-07-06 11:17:06.644321', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-07-06 11:17:06.677885', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-07-06 11:17:12.398384', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-07-06 11:17:13.392056', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-07-06 11:18:07.455420', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-07-06 11:18:07.465175', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-07-06 11:18:07.503175', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-07-06 11:18:08.036565', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-07-06 11:18:08.040058', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-07-06 11:18:08.061462', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-07-06 11:18:08.091638', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-07-06 11:18:09.995548', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-07-06 11:18:09.999946', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-07-06 11:18:10.043532', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-07-06 11:18:10.681138', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-07-06 11:18:10.686879', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-07-06 11:18:10.695279', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-07-06 11:18:10.729534', '/myapp/index/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-07-06 11:18:23.822939', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-07-06 11:18:24.756240', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-07-06 11:18:26.094552', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-07-06 11:18:26.659700', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-07-06 11:18:27.381348', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-07-06 11:18:29.387603', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-07-06 11:18:29.392871', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-07-06 11:18:29.433463', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-07-06 11:18:30.099410', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-07-06 11:18:30.104389', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-07-06 11:18:30.109385', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-07-06 11:18:30.146090', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-07-06 11:18:34.370154', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-07-06 11:18:34.443030', '/myapp/admin/classification/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-07-06 11:18:37.219497', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-07-06 11:18:37.356425', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-07-06 11:18:37.421009', '/myapp/admin/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-07-06 11:18:42.342763', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-07-06 11:18:46.062076', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-07-06 11:18:46.941424', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2024-07-06 11:18:47.986921', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2024-07-06 11:18:49.651336', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2024-07-06 11:18:49.806036', '/myapp/admin/classification/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2024-07-06 11:18:53.601005', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2024-07-06 11:18:54.805194', '/myapp/admin/overview/count', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2024-07-06 11:18:55.777740', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2024-07-06 11:18:55.881369', '/myapp/admin/classification/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2024-07-06 11:20:07.850882', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2024-07-06 11:20:07.856328', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2024-07-06 11:20:07.870474', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2024-07-06 11:20:07.874474', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2024-07-06 11:20:11.141462', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2024-07-06 11:20:11.144946', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2024-07-06 11:20:11.151630', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2024-07-06 11:20:11.182272', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2024-07-06 11:20:11.244702', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2024-07-06 11:20:11.248702', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2024-07-06 11:20:11.260741', '/upload/cover/1720234222683.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2024-07-06 11:20:11.267741', '/upload/cover/1720234228738.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2024-07-06 11:20:11.269735', '/upload/cover/1720234211391.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2024-07-06 11:20:11.281737', '/upload/cover/1720234216438.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2024-07-06 11:20:11.282743', '/upload/cover/1720234235088.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2024-07-06 11:20:11.290385', '/upload/cover/1720234240793.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2024-07-06 11:20:11.298396', '/upload/cover/1720234246257.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2024-07-06 11:20:11.303759', '/upload/cover/1720234251330.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2024-07-06 11:20:11.305759', '/upload/cover/1720234257625.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2024-07-06 11:20:11.309831', '/upload/cover/1720234265397.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2024-07-06 11:20:13.922781', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2024-07-06 11:20:13.928821', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2024-07-06 11:20:13.960863', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2024-07-06 11:20:14.789648', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2024-07-06 11:20:14.795577', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2024-07-06 11:20:14.806397', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2024-07-06 11:20:14.846224', '/myapp/index/user/info', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2024-07-06 11:20:23.542615', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2024-07-06 11:20:23.546609', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2024-07-06 11:20:23.579792', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2024-07-06 11:20:29.714096', '/myapp/index/user/login', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2024-07-06 11:20:29.778863', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2024-07-06 11:20:29.790436', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2024-07-06 11:20:29.795001', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2024-07-06 11:20:29.830992', '/myapp/index/user/info', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2024-07-06 11:20:33.848687', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2024-07-06 11:20:33.854683', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2024-07-06 11:20:33.871321', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2024-07-06 11:20:33.876380', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2024-07-06 11:20:33.886714', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2024-07-06 11:20:33.894231', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2024-07-06 11:20:41.602299', '/myapp/index/user/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2024-07-06 11:20:42.457056', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2024-07-06 11:20:42.462158', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2024-07-06 11:20:42.468680', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2024-07-06 11:20:42.474653', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2024-07-06 11:20:42.493608', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2024-07-06 11:20:42.506135', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2024-07-06 11:20:42.514130', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2024-07-06 11:20:43.884309', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2024-07-06 11:20:43.899941', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2024-07-06 11:20:43.912493', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2024-07-06 11:20:43.945507', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2024-07-06 11:20:55.646767', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2024-07-06 11:20:55.690437', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2024-07-06 11:20:58.062231', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2024-07-06 11:20:58.107445', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2024-07-06 11:20:59.095403', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2024-07-06 11:20:59.124233', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2024-07-06 11:20:59.148995', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2024-07-06 11:21:08.946068', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2024-07-06 11:21:08.950590', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2024-07-06 11:21:08.985137', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2024-07-06 11:21:08.995638', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2024-07-06 11:21:09.011657', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2024-07-06 11:21:09.020862', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2024-07-06 11:21:09.021866', '/upload/ad/1720232422427.jpeg', 'GET', NULL, '1');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (4, 4, 17, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 8, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 10, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 15, 4, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 5, 4, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 7, 6, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 14, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 6, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 6, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (13, 5, 7, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (15, 7, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (16, 14, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (4, '学校举办2024年中外合作办学高质量发展交流会', 'cover/1720232758564.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 17, 0, 1, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (5, '弗利特集团与杭州电子大学携手共建联合实验室大学携手共建联合实验室', 'cover/1720234206513.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 25, 0, 1, 1, 5, NULL, 3);
INSERT INTO `b_thing` VALUES (6, '带你挂号、候诊、进诊室，“AI陪诊师”将亮相人工智能大会', 'cover/1720234211391.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '经济学院', '0', '2024-07-06 10:15:45.234582', 22, 0, 1, 1, 2, NULL, 3);
INSERT INTO `b_thing` VALUES (7, '伴随AI技术应用深入，医疗服务领域迎来创新发展。', 'cover/1720234216438.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 22, 0, 2, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (8, '世界人工智能大会暨人工智能全球治理高级别会议将于7月4日开幕', 'cover/1720234222683.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '物理学院', '0', '2024-07-06 10:15:45.234582', 15, 0, 1, 1, 1, NULL, 3);
INSERT INTO `b_thing` VALUES (9, '以大模型、数字人等技术为基础，为患者提供双向交互陪伴式就医服务', 'cover/1720234228738.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 14, 0, 1, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (10, '“大医”还能为用户量身打造个人健康档案，实现全周期个人健康管理', 'cover/1720234235088.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 16, 0, 1, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (11, '系全市首个基于大模型的语音交互“AI陪诊师”，医院还利用AI大模型能力辅助', 'cover/1720234240793.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 14, 0, 1, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (12, '实现患者健康画像，充当患者的“随身AI智慧健康管家”', 'cover/1720234246257.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 14, 0, 1, 1, 4, NULL, 3);
INSERT INTO `b_thing` VALUES (13, '为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献', 'cover/1720234251330.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 14, 0, 1, 1, 4, NULL, 3);
INSERT INTO `b_thing` VALUES (14, '学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体', 'cover/1720234257625.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 16, 0, 1, 1, 3, NULL, 3);
INSERT INTO `b_thing` VALUES (15, '鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风', 'cover/1720234265397.jpeg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp;学校在现代服务业公共技能实训基地报告厅举行2024年暑期“三下乡”社会实践启动仪式，学校党委副书记宋超、学生工作处处长李子江、各实践团队师生代表参加此次活动，团委书记李伟主持会议。</span></p><p> &nbsp; &nbsp;宋超为学生代表授旗，标志着学校暑期“三下乡”社会实践活动正式启动，随后宋超发表讲话，他向实践团队成员提出四点希望，一是要坚定理想信念，做新时代的奋斗者，二是要深入基层，服务群众，三是要勇于实践，增长才干，四是要严守组织纪律，确保安全，并鼓励学生在实践中增长智慧才干，以饱满的热情、昂扬的斗志、务实的作风，投身到实践活动中去，为推动社会主义新农村建设、促进社会和谐稳定作出积极贡献！</p><p> &nbsp; &nbsp;活动中，李子江宣读了2024年学校暑期“三下乡”社会实践团队名单，全校各学院、部门共25支队伍，近300名师生深入基层一线参与实践活动。随后，学生代表智能机器人产业学院韩晴晴发言，她号召广大学生积极响应上级号召，以实际行动践行青春宣言。</p><p><img src=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" alt=\"\" data-href=\"https://www.sict.edu.cn/uploads/2024/0628/1719540284363c9e9a3737d98e.jpg\" style=\"width: 691.00px;height: 460.32px;\"/></p><p> &nbsp; &nbsp;此次暑期“三下乡”社会实践活动不仅是学校“三全育人”的重要举措，更是青年学子展示风采，实现自身价值的有效载体。商职学子定将以实际行动投身基层，为乡村发展贡献青春力量。</p><p style=\"text-indent: 2em; text-align: justify;\">王鑫首先代表学校对王剑波来校指导表示欢迎，随后简要介绍了学校中外合作办学情况，希望与会的学校相关部门、二级学院及专业负责人利用此次难得的学习交流机会，进一步提高业务能力和履职本领。王剑波的报告全面解读了职业教育国际交流与合作在建设教育强国中的重要作用，深入剖析了全球教育格局的演变趋势，阐述了新形势下职业院校国际化发展的新要求。通过解读国际先进教育理念和模式，分析众多国内外院校成功的国际交流案例，为学校中外合作办学及国际交流工作开创新局面给出了策略、方法和技巧方面的指导。报告高屋建瓴的理论视角、切实可行的实践意义，为我们带来了全新的思路和深刻的启示。报告结束后，参会人员与王剑波就中外合作办学及职教“出海”的政策、模式及发展趋势等方面展开了讨论。在我校国际交流工作高质量创新发展的关键时期，此次交流活动为我校提升办学质量，办出“山商”特色，以“高质量”引进来服务学校“高水平”走出去提供了坚实的理论支撑和宝贵的实践指引。</p>', '信息学院', '0', '2024-07-06 10:15:45.234582', 18, 0, 2, 1, 3, NULL, 3);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 4, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 4, 3);
INSERT INTO `b_thing_wish` VALUES (4, 7, 3);
INSERT INTO `b_thing_wish` VALUES (3, 15, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-05 21:14:47.194772', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '哈哈哈哈哈999', 'avatar/1720235120630.png', NULL, NULL, NULL, '00999', '2024-07-06 10:06:06.487464', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-06 11:08:54.864177', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', 'jhhg', 'avatar/1720236037939.png', NULL, NULL, NULL, NULL, '2024-07-06 11:12:28.242540', 0, NULL, 0, NULL, 'b990a1577e88882a43f26b232d85632b');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-05 20:42:41.873703');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-05 20:42:42.184106');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-05 20:42:42.235214');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-05 20:42:42.241276');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-05 20:42:42.246294');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-05 20:42:42.332640');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-05 20:42:42.399017');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-05 20:42:42.463250');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-05 20:42:42.469724');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-05 20:42:42.631706');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-05 20:42:42.635533');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-05 20:42:42.642396');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-05 20:42:42.693591');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-05 20:42:42.764731');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-05 20:42:42.805817');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-05 20:42:42.811817');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-05 20:42:42.867074');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-05 20:42:43.759461');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-05 20:42:43.821484');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-05 20:42:44.031471');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-05 20:42:44.123735');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240705_2041', '2024-07-05 20:42:44.706180');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-05 20:42:44.756362');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_alter_thing_description', '2024-07-06 10:31:06.435697');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
