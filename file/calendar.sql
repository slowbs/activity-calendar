/*
 Navicat Premium Data Transfer

 Source Server         : eiei
 Source Server Type    : MySQL
 Source Server Version : 100133
 Source Host           : localhost:3306
 Source Schema         : calendar

 Target Server Type    : MySQL
 Target Server Version : 100133
 File Encoding         : 65001

 Date: 12/06/2019 16:38:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(0) NOT NULL,
  `end_time` time(0) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(5) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES (7, 'boom2', 'yah', 'ruk2', '2018-11-15', '2018-11-16', '08:30:00', '12:00:00', 1, 0, 1, '2018-11-15 09:18:18', '2018-11-22 08:43:12');
INSERT INTO `events` VALUES (8, 'fuck2', 'asdf', 'asdf', '2018-11-02', '2018-11-04', '12:12:00', '14:14:00', 2, 0, 1, '2018-11-15 15:18:07', '2018-12-19 09:44:43');
INSERT INTO `events` VALUES (9, 'eeee', '22223', 'ba', '2018-11-08', '2018-11-08', '08:02:00', '12:34:00', 2, 0, 1, '2018-11-15 15:26:55', '2018-11-21 09:54:35');
INSERT INTO `events` VALUES (12, 'this could', 'heaven', 'be', '2018-11-06', '2018-11-06', '13:00:00', '15:30:00', 1, 0, 0, '2018-11-21 10:41:04', '2018-11-21 10:41:04');
INSERT INTO `events` VALUES (13, 'i\'d', 'be royal', 'never', '2018-11-22', '2018-11-23', '14:00:00', '16:30:00', 1, 0, 1, '2018-11-22 09:33:17', '2018-11-22 09:33:34');
INSERT INTO `events` VALUES (14, '123124', '1235', '5123541', '2018-12-07', '2018-12-07', '07:30:00', '12:00:00', 1, 0, 1, '2018-12-13 11:22:39', '2018-12-13 11:46:40');
INSERT INTO `events` VALUES (15, 'test', 'database', 'time', '2018-12-18', '2018-12-18', '10:30:00', '12:58:00', 1, 0, 1, '2018-12-18 10:35:54', '2018-12-18 10:36:03');
INSERT INTO `events` VALUES (16, '1', '123', 'sdfsdf', '2018-12-19', '2018-12-20', '08:30:00', '16:00:00', 1, 0, 1, '2018-12-19 09:42:50', '2018-12-19 09:44:34');
INSERT INTO `events` VALUES (17, '2', 'fsdfs', '214', '2018-12-19', '2018-12-19', '13:00:00', '16:30:00', 2, 0, 1, '2018-12-19 09:43:33', '2018-12-19 09:44:33');
INSERT INTO `events` VALUES (18, '3', 'now', 'right', '2018-12-19', '2018-12-19', '09:00:00', '10:30:00', 2, 0, 1, '2018-12-19 09:43:57', '2018-12-19 09:44:28');
INSERT INTO `events` VALUES (19, '5', 'on', 'holding', '2018-12-19', '2018-12-19', '13:00:00', '14:30:00', 2, 0, 1, '2018-12-19 09:44:22', '2018-12-19 09:44:27');
INSERT INTO `events` VALUES (20, 'lauv', 'me better', 'like', '2018-12-19', '2018-12-21', '14:00:00', '15:30:00', 2, 0, 1, '2018-12-19 09:47:14', '2018-12-19 09:47:28');
INSERT INTO `events` VALUES (21, 'boom', 'yah', 'ba', '2018-12-19', '2018-12-19', '10:50:00', '14:50:00', 1, 0, 1, '2018-12-19 09:59:26', '2018-12-19 10:00:00');
INSERT INTO `events` VALUES (22, 'test', 'more', 'see', '2018-12-20', '2018-12-20', '13:30:00', '16:30:00', 1, 0, 1, '2018-12-19 10:01:13', '2018-12-19 10:01:23');
INSERT INTO `events` VALUES (23, 'มีสิ่งอื่น', 'ม', 'อีกไห', '2019-01-10', '2019-01-11', '08:30:00', '16:30:00', 1, 0, 1, '2019-01-09 15:09:24', '2019-01-09 15:09:40');
INSERT INTO `events` VALUES (24, 'fuck', 'life', 'my', '2019-01-17', '2019-01-18', '10:30:00', '16:30:00', 2, 2, 0, '2019-01-17 10:34:50', '2019-01-17 10:34:50');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_09_20_020718_create_events_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_10_24_090531_room', 1);
INSERT INTO `migrations` VALUES (6, '2014_10_12_000000_create_users_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES (1, 'ชั้น 5');
INSERT INTO `rooms` VALUES (2, 'ชั้น 3');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'slowbs', 'slowbs', 'slowbs@hotmail.com', NULL, '$2y$10$rUO0.D8i6Mw8oP/CsdHt.OAXrTL9xGIuH/AG3bYkmKhpx3NIWoepe', 0, 'CPJxvIfxgQFRRwZzWXmIZ7o2NOXUnf5P1f8N763nxeHWTJlCpZ4P7F6TFkUG', '2019-01-07 09:35:58', '2019-01-07 09:35:58');
INSERT INTO `users` VALUES (2, 'user', 'user', 'user@hotmail.com', NULL, '$2y$10$uMAAw9N9cUjmWdIJepUet.e5GS6DMMBRg50nu0BOUsg0rd.8x7gPm', 1, 'TaYQbWvNlyuXkvwpeTscdLTOjplWKL71U4tlEdMDkQT7NpfGxacJBa1karF0', '2019-01-07 10:04:28', '2019-01-07 10:04:28');
INSERT INTO `users` VALUES (3, 'slowbs2', 'slowbs2', 'slowbs2@hotmail.com', NULL, '$2y$10$E9bKNDsyz65NDfXmvkAu3OAAmwEslYdBUWqfNlOSisvlo3aPSjo/W', 0, 'Z912RzCNGeHyZYVWU8l2zCJyF1Btw9EUxo7NhDgfSGBMnyYgRCbtUVInKP5U', '2019-01-07 10:44:43', '2019-01-07 10:44:43');
INSERT INTO `users` VALUES (4, 'admin', 'admin', 'admin@hotmail.com', NULL, '$2y$10$q3lxD2SZ13WHlniloZEuQe98DCSAroV8u/nDrhVXnEvulS7NVOddy', 0, 'djkrKFmKYd46zHNYaO0eI6sZTwZx3oxMHA7EMnIYgaSleQla2nKeVPGQedMD', '2019-01-17 11:10:50', '2019-01-17 11:10:50');

SET FOREIGN_KEY_CHECKS = 1;
