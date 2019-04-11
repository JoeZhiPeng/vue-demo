/*
Navicat MySQL Data Transfer

Source Server         : car-21
Source Server Version : 50638
Source Host           : 192.168.69.21:3306
Source Database       : radio

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-04-10 11:45:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `biz_accgroup_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `biz_accgroup_role_map`;
CREATE TABLE `biz_accgroup_role_map` (
  `role_id` varchar(32) NOT NULL,
  `group_id` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_accgroup_role_map
-- ----------------------------
INSERT INTO `biz_accgroup_role_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '8dc9d011a74446518c2a563682e92471');
INSERT INTO `biz_accgroup_role_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '614afa8f2e964421b037035d17dc3382');
INSERT INTO `biz_accgroup_role_map` VALUES ('bdf77bafecdf4a26a4bf031241177253', '614afa8f2e964421b037035d17dc3382');
INSERT INTO `biz_accgroup_role_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '614afa8f2e964421b037035d17dc3382');
INSERT INTO `biz_accgroup_role_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('bdf77bafecdf4a26a4bf031241177253', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_accgroup_role_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '6c7a396ec5b1489384da1f9942b0807d');

-- ----------------------------
-- Table structure for `biz_account`
-- ----------------------------
DROP TABLE IF EXISTS `biz_account`;
CREATE TABLE `biz_account` (
  `account_id` varchar(32) NOT NULL,
  `account` varchar(50) NOT NULL,
  `dept_id` varchar(32) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `is_super` char(1) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `account_nick` varchar(50) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `contacts` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_account
-- ----------------------------
INSERT INTO `biz_account` VALUES ('51133bf4e91f4a11abc163727657d968', 'admin', 'af7e01d36d274f2dbc0038075a0ada29', '3a83cb392176a6b4d977effcf9f4f5d0', 'Y', '17749013799', 'admin', 'Y', '有方物联', 'guojianying@onedt.cn', 'admin', '2019-04-10 01:17:33', 'admin', '2019-03-18 08:51:50');
INSERT INTO `biz_account` VALUES ('a9c367a4a5a641f38392eb271f7c98a7', 'qiao', null, 'a0c0cc3cf6efd5aa8e5def28e556554b', 'N', '15234801152', '小qiao', 'Y', '乔志鹏', 'zhipeng.qiao@neoway.com', 'admin', '2019-03-13 02:52:08', 'admin', '2019-03-13 10:52:09');
INSERT INTO `biz_account` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', 'test01', null, '2d5078f9fab41cf6843183d3de582621', 'N', '13072970779', '测试账号', 'Y', '乔', '614231663@qq.com', 'admin', '2019-03-06 01:46:07', 'admin', '2019-03-06 09:46:08');
INSERT INTO `biz_account` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', '测试', null, '04947296fc32f909691d9cf1489f7811', 'N', '13256478452', '李花花', 'N', '李', '10926@qq.com', 'admin', '2019-03-06 15:18:41', null, null);
INSERT INTO `biz_account` VALUES ('ae3c70d7dbc241919c0b913553403d51', 'wangchao', null, 'e975ef0cc7cca51800da90c7f7ae187b', 'N', '13258977705', '22', 'Y', '22', '10@qq.com', 'admin', '2019-03-19 10:57:38', null, null);
INSERT INTO `biz_account` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '32', null, '633a22dcb2bd32e3e78b1b3ba5502551', 'N', '13259874122', '22', 'Y', '33', '10000@qq.com', 'admin', '2019-03-26 03:44:31', 'admin', '2019-03-26 11:44:31');
INSERT INTO `biz_account` VALUES ('dc9ebdcc8e924a59beff05647c765d24', 'test', null, 'a7741a5b9bde9beddd014ac78398730c', 'N', '15029373803', '测试账号', 'Y', '李', '1@qq.com', 'admin', '2019-03-29 11:19:06', null, null);
INSERT INTO `biz_account` VALUES ('64fbdc7e216c486fba92d4b674551efb', 'httest', null, 'a3b4dc2a5bd42d24c4a7df68926bdcee', 'N', '18988889999', '和田', 'Y', '张三', 'ht@neoway.com', 'admin', '2019-03-29 11:20:43', null, null);

-- ----------------------------
-- Table structure for `biz_account_accgroup_map`
-- ----------------------------
DROP TABLE IF EXISTS `biz_account_accgroup_map`;
CREATE TABLE `biz_account_accgroup_map` (
  `account_id` varchar(32) DEFAULT NULL,
  `group_id` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_account_accgroup_map
-- ----------------------------
INSERT INTO `biz_account_accgroup_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', 'e1c8c44104224a8088fd8eb0c45db976');
INSERT INTO `biz_account_accgroup_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', '1c9c4dee80164f58ad2501e793a11dde');
INSERT INTO `biz_account_accgroup_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '1c9c4dee80164f58ad2501e793a11dde');
INSERT INTO `biz_account_accgroup_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '674250975bd04ae581441756b6683967');
INSERT INTO `biz_account_accgroup_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', '674250975bd04ae581441756b6683967');
INSERT INTO `biz_account_accgroup_map` VALUES ('a9c367a4a5a641f38392eb271f7c98a7', '6c7a396ec5b1489384da1f9942b0807d');
INSERT INTO `biz_account_accgroup_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '6c7a396ec5b1489384da1f9942b0807d');

-- ----------------------------
-- Table structure for `biz_account_group`
-- ----------------------------
DROP TABLE IF EXISTS `biz_account_group`;
CREATE TABLE `biz_account_group` (
  `group_id` varchar(32) NOT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_account_group
-- ----------------------------
INSERT INTO `biz_account_group` VALUES ('8dc9d011a74446518c2a563682e92471', '业务人员组', '业务人员组');
INSERT INTO `biz_account_group` VALUES ('e1c8c44104224a8088fd8eb0c45db976', '1', '1');
INSERT INTO `biz_account_group` VALUES ('1c9c4dee80164f58ad2501e793a11dde', '测试组', '3.4测试组1');
INSERT INTO `biz_account_group` VALUES ('674250975bd04ae581441756b6683967', 'dfgb', '12');
INSERT INTO `biz_account_group` VALUES ('614afa8f2e964421b037035d17dc3382', '1111', '111');
INSERT INTO `biz_account_group` VALUES ('6c7a396ec5b1489384da1f9942b0807d', '23323333', '56565');

-- ----------------------------
-- Table structure for `biz_account_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `biz_account_role_map`;
CREATE TABLE `biz_account_role_map` (
  `account_id` varchar(32) DEFAULT NULL,
  `role_id` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_account_role_map
-- ----------------------------
INSERT INTO `biz_account_role_map` VALUES ('ae3c70d7dbc241919c0b913553403d51', 'e56279dab5aa44fc80a793d43f0a3eaf');
INSERT INTO `biz_account_role_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', '8f64b8ebc2544df6a4fe4b68a78b3390');
INSERT INTO `biz_account_role_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', 'bdf77bafecdf4a26a4bf031241177253');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '2a5f865f250f4f3aaf65bfa26a24da6b');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '41b19bf6091e40ffa0fde0553d265013');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '3835260c5d4a41ccbc8601a5fae8484e');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '100efcc6891e44cb87f1e4ee614c11ab');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', '8f64b8ebc2544df6a4fe4b68a78b3390');
INSERT INTO `biz_account_role_map` VALUES ('9562a4cfea414ec69cc0bffde7503c2d', 'bdf77bafecdf4a26a4bf031241177253');
INSERT INTO `biz_account_role_map` VALUES ('a9c367a4a5a641f38392eb271f7c98a7', '2a5f865f250f4f3aaf65bfa26a24da6b');
INSERT INTO `biz_account_role_map` VALUES ('007f304fb5fa4f7bb888b03c068aa89a', '100efcc6891e44cb87f1e4ee614c11ab');
INSERT INTO `biz_account_role_map` VALUES ('51133bf4e91f4a11abc163727657d968', '3835260c5d4a41ccbc8601a5fae8484e');
INSERT INTO `biz_account_role_map` VALUES ('51133bf4e91f4a11abc163727657d968', 'bdf77bafecdf4a26a4bf031241177253');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '2a5f865f250f4f3aaf65bfa26a24da6b');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '100efcc6891e44cb87f1e4ee614c11ab');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '41b19bf6091e40ffa0fde0553d265013');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', 'bdf77bafecdf4a26a4bf031241177253');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '8f64b8ebc2544df6a4fe4b68a78b3390');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', '3835260c5d4a41ccbc8601a5fae8484e');
INSERT INTO `biz_account_role_map` VALUES ('4cb3e0eff6c546b799a105e6eb6446ef', 'e56279dab5aa44fc80a793d43f0a3eaf');
INSERT INTO `biz_account_role_map` VALUES ('dc9ebdcc8e924a59beff05647c765d24', '220ddb46542f45ff86cb8bb8227eeae1');
INSERT INTO `biz_account_role_map` VALUES ('64fbdc7e216c486fba92d4b674551efb', '32bc8e96062c44ddabf0fbdc827c038f');

-- ----------------------------
-- Table structure for `biz_alarm_end`
-- ----------------------------
DROP TABLE IF EXISTS `biz_alarm_end`;
CREATE TABLE `biz_alarm_end` (
  `alarm_id` varchar(32) NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `end_address` text,
  PRIMARY KEY (`alarm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_alarm_end
-- ----------------------------
INSERT INTO `biz_alarm_end` VALUES ('0000000', '2019-03-06 10:30:11', '66', '66', '软件新城');
INSERT INTO `biz_alarm_end` VALUES ('1111111', '2019-03-07 10:30:53', '88', '88', '昆明路');

-- ----------------------------
-- Table structure for `biz_alarm_start`
-- ----------------------------
DROP TABLE IF EXISTS `biz_alarm_start`;
CREATE TABLE `biz_alarm_start` (
  `alarm_id` varchar(32) NOT NULL,
  `home_id` varchar(32) DEFAULT NULL,
  `equ_id` varchar(32) DEFAULT NULL,
  `alarm_type` varchar(32) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `start_lng` varchar(30) DEFAULT NULL,
  `start_lat` varchar(30) DEFAULT NULL,
  `start_address` varchar(100) DEFAULT NULL,
  `isread` char(1) DEFAULT NULL,
  `description` char(100) DEFAULT NULL,
  PRIMARY KEY (`alarm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_alarm_start
-- ----------------------------
INSERT INTO `biz_alarm_start` VALUES ('0000000', '607543738c8d4a4c8a2068a7fdfb6a46', '45365e4217f44ca281cf2bd7bd6c693f', '1', '2019-03-05 10:27:07', '11', '11', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '1', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e');
INSERT INTO `biz_alarm_start` VALUES ('1111111', 'b9684bc368564c08b1391a1ff557fa4e', 'e7a0d7ca915b43208e283bed1e7c8304', '2', '2019-03-05 10:29:24', '22', '22', '科技路', '1', '很急');
INSERT INTO `biz_alarm_start` VALUES ('0d7c825c2bd94f3d85062eca9d12cefb', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 16:21:57', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('6e28bf16dc6b494895e540a912e62420', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 16:37:48', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('916b8aedd0aa446dade260d492f684d2', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:00:10', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('883a0f05868442f4af593b5ca1fbbe60', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:05:11', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('2d0946f5312c459099b815165be88d2e', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:10:45', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('13a0f3ca09d740bea75fe4fc7b48b26f', '24d0fc0535c14c80aa972542dc52cb3d', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:20:05', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('f57c02d242d6485db78545221e81f468', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:24:42', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('95759b3697f1406b9a91c0aff55a0dc8', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:30:30', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('3aafda038074411eb14cee0a81dc29ab', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:35:44', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('7dc64d074be2462e887887b9c0e898e8', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:41:32', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('ef645e1df1774dd9b856eaab04ea8276', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:46:16', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('95903f9154f5416aaf1ebe2bbe2bff23', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:51:00', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('037c0ff7f3c641e991916610c196f9ed', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 17:56:14', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('081ec627d41a4a3da38a462ba2e026f8', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:00:58', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('aba9b73feb7541858e1e7f1ee08f068a', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:06:13', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('19789596079d4c039a837953136c87ba', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:10:57', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('5c1ec7a58e1440abb19f6565a7c22b56', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:24:53', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('50706b6c67a04c5a8f0be18265871e7d', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:30:26', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('82342a3116d245569fb5d6df13082540', 'null', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-01 18:35:10', '', '', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('81d4969c9bcd4d2492bb1349f06b6140', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:01:59', '0', '0', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('0d9552e20efa42da998a379cfb94302d', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:06:51', '0', '0', '7e0013898601163257002546030014025E5E7e', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('211a22e59b9848fd8eed1296b432d45a', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:12:39', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('7470215a25dd4c7695b73abc83792257', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:17:51', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('f57ebd3f02c24824a76df19f2bea86ab', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:24:14', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('926e1d657ca04aa2a3364218ceee6516', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:29:58', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('77ab5bec44174145a1a47fd575e02485', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:35:48', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('2849e3539bf74137a9d04e28e4dab956', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:41:35', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('136f1c1cdd4c49b59428e5962f3f96ca', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:47:23', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('fa50fa0045384f03966ad2e6a2a4066c', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 10:53:08', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('a078f09a5e63480ab8040a66c3c8c6bb', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 15:26:24', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('1ffaff3f634b473d9b9be08a7fe19359', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 15:32:24', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('441101981bbb4976bbb60614ac0aa461', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 15:41:30', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('a0ac0fec604b43c2aec8a8d87a33f72f', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:01:32', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('e9d6a160a9ec40bca12d1d6a68bf475e', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:06:18', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('07881131dcf843b3b57ba823f9784643', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:12:29', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('52919f6f80e24930a03872e0d02962a5', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:26:41', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('8b6abc4d5a684d118a924a6477a2270e', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:36:22', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('3baa1fd151f54f0295053f32c8c63f4c', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:38:35', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('dd3d22c65fa847b0b410c98aa87a3c63', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:48:28', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('d8467a6e859f44a28b1bc7503732ea0a', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 16:55:22', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('bff2a1aedce147bb9f4e6f87ef10ea85', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:05:31', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('08a802dc49a84a17a9749e6f7f34a6e3', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:08:56', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('f1543d969a6040b8ac6371839eeea35d', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:13:00', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('4f4ed0f4811b4595a22b018005f63ed5', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:16:00', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('5e939e4c1ae74f2184ca801d96c169b8', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:19:29', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('2839c35523ed40a4b5fab5a935cc97d9', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:27:50', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('370cb400ddff485faa2ff6f2d116f45b', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:29:25', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('fff20ef7480d4233accffa295cf1c5fe', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:33:40', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('94226bddeca54b44a014f86634616279', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:51:42', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('c49e1fe212d64e81be82e153072a6333', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 17:53:28', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('f7c3ef286bc8494eb7db0b39c1ca1e19', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-02 18:36:04', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('1c23b639613d4652a34f8118b0d5bedf', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 09:01:29', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('0ea8de743b424bda86aea67ee74e09f4', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 09:11:54', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('956310091a8a450e8e5818f74ccf5657', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2015-01-01 00:01:05', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('e1de9b10d5474601b8ebed2d0861e876', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2015-01-01 00:11:35', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('a6f00b1da6384db896d92380fb58b121', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2015-01-01 00:18:35', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('92e630f101bc43f4a5a51b87b20dcda3', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 10:05:32', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('de76fcbc6a034d5fa0b6c6b3f9a11f46', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 15:57:59', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('f161b2bf909241c3be23ffd796e1e52c', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:14:16', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('2d2a5dcd4eb64cdfb26de17ca0685b6a', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:21:53', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('47740125994541eca4a6cd762d705c35', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:32:18', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('ab00f816b78a48ab8f560b6c9f3b44b0', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:39:12', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('258819924d9d40e6af50dfbb9c197497', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:49:38', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('cb98077182a44c5193eb71f95a9b85d0', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 16:56:35', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('8b0cb3e978984391af5701ef522fcd6b', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 17:06:59', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('fd1c9094586949cf94db1b0205138a50', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 17:13:56', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('a5d8b4877dad49d9a91b547a868f530d', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 17:24:23', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('fdc710d72c534a94b68b4958229ac834', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-03 17:31:19', '0', '0', '', '1', '');
INSERT INTO `biz_alarm_start` VALUES ('8280a889fa684a808abf1fc0933d0c4c', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 14:49:49', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('a2e12aaf39f44b9b8463c7b556102585', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 14:59:32', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('087610aefaab4bcc8a5e27da25900d3b', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:06:13', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('4e1119454f0d4b0982af91c9aa6e974d', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:20:29', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('db60ec72a7c04369a2933a8620d13ce9', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:24:05', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('af061057feaf4d2cb4689b39d4fbf7cb', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:31:55', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('771b8c916eb742898d96592d982dacbf', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:34:53', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('0f7f509c14ac4ffb9528c39ae1546da1', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:42:27', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('14d75e9805284a3eaad72c529f51d036', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:50:09', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('6ba4492e4d484f3c8dc24602d89649fa', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 15:55:52', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('77709c25b77d4b4ca55d61de762874ee', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-04 16:47:10', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('2c3ab01840134a6cbdc75727f954143b', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-08 10:02:20', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('8de7e605d795455d948703ea5c78f932', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-08 10:12:48', '0', '0', '', '0', '');
INSERT INTO `biz_alarm_start` VALUES ('1769acb08007443282842dbaa81f5f4a', '27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', '0', '2019-04-08 10:19:42', '0', '0', '', '0', '');

-- ----------------------------
-- Table structure for `biz_area`
-- ----------------------------
DROP TABLE IF EXISTS `biz_area`;
CREATE TABLE `biz_area` (
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(50) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_area
-- ----------------------------
INSERT INTO `biz_area` VALUES ('10101', '和田县', '101');
INSERT INTO `biz_area` VALUES ('10102', '皮山县', '101');
INSERT INTO `biz_area` VALUES ('10201', '牛头县', '102');
INSERT INTO `biz_area` VALUES ('10401', '鄯善县', '104');
INSERT INTO `biz_area` VALUES ('10402', '托克逊县', '104');
INSERT INTO `biz_area` VALUES ('10501', '巴里坤县', '105');
INSERT INTO `biz_area` VALUES ('10502', '伊吾县', '105');
INSERT INTO `biz_area` VALUES ('10601', '01县', '106');
INSERT INTO `biz_area` VALUES ('10602', '02县', '106');
INSERT INTO `biz_area` VALUES ('11201', '伊宁县', '112');

-- ----------------------------
-- Table structure for `biz_call`
-- ----------------------------
DROP TABLE IF EXISTS `biz_call`;
CREATE TABLE `biz_call` (
  `call_id` varchar(32) NOT NULL,
  `home_id` varchar(32) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL COMMENT '被呼号码',
  `time` datetime DEFAULT NULL COMMENT '呼叫时间',
  `duration` int(11) DEFAULT NULL COMMENT '呼叫时长 单位：秒',
  `file_path` varchar(100) DEFAULT NULL COMMENT '录音文件路径',
  `status` int(11) DEFAULT NULL COMMENT '状态 0.未处理  1.处理中  2.已处理'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_call
-- ----------------------------
INSERT INTO `biz_call` VALUES ('1111111', 'b9684bc368564c08b1391a1ff557fa4e', '13245678945', '2019-03-06 10:05:29', '500', 'D:\\录音文件\\b.mp4', '1');
INSERT INTO `biz_call` VALUES ('2222222', 'b9684bc368564c08b1391a1ff557fa4e', '13545678945', '2019-03-11 17:18:02', '699', 'D:\\录音文件\\b.mp4', '1');

-- ----------------------------
-- Table structure for `biz_city`
-- ----------------------------
DROP TABLE IF EXISTS `biz_city`;
CREATE TABLE `biz_city` (
  `city_id` int(11) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_city
-- ----------------------------
INSERT INTO `biz_city` VALUES ('101', '和田地区', '1');
INSERT INTO `biz_city` VALUES ('102', '阿克苏地区', '1');
INSERT INTO `biz_city` VALUES ('103', '乌鲁木齐', '1');
INSERT INTO `biz_city` VALUES ('104', '吐鲁番市', '1');
INSERT INTO `biz_city` VALUES ('105', '哈密市', '1');
INSERT INTO `biz_city` VALUES ('106', '米东区', '1');
INSERT INTO `biz_city` VALUES ('107', '天山区', '1');
INSERT INTO `biz_city` VALUES ('108', '新市区', '1');
INSERT INTO `biz_city` VALUES ('109', '水磨沟区', '1');
INSERT INTO `biz_city` VALUES ('110', '乌尔禾区', '1');
INSERT INTO `biz_city` VALUES ('111', '高昌区', '1');
INSERT INTO `biz_city` VALUES ('112', '伊犁地区', '1');

-- ----------------------------
-- Table structure for `biz_department`
-- ----------------------------
DROP TABLE IF EXISTS `biz_department`;
CREATE TABLE `biz_department` (
  `dept_id` varchar(32) NOT NULL,
  `dept_pid` varchar(32) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `contacts` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_department
-- ----------------------------
INSERT INTO `biz_department` VALUES ('af7e01d36d274f2dbc0038075a0ada29', '-1', '新疆', '张三', '13256565859', '6@qq.com', '小喇叭', null, '2019-04-10 01:20:40', 'admin', '2019-04-10 09:20:40');
INSERT INTO `biz_department` VALUES ('b928fe1dbb9d4ceda7f5257f7e6f5b30', 'af7e01d36d274f2dbc0038075a0ada29', '乌鲁木齐', '王五', '15234801152', '6@qq.com', '测试', null, '2019-04-10 01:22:47', 'admin', '2019-04-10 09:22:47');
INSERT INTO `biz_department` VALUES ('f802f3ab2c8e42c7ab349dd6e73670ba', 'b928fe1dbb9d4ceda7f5257f7e6f5b30', '小庄村', '赵六', '13945865962', '5@qq.com', '测试', null, '2019-04-10 03:31:21', 'admin', '2019-04-10 11:31:20');
INSERT INTO `biz_department` VALUES ('ae0ec377dea94f5994b7285b5a5b0fc1', 'b928fe1dbb9d4ceda7f5257f7e6f5b30', '高新区', '小李', '15659585654', '1@qq.com', 'ss', 'admin', '2019-04-10 11:29:54', null, '2019-04-10 11:29:54');

-- ----------------------------
-- Table structure for `biz_device_order`
-- ----------------------------
DROP TABLE IF EXISTS `biz_device_order`;
CREATE TABLE `biz_device_order` (
  `order_id` varchar(32) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `order_type` varchar(30) DEFAULT NULL,
  `exec_status` char(2) DEFAULT NULL,
  `oper_date` datetime DEFAULT NULL,
  `oper` varchar(32) DEFAULT NULL,
  `serialNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_device_order
-- ----------------------------

-- ----------------------------
-- Table structure for `biz_device_order_param`
-- ----------------------------
DROP TABLE IF EXISTS `biz_device_order_param`;
CREATE TABLE `biz_device_order_param` (
  `order_id` varchar(32) NOT NULL,
  `param_code` varchar(32) DEFAULT NULL,
  `param_value` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_device_order_param
-- ----------------------------

-- ----------------------------
-- Table structure for `biz_dict`
-- ----------------------------
DROP TABLE IF EXISTS `biz_dict`;
CREATE TABLE `biz_dict` (
  `dict_id` varchar(32) NOT NULL,
  `dict_pid` varchar(32) DEFAULT NULL,
  `dict_code` varchar(50) NOT NULL,
  `dict_name` varchar(100) DEFAULT NULL,
  `sort_index` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_dict
-- ----------------------------
INSERT INTO `biz_dict` VALUES ('46c2a02ee4184da984616f2a14c9e6d4', '-1', 'map_key', 'hHkEWGGOHGd0wgGPMIU8ElbUI46BRB8R', '1', 'Y', 'admin', '2019-03-05 09:32:29', 'admin', '2018-04-09 10:14:12');

-- ----------------------------
-- Table structure for `biz_equ_package`
-- ----------------------------
DROP TABLE IF EXISTS `biz_equ_package`;
CREATE TABLE `biz_equ_package` (
  `device_id` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `direct` varchar(10) DEFAULT NULL COMMENT 'UP   DOWN',
  `content` varchar(255) DEFAULT NULL COMMENT '报文内容',
  `collectTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_equ_package
-- ----------------------------
INSERT INTO `biz_equ_package` VALUES ('1', '1', '1', '1', '2019-03-26 09:15:15');
INSERT INTO `biz_equ_package` VALUES ('1', '1', '1', '1', '2019-03-27 09:15:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7E027e', '2019-04-01 14:41:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 14:41:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300010A5E5E7E027e', '2019-04-01 14:41:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 14:41:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300020A5E5E7E027e', '2019-04-01 14:41:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 14:41:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E0000138986011632570025460300010A5E5E007e', '2019-04-01 15:00:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:00:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E0000138986011632570025460300010A5E5E007e', '2019-04-01 15:10:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:10:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300020A5E5E0000148986011632570025460300038A015E5E007e', '2019-04-01 15:10:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:10:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000401383437303439353036345E5E007e', '2019-04-01 15:10:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:10:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030006025E5E000013898601163257002546030007025E5E007e', '2019-04-01 15:11:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B1B3A6A5AE9E051904011512175E5E007e', '2019-04-01 15:11:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000A0A5E5E00001389860116325700254603000B0A5E5E007e', '2019-04-01 15:14:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:14:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000C025E5E00001489860116325700254603000D8A015E5E007e', '2019-04-01 15:14:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000E0C00B1B3A6A5AE9E051904011515125E5E007e', '2019-04-01 15:14:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603001001383437303439353036345E5E007e', '2019-04-01 15:16:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:16:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300110A5E5E000013898601163257002546030012025E5E007e', '2019-04-01 15:17:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:17:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300130A5E5E0000148986011632570025460300148A015E5E007e', '2019-04-01 15:17:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:17:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603001501383437303439353036345E5E007e', '2019-04-01 15:17:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:17:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300170C00B1B3A6A5AE9E051904011518065E5E007e', '2019-04-01 15:17:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 15:20:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:20:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300020A5E5E00148986011632570025460300038A015E5E7e', '2019-04-01 15:21:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:21:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000401383437303439353036345E5E7e', '2019-04-01 15:21:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:21:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000701383437303439353036345E5E7e', '2019-04-01 15:23:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:23:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000801383437303439353036345E5E7e', '2019-04-01 15:23:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:23:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000A01383437303439353036345E5E7e', '2019-04-01 15:24:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:24:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B0A5E5E001389860116325700254603000C025E5E7e', '2019-04-01 15:24:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:24:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000F01383437303439353036345E5E7e', '2019-04-01 15:24:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:24:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030010025E5E00218986011632570025460300110C00B1B3A6A5AE9E051904011525375E5E7e', '2019-04-01 15:24:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030012025E5E0013898601163257002546030013025E5E7e', '2019-04-01 15:25:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300140C00B1B3A6A5AE9E051904011528305E5E7e', '2019-04-01 15:27:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300150A5E5E00138986011632570025460300160A5E5E7e', '2019-04-01 15:30:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:30:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603001901383437303439353036345E5E7e', '2019-04-01 15:30:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:30:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001A0C00B1B3A6A5AE9E051904011531245E5E7e', '2019-04-01 15:30:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001B025E5E001389860116325700254603001C0A5E5E7e', '2019-04-01 15:33:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001D0A5E5E001389860116325700254603001E0A5E5E7e', '2019-04-01 15:33:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:33:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603002101383437303439353036345E5E7e', '2019-04-01 15:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300220C00B1B3A6A5AE9E051904011534195E5E7e', '2019-04-01 15:33:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 15:37:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:37:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300020A5E5E001D89860116325700254603000301383437303439353036345E5E7e', '2019-04-01 15:37:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:37:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000401383437303439353036345E5E7e', '2019-04-01 15:37:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:38:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000501383437303439353036345E5E7e', '2019-04-01 15:38:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:38:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000601383437303439353036345E5E7e', '2019-04-01 15:38:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:38:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000801383437303439353036345E5E7e', '2019-04-01 15:41:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:41:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300090A5E5E001D89860116325700254603000A01383437303439353036345E5E7e', '2019-04-01 15:41:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:41:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B0A5E5E001D89860116325700254603000C01383437303439353036345E5E7e', '2019-04-01 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D0A5E5E001D89860116325700254603000E01383437303439353036345E5E7e', '2019-04-01 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 15:44:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:44:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000201383437303439353036345E5E7e', '2019-04-01 15:44:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:44:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 15:44:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B1B3A6A5AE9E051904011545465E5E7e', '2019-04-01 15:45:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300060A5E5E0013898601163257002546030007025E5E7e', '2019-04-01 15:47:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:47:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000801383437303439353036345E5E7e', '2019-04-01 15:47:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:47:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030009025E5E002189860116325700254603000A0C00B1B3A6A5AE9E051904011548405E5E7e', '2019-04-01 15:48:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B025E5E002189860116325700254603000C0C00B1B3A6A5AE9E051904011549315E5E7e', '2019-04-01 15:48:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D025E5E001389860116325700254603000E025E5E7e', '2019-04-01 15:49:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000F0C00B1B3A6A5AE9E051904011550225E5E7e', '2019-04-01 15:49:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300100A5E5E0013898601163257002546030011025E5E7e', '2019-04-01 15:52:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:52:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603001201383437303439353036345E5E7e', '2019-04-01 15:52:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:52:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E00138986011632570025460300150A5E5E7e', '2019-04-01 15:54:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300160A5E5E00138986011632570025460300170A5E5E7e', '2019-04-01 15:55:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:55:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030018025E5E001D89860116325700254603001901383437303439353036345E5E7e', '2019-04-01 15:55:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001A0C00B1B3A6A5AE9E051904011556105E5E7e', '2019-04-01 15:55:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 15:57:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 15:57:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000201383437303439353036345E5E7e', '2019-04-01 15:57:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 15:57:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 15:58:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904011559305E5E7e', '2019-04-01 15:58:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300060A5E5E0013898601163257002546030007025E5E7e', '2019-04-01 16:01:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:01:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000801383437303439353036345E5E7e', '2019-04-01 16:01:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:01:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030009025E5E002189860116325700254603000A0C00B3B1A5A69EAE051904011602245E5E7e', '2019-04-01 16:01:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B0A5E5E001389860116325700254603000C0A5E5E7e', '2019-04-01 16:04:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:04:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D025E5E001D89860116325700254603000E01383437303439353036345E5E7e', '2019-04-01 16:04:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603000F01383437303439353036345E5E7e', '2019-04-01 16:06:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:06:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300100A5E5E00218986011632570025460300110C00B3B1A5A69EAE051904011607225E5E7e', '2019-04-01 16:06:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:06:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030012025E5E001D89860116325700254603001301383437303439353036345E5E7e', '2019-04-01 16:06:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001D89860116325700254603001401383437303439353036345E5E7e', '2019-04-01 16:09:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:09:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300150A5E5E00138986011632570025460300160A5E5E7e', '2019-04-01 16:09:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:09:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030017025E5E001D89860116325700254603001801383437303439353036345E5E7e', '2019-04-01 16:09:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 16:11:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:11:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001C898601163257002546030002013834373034393530365E5E7e', '2019-04-01 16:11:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:11:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 16:11:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300050A5E5E00218986011632570025460300060C00B3B1A5A69EAE051904011615005E5E7e', '2019-04-01 16:14:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:14:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001C898601163257002546030007013834373034393530365E5E7e', '2019-04-01 16:14:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:14:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030008025E5E0013898601163257002546030009025E5E7e', '2019-04-01 16:15:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000A0C00B3B1A5A69EAE051904011617545E5E7e', '2019-04-01 16:17:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 16:20:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:20:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-01 16:20:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:20:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 16:20:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:20:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904011621575E5E7e', '2019-04-01 16:21:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 16:21:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030006025E5E0013898601163257002546030007025E5E7e', '2019-04-01 16:22:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:22:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300090A5E5E001389860116325700254603000A0A5E5E7e', '2019-04-01 16:25:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:25:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B025E5E002389860116325700254603000C01383437303439353036343137383730305E5E7e', '2019-04-01 16:25:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000D01383437303439353036343137383730305E5E7e', '2019-04-01 16:27:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:27:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000E0A5E5E001389860116325700254603000F0A5E5E7e', '2019-04-01 16:27:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:27:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030010025E5E002389860116325700254603001101383437303439353036343137383730305E5E7e', '2019-04-01 16:27:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:27:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-01 16:28:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:28:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030013025E5E00218986011632570025460300140C00B3B1A5A69EAE051904011629025E5E7e', '2019-04-01 16:28:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:28:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030015025E5E00218986011632570025460300160C00B3B1A5A69EAE051904011629535E5E7e', '2019-04-01 16:29:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:29:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300180A5E5E00138986011632570025460300190A5E5E7e', '2019-04-01 16:31:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:31:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001A025E5E002389860116325700254603001B01383437303439353036343137383730305E5E7e', '2019-04-01 16:32:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001C0C00B3B1A5A69EAE051904011634505E5E7e', '2019-04-01 16:34:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001D01383437303439353036343137383730305E5E7e', '2019-04-01 16:36:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:36:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001E0A5E5E001389860116325700254603001F0A5E5E7e', '2019-04-01 16:36:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:36:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030020025E5E002389860116325700254603002101383437303439353036343137383730305E5E7e', '2019-04-01 16:36:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:36:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002201383437303439353036343137383730305E5E7e', '2019-04-01 16:36:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:36:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300230C00B3B1A5A69EAE051904011637485E5E7e', '2019-04-01 16:37:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 16:37:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030024025E5E0013898601163257002546030025025E5E7e', '2019-04-01 16:37:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:37:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 16:39:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:39:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-01 16:39:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:39:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 16:39:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300050A5E5E00138986011632570025460300060A5E5E7e', '2019-04-01 16:42:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:42:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300070C00B3B1A5A69EAE051904011642575E5E7e', '2019-04-01 16:42:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300090A5E5E002389860116325700254603000A01383437303439353036343137383730305E5E7e', '2019-04-01 16:44:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:44:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B0A5E5E001389860116325700254603000C025E5E7e', '2019-04-01 16:44:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:44:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000D01383437303439353036343137383730305E5E7e', '2019-04-01 16:44:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:44:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000E01383437303439353036343137383730305E5E7e', '2019-04-01 16:44:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:44:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000F025E5E00218986011632570025460300100C00B3B1A5A69EAE051904011645515E5E7e', '2019-04-01 16:45:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:45:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030011025E5E00218986011632570025460300120C00B3B1A5A69EAE051904011646425E5E7e', '2019-04-01 16:45:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:46:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300130A5E5E0013898601163257002546030014025E5E7e', '2019-04-01 16:48:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:48:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001501383437303439353036343137383730305E5E7e', '2019-04-01 16:48:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:48:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030016025E5E00218986011632570025460300170C00B3B1A5A69EAE051904011649365E5E7e', '2019-04-01 16:48:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:49:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001A0A5E5E001389860116325700254603001B025E5E7e', '2019-04-01 16:51:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:51:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001C01383437303439353036343137383730305E5E7e', '2019-04-01 16:51:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:51:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001D025E5E002189860116325700254603001E0C00B3B1A5A69EAE051904011653215E5E7e', '2019-04-01 16:52:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300200A5E5E00138986011632570025460300210A5E5E7e', '2019-04-01 16:55:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:55:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002201383437303439353036343137383730305E5E7e', '2019-04-01 16:55:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:55:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030023025E5E00218986011632570025460300240C00B3B1A5A69EAE051904011656155E5E7e', '2019-04-01 16:55:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:55:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030025025E5E00218986011632570025460300260C00B3B1A5A69EAE051904011657065E5E7e', '2019-04-01 16:56:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:56:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 16:58:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 16:58:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-01 16:58:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 16:58:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 16:59:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 16:59:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904011700105E5E7e', '2019-04-01 16:59:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 16:59:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030006025E5E0013898601163257002546030007025E5E7e', '2019-04-01 17:00:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:00:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000A0A5E5E001389860116325700254603000B0A5E5E7e', '2019-04-01 17:03:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:03:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000C01383437303439353036343137383730305E5E7e', '2019-04-01 17:03:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:03:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D025E5E001389860116325700254603000E025E5E7e', '2019-04-01 17:04:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:04:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000F0C00B3B1A5A69EAE051904011705115E5E7e', '2019-04-01 17:04:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:04:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030010025E5E0013898601163257002546030011025E5E7e', '2019-04-01 17:05:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:05:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 17:07:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:07:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-01 17:07:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:07:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 17:07:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300050A5E5E00138986011632570025460300060A5E5E7e', '2019-04-01 17:10:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:10:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-01 17:10:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:10:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE051904011710455E5E7e', '2019-04-01 17:10:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:10:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030009025E5E001389860116325700254603000A025E5E7e', '2019-04-01 17:10:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:10:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B025E5E001389860116325700254603000C025E5E7e', '2019-04-01 17:11:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:11:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000E0A5E5E001389860116325700254603000F0A5E5E7e', '2019-04-01 17:14:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:14:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001001383437303439353036343137383730305E5E7e', '2019-04-01 17:14:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:14:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030011025E5E0013898601163257002546030012025E5E7e', '2019-04-01 17:15:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300130A5E5E00218986011632570025460300140C00B3B1A5A69EAE051904011718235E5E7e', '2019-04-01 17:17:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:17:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001501383437303439353036343137383730305E5E7e', '2019-04-01 17:17:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:17:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030016025E5E00218986011632570025460300170C00B3B1A5A69EAE051904011719145E5E7e', '2019-04-01 17:18:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:18:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030018025E5E0013898601163257002546030019025E5E7e', '2019-04-01 17:19:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:19:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001A0C00B3B1A5A69EAE051904011720055E5E7e', '2019-04-01 17:19:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:19:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001B025E5E001389860116325700254603001C025E5E7e', '2019-04-01 17:20:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:20:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001E0A5E5E001389860116325700254603001F0A5E5E7e', '2019-04-01 17:23:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:23:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002001383437303439353036343137383730305E5E7e', '2019-04-01 17:23:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:23:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030021025E5E0013898601163257002546030022025E5E7e', '2019-04-01 17:23:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:23:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300230C00B3B1A5A69EAE051904011724425E5E7e', '2019-04-01 17:24:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:24:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030024025E5E0013898601163257002546030025025E5E7e', '2019-04-01 17:25:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:25:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030026025E5E0013898601163257002546030027025E5E7e', '2019-04-01 17:26:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:26:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300290A5E5E001389860116325700254603002A0A5E5E7e', '2019-04-01 17:28:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:28:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002B01383437303439353036343137383730305E5E7e', '2019-04-01 17:28:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:28:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002C025E5E001389860116325700254603002D025E5E7e', '2019-04-01 17:29:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:29:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603002E0C00B3B1A5A69EAE051904011730305E5E7e', '2019-04-01 17:29:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:29:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002F025E5E0013898601163257002546030030025E5E7e', '2019-04-01 17:30:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:30:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300330A5E5E00138986011632570025460300340A5E5E7e', '2019-04-01 17:34:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:34:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603003501383437303439353036343137383730305E5E7e', '2019-04-01 17:34:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:34:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030036025E5E0013898601163257002546030037025E5E7e', '2019-04-01 17:34:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:34:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300380C00B3B1A5A69EAE051904011735445E5E7e', '2019-04-01 17:35:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:35:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030039025E5E001389860116325700254603003A025E5E7e', '2019-04-01 17:36:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:36:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003B025E5E001389860116325700254603003C025E5E7e', '2019-04-01 17:37:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:37:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003E0A5E5E001389860116325700254603003F0A5E5E7e', '2019-04-01 17:39:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:39:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603004001383437303439353036343137383730305E5E7e', '2019-04-01 17:39:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:39:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030041025E5E0013898601163257002546030042025E5E7e', '2019-04-01 17:40:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:40:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300430C00B3B1A5A69EAE051904011741325E5E7e', '2019-04-01 17:40:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:40:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030044025E5E0013898601163257002546030045025E5E7e', '2019-04-01 17:41:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:41:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300470A5E5E00138986011632570025460300480A5E5E7e', '2019-04-01 17:44:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:44:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603004901383437303439353036343137383730305E5E7e', '2019-04-01 17:44:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:44:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004A025E5E001389860116325700254603004B025E5E7e', '2019-04-01 17:45:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:45:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603004C0C00B3B1A5A69EAE051904011746165E5E7e', '2019-04-01 17:45:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:45:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004D025E5E001389860116325700254603004E025E5E7e', '2019-04-01 17:46:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:46:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300500A5E5E00138986011632570025460300510A5E5E7e', '2019-04-01 17:49:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:49:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603005201383437303439353036343137383730305E5E7e', '2019-04-01 17:49:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:49:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030053025E5E0013898601163257002546030054025E5E7e', '2019-04-01 17:50:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:50:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300550C00B3B1A5A69EAE051904011751005E5E7e', '2019-04-01 17:50:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:50:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030056025E5E0013898601163257002546030057025E5E7e', '2019-04-01 17:51:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:51:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603005A0A5E5E001389860116325700254603005B0A5E5E7e', '2019-04-01 17:54:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:54:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603005C01383437303439353036343137383730305E5E7e', '2019-04-01 17:54:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:54:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603005D025E5E001389860116325700254603005E025E5E7e', '2019-04-01 17:55:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:55:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603005F0C00B3B1A5A69EAE051904011756145E5E7e', '2019-04-01 17:55:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 17:55:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030060025E5E0013898601163257002546030061025E5E7e', '2019-04-01 17:56:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 17:56:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300630A5E5E00138986011632570025460300640A5E5E7e', '2019-04-01 17:59:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 17:59:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603006501383437303439353036343137383730305E5E7e', '2019-04-01 17:59:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 17:59:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030066025E5E0013898601163257002546030067025E5E7e', '2019-04-01 18:00:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:00:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300680C00B3B1A5A69EAE051904011800585E5E7e', '2019-04-01 18:00:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:00:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030069025E5E001389860116325700254603006A025E5E7e', '2019-04-01 18:01:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:01:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603006D0A5E5E001389860116325700254603006E0A5E5E7e', '2019-04-01 18:04:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:04:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603006F01383437303439353036343137383730305E5E7e', '2019-04-01 18:04:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:04:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030070025E5E0013898601163257002546030071025E5E7e', '2019-04-01 18:05:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:05:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300720C00B3B1A5A69EAE051904011806135E5E7e', '2019-04-01 18:05:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:05:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030073025E5E0013898601163257002546030074025E5E7e', '2019-04-01 18:06:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:06:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300760A5E5E00138986011632570025460300770A5E5E7e', '2019-04-01 18:09:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:09:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603007801383437303439353036343137383730305E5E7e', '2019-04-01 18:09:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:09:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030079025E5E001389860116325700254603007A025E5E7e', '2019-04-01 18:10:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:10:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603007B0C00B3B1A5A69EAE051904011810575E5E7e', '2019-04-01 18:10:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:10:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603007C025E5E001389860116325700254603007D025E5E7e', '2019-04-01 18:11:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:11:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603007E025E5E001389860116325700254603007F025E5E7e', '2019-04-01 18:12:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:12:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300810A5E5E00138986011632570025460300820A5E5E7e', '2019-04-01 18:15:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:15:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603008301383437303439353036343137383730305E5E7e', '2019-04-01 18:15:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:15:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E00138986011632570025460300010A5E5E7e', '2019-04-01 18:23:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:23:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-01 18:23:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:23:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E0013898601163257002546030004025E5E7e', '2019-04-01 18:23:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:23:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904011824535E5E7e', '2019-04-01 18:24:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:24:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030006025E5E0013898601163257002546030007025E5E7e', '2019-04-01 18:24:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:24:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030008025E5E0013898601163257002546030009025E5E7e', '2019-04-01 18:26:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:26:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000B0A5E5E001389860116325700254603000C0A5E5E7e', '2019-04-01 18:28:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:28:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000D01383437303439353036343137383730305E5E7e', '2019-04-01 18:28:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:28:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000E025E5E001389860116325700254603000F025E5E7e', '2019-04-01 18:29:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:29:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300100C00B3B1A5A69EAE051904011830265E5E7e', '2019-04-01 18:29:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:29:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030011025E5E0013898601163257002546030012025E5E7e', '2019-04-01 18:30:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:30:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300140A5E5E00138986011632570025460300150A5E5E7e', '2019-04-01 18:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001601383437303439353036343137383730305E5E7e', '2019-04-01 18:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:33:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030017025E5E0013898601163257002546030018025E5E7e', '2019-04-01 18:35:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-01 18:35:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300190C00B3B1A5A69EAE051904011835105E5E7e', '2019-04-01 18:35:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-01 18:35:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-01 18:50:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:50:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-01 18:50:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:50:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030002025E5E7e', '2019-04-01 18:50:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300030A5E5E7e', '2019-04-01 18:53:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:53:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-01 18:53:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-01 18:53:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030005025E5E7e', '2019-04-01 18:53:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300060A5E5E7e', '2019-04-01 18:55:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 18:55:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-01 18:55:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE051904011856285E5E7e', '2019-04-01 18:55:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000A0A5E5E7e', '2019-04-01 19:00:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 19:00:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000B01383437303439353036343137383730305E5E7e', '2019-04-01 19:00:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000C0A5E5E7e', '2019-04-01 19:00:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 19:00:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D025E5E7e', '2019-04-01 19:00:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000F0A5E5E7e', '2019-04-01 19:02:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 19:02:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300110A5E5E7e', '2019-04-01 19:04:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 19:04:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-01 19:05:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300130A5E5E7e', '2019-04-01 19:05:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-01 19:05:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-01 19:05:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 09:14:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 09:14:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:14:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:14:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:14:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:14:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:14:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:14:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:14:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:14:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:14:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:14:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:15:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:15:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:16:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:16:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:16:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:16:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:16:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:16:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:17:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:17:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:17:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:17:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:17:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:17:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:17:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:17:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:18:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:18:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:18:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:18:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:18:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:18:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 09:19:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 09:19:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 10:00:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 10:00:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 10:00:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:00:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030002025E5E7e', '2019-04-02 10:00:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:00:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030003025E5E7e', '2019-04-02 10:00:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:00:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE051904021001595E5E7e', '2019-04-02 10:00:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:00:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030005025E5E7e', '2019-04-02 10:01:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:01:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030006025E5E7e', '2019-04-02 10:01:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:01:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030007025E5E7e', '2019-04-02 10:02:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:02:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000901383437303439353036343137383730305E5E7e', '2019-04-02 10:04:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:04:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000A025E5E7e', '2019-04-02 10:05:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:05:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000B0C00B3B1A5A69EAE051904021006515E5E7e', '2019-04-02 10:05:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:05:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000C025E5E7e', '2019-04-02 10:05:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:05:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000D025E5E7e', '2019-04-02 10:06:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:06:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000E025E5E7e', '2019-04-02 10:07:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:07:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603000F025E5E7e', '2019-04-02 10:07:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:07:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030010025E5E7e', '2019-04-02 10:08:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:08:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030011025E5E7e', '2019-04-02 10:08:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:08:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 10:10:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:10:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030013025E5E7e', '2019-04-02 10:11:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:11:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300140C00B3B1A5A69EAE051904021012395E5E7e', '2019-04-02 10:11:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:11:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030015025E5E7e', '2019-04-02 10:11:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:11:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030016025E5E7e', '2019-04-02 10:12:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:12:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030017025E5E7e', '2019-04-02 10:12:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:12:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030018025E5E7e', '2019-04-02 10:13:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:13:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030019025E5E7e', '2019-04-02 10:13:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:13:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001A01383437303439353036343137383730305E5E7e', '2019-04-02 10:15:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:15:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001B025E5E7e', '2019-04-02 10:16:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:16:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001C0C00B3B1A5A69EAE051904021017515E5E7e', '2019-04-02 10:16:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:16:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001D025E5E7e', '2019-04-02 10:17:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:17:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001E025E5E7e', '2019-04-02 10:17:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:17:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603001F025E5E7e', '2019-04-02 10:18:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:18:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030020025E5E7e', '2019-04-02 10:18:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:18:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030021025E5E7e', '2019-04-02 10:19:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:19:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030022025E5E7e', '2019-04-02 10:19:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:19:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002401383437303439353036343137383730305E5E7e', '2019-04-02 10:22:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:22:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030025025E5E7e', '2019-04-02 10:22:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:22:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300260C00B3B1A5A69EAE051904021024145E5E7e', '2019-04-02 10:23:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:23:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030027025E5E7e', '2019-04-02 10:23:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:23:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030028025E5E7e', '2019-04-02 10:23:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:23:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030029025E5E7e', '2019-04-02 10:24:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:24:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002A025E5E7e', '2019-04-02 10:24:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:24:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002B025E5E7e', '2019-04-02 10:25:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:25:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002C025E5E7e', '2019-04-02 10:25:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:25:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603002D01383437303439353036343137383730305E5E7e', '2019-04-02 10:28:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:28:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603002E025E5E7e', '2019-04-02 10:28:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:28:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603002F0C00B3B1A5A69EAE051904021029585E5E7e', '2019-04-02 10:28:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:28:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030030025E5E7e', '2019-04-02 10:29:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:29:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030031025E5E7e', '2019-04-02 10:29:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:29:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030032025E5E7e', '2019-04-02 10:30:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:30:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030033025E5E7e', '2019-04-02 10:30:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:30:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030034025E5E7e', '2019-04-02 10:31:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:31:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030035025E5E7e', '2019-04-02 10:31:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:31:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603003601383437303439353036343137383730305E5E7e', '2019-04-02 10:33:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:33:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030037025E5E7e', '2019-04-02 10:34:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:34:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300380C00B3B1A5A69EAE051904021035485E5E7e', '2019-04-02 10:34:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:34:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030039025E5E7e', '2019-04-02 10:34:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:34:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003A025E5E7e', '2019-04-02 10:35:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:35:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003B025E5E7e', '2019-04-02 10:35:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:35:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003C025E5E7e', '2019-04-02 10:36:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:36:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003D025E5E7e', '2019-04-02 10:37:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:37:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603003E025E5E7e', '2019-04-02 10:37:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:37:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603003F01383437303439353036343137383730305E5E7e', '2019-04-02 10:39:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:39:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030040025E5E7e', '2019-04-02 10:40:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:40:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300410C00B3B1A5A69EAE051904021041355E5E7e', '2019-04-02 10:40:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:40:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030042025E5E7e', '2019-04-02 10:40:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:40:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030043025E5E7e', '2019-04-02 10:41:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:41:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030044025E5E7e', '2019-04-02 10:41:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:41:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030045025E5E7e', '2019-04-02 10:42:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:42:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030046025E5E7e', '2019-04-02 10:42:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:42:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030047025E5E7e', '2019-04-02 10:43:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:43:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603004801383437303439353036343137383730305E5E7e', '2019-04-02 10:45:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:45:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030049025E5E7e', '2019-04-02 10:45:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:45:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603004A0C00B3B1A5A69EAE051904021047235E5E7e', '2019-04-02 10:46:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:46:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004B025E5E7e', '2019-04-02 10:46:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:46:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004C025E5E7e', '2019-04-02 10:47:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:47:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004D025E5E7e', '2019-04-02 10:47:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:47:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004E025E5E7e', '2019-04-02 10:48:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:48:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001389860116325700254603004F025E5E7e', '2019-04-02 10:48:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:48:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030050025E5E7e', '2019-04-02 10:49:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:49:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603005101383437303439353036343137383730305E5E7e', '2019-04-02 10:51:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 10:51:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030052025E5E7e', '2019-04-02 10:51:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:51:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300530C00B3B1A5A69EAE051904021053085E5E7e', '2019-04-02 10:52:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 10:52:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030054025E5E7e', '2019-04-02 10:52:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:52:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030055025E5E7e', '2019-04-02 10:52:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:52:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030056025E5E7e', '2019-04-02 10:53:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:53:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030057025E5E7e', '2019-04-02 10:53:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:53:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030058025E5E7e', '2019-04-02 10:54:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:54:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030059025E5E7e', '2019-04-02 10:54:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 10:54:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:23:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:23:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:24:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:24:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:25:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:25:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:25:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:25:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:25:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:25:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:49:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:49:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:49:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:49:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:49:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:49:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:49:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:49:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 11:50:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 11:50:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:51:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:51:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:51:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:51:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:51:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:51:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:51:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:51:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:51:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:51:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:52:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:52:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:52:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:52:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:52:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:52:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:52:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 11:52:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:58:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:58:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 11:59:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-02 12:27:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 12:27:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:27:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:27:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:27:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:27:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:27:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:27:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:27:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:27:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:28:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:28:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:29:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:29:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:30:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:30:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:31:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:31:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:32:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:32:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:33:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:33:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:34:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:34:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:35:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:35:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:36:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:36:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:37:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:37:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:38:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:38:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:39:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:39:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:40:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:40:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:41:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:41:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:42:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:42:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:43:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:43:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:44:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:44:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:45:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:45:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:46:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:46:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:47:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:47:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:47:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:47:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:47:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:47:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-02 12:47:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-02 12:47:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 15:24:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 15:24:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 15:24:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:24:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE051904021526245E5E7e', '2019-04-02 15:25:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 15:25:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-02 15:30:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:30:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE051904021532245E5E7e', '2019-04-02 15:31:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 15:31:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-02 15:33:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:33:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300060C00B3B1A5A69EAE051904021535425E5E7e', '2019-04-02 15:34:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-02 15:36:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:36:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000801383437303439353036343137383730305E5E7e', '2019-04-02 15:36:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:36:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300090C00B3B1A5A69EAE051904021538365E5E7e', '2019-04-02 15:37:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000A01383437303439353036343137383730305E5E7e', '2019-04-02 15:39:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:39:32');
INSERT INTO `biz_equ_package` VALUES ('23f6a4d8801849e28497092c7aa5429b', '23f6a4d8801849e28497092c7aa5429b', 'DOWN', '7E001423F6A4D8801849E28497092C7AA5429B000003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000151F77E', '2019-04-02 15:40:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000B0C00B3B1A5A69EAE051904021541305E5E7e', '2019-04-02 15:40:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 15:40:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 15:42:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:42:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE051904021544085E5E7e', '2019-04-02 15:43:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-02 15:45:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:45:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-02 15:45:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:45:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE051904021547025E5E7e', '2019-04-02 15:45:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-02 15:47:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:47:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300060C00B3B1A5A69EAE051904021549565E5E7e', '2019-04-02 15:48:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-02 15:50:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:50:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000801383437303439353036343137383730305E5E7e', '2019-04-02 15:51:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:51:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300090C00B3B1A5A69EAE051904021552505E5E7e', '2019-04-02 15:51:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000A01383437303439353036343137383730305E5E7e', '2019-04-02 15:53:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:53:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000C01383437303439353036343137383730305E5E7e', '2019-04-02 15:56:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:56:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000D01383437303439353036343137383730305E5E7e', '2019-04-02 15:56:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:56:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000E0C00B3B1A5A69EAE051904021558385E5E7e', '2019-04-02 15:57:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000F01383437303439353036343137383730305E5E7e', '2019-04-02 15:59:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 15:59:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300100C00B3B1A5A69EAE051904021601325E5E7e', '2019-04-02 16:00:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:00:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 16:01:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603001183015E5E7e', '2019-04-02 16:01:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000300819C7E', '2019-04-02 16:01:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603001283015E5E7e', '2019-04-02 16:01:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 16:02:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603001383015E5E7e', '2019-04-02 16:02:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00178986011632570025460300008500019C1CA6307E', '2019-04-02 16:03:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 16:04:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:04:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 16:04:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 16:04:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00178986011632570025460300008500019C1CA6307E', '2019-04-02 16:04:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE051904021606185E5E7e', '2019-04-02 16:05:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:05:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385005E5E7e', '2019-04-02 16:05:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00178986011632570025460300008500019A28A6307E', '2019-04-02 16:08:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-02 16:10:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:10:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904021612295E5E7e', '2019-04-02 16:11:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:11:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00178986011632570025460300008500019C1CA6307E', '2019-04-02 16:12:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000685005E5E7e', '2019-04-02 16:12:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-02 16:17:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:17:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE051904021619545E5E7e', '2019-04-02 16:18:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 16:20:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:20:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 16:22:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:22:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE051904021624595E5E7e', '2019-04-02 16:23:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 16:24:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:24:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 16:25:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE051904021626415E5E7e', '2019-04-02 16:25:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:25:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000283015E5E7e', '2019-04-02 16:25:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000041A8EF07E', '2019-04-02 16:25:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385005E5E7e', '2019-04-02 16:25:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-02 16:31:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:31:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300050C00B3B1A5A69EAE051904021633275E5E7e', '2019-04-02 16:32:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000601383437303439353036343137383730305E5E7e', '2019-04-02 16:34:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:34:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-02 16:34:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:34:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE051904021636225E5E7e', '2019-04-02 16:35:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:35:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 16:36:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 16:36:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 16:36:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:36:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE051904021638355E5E7e', '2019-04-02 16:37:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:37:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-02 16:43:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:43:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE051904021645345E5E7e', '2019-04-02 16:44:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-02 16:46:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:46:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000601383437303439353036343137383730305E5E7e', '2019-04-02 16:46:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:46:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300070C00B3B1A5A69EAE051904021648285E5E7e', '2019-04-02 16:47:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:47:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000801383437303439353036343137383730305E5E7e', '2019-04-02 16:53:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 16:53:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 16:53:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000983015E5E7e', '2019-04-02 16:53:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000041F8EF07E', '2019-04-02 16:53:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000A0C00B3B1A5A69EAE051904021655225E5E7e', '2019-04-02 16:54:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 16:54:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000B85005E5E7e', '2019-04-02 16:54:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0014898601163257002546030000040F819C7E', '2019-04-02 16:55:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000C84005E5E7e', '2019-04-02 16:55:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 17:02:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 17:02:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 17:02:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:02:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021704065E5E7e', '2019-04-02 17:02:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:03:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:03:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:03:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 17:03:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000041F8EF07E', '2019-04-02 17:03:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021705315E5E7e', '2019-04-02 17:04:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:04:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385015E5E7e', '2019-04-02 17:04:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000407819C7E', '2019-04-02 17:04:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000484015E5E7e', '2019-04-02 17:04:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:05:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:05:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904021707245E5E7e', '2019-04-02 17:06:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:06:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:06:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:07:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 17:07:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000041F8EF07E', '2019-04-02 17:07:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021708565E5E7e', '2019-04-02 17:07:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:07:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385015E5E7e', '2019-04-02 17:07:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000401819C7E', '2019-04-02 17:07:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000484015E5E7e', '2019-04-02 17:08:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000409819C7E', '2019-04-02 17:08:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:10:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:10:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:11:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904021713005E5E7e', '2019-04-02 17:11:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:11:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000283015E5E7e', '2019-04-02 17:11:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000038B8EF07E', '2019-04-02 17:12:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:13:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:13:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:14:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 17:14:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000038B8EF07E', '2019-04-02 17:14:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021716005E5E7e', '2019-04-02 17:14:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:14:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385015E5E7e', '2019-04-02 17:14:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000407819C7E', '2019-04-02 17:14:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000484015E5E7e', '2019-04-02 17:15:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000401819C7E', '2019-04-02 17:16:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:17:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:17:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904021719295E5E7e', '2019-04-02 17:18:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:18:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:18:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000283015E5E7e', '2019-04-02 17:18:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000038B8EF07E', '2019-04-02 17:18:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385015E5E7e', '2019-04-02 17:19:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000409819C7E', '2019-04-02 17:19:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-02 17:21:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:21:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:23:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 17:25:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 17:25:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 17:25:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:25:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:26:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000283015E5E7e', '2019-04-02 17:26:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000401819C7E', '2019-04-02 17:26:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300030C00B3B1A5A69EAE641904021727505E5E7e', '2019-04-02 17:26:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:26:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000484015E5E7e', '2019-04-02 17:26:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000407819C7E', '2019-04-02 17:26:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:27:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:27:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:27:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 17:27:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000401819C7E', '2019-04-02 17:28:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021729255E5E7e', '2019-04-02 17:28:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:28:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000384015E5E7e', '2019-04-02 17:28:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000407819C7E', '2019-04-02 17:28:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000484015E5E7e', '2019-04-02 17:28:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000038B8EF07E', '2019-04-02 17:30:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:31:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:31:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:31:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 17:31:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0017898601163257002546030000050000038B8EF07E', '2019-04-02 17:32:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021733405E5E7e', '2019-04-02 17:32:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:32:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000385015E5E7e', '2019-04-02 17:32:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-02 17:47:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-02 17:47:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-02 17:47:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:47:59');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021750035E5E7e', '2019-04-02 17:48:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:49:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:49:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 17:50:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904021751425E5E7e', '2019-04-02 17:50:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:50:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 17:51:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 17:51:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904021753285E5E7e', '2019-04-02 17:52:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 17:52:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E001F8986011632570025460300000D03443A5C073132332E4D5033F51F7E', '2019-04-02 18:28:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-02 18:34:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-02 18:34:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-02 18:34:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000183015E5E7e', '2019-04-02 18:34:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E001F8986011632570025460300000D03443A5C073132332E4D5033F51F7E', '2019-04-02 18:34:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904021836045E5E7e', '2019-04-02 18:34:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-02 18:34:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300038D015E5E7e', '2019-04-02 18:34:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 08:59:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 08:59:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 08:59:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 08:59:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904030900315E5E7e', '2019-04-03 09:00:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-03 09:00:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:00:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE641904030901295E5E7e', '2019-04-03 09:01:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 09:01:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 09:08:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 09:08:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 09:08:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:08:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904030909005E5E7e', '2019-04-03 09:09:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-03 09:11:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:11:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE641904030911545E5E7e', '2019-04-03 09:11:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 09:11:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 09:29:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 09:29:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 09:29:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:29:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904030930285E5E7e', '2019-04-03 09:30:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-03 09:33:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:33:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641501010001055E5E7e', '2019-04-03 09:34:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 09:34:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-03 09:40:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:40:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300030C00B3B1A5A69EAE641501010008425E5E7e', '2019-04-03 09:41:40');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-03 09:43:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:43:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-03 09:43:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:43:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300060C00B3B1A5A69EAE641501010011355E5E7e', '2019-04-03 09:44:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 09:44:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-03 09:50:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 09:50:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE641501010018355E5E7e', '2019-04-03 09:51:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 09:51:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 10:01:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 10:01:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 10:01:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 10:01:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904031002375E5E7e', '2019-04-03 10:02:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-03 10:04:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 10:04:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE641904031005325E5E7e', '2019-04-03 10:05:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 10:05:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 10:09:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 10:09:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 10:09:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 10:09:20');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 15:57:06');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 15:57:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 15:57:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 15:57:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-03 15:57:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300028900000000000001D6F800645E5E7e', '2019-04-03 15:57:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300030C00B3B1A5A69EAE641904031557595E5E7e', '2019-04-03 15:58:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 15:58:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-03 16:00:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000483015E5E7e', '2019-04-03 16:00:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-03 16:01:11');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 16:13:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 16:13:23');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 16:13:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:13:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904031614165E5E7e', '2019-04-03 16:14:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:14:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-03 16:14:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:14:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-03 16:21:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:21:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904031621535E5E7e', '2019-04-03 16:21:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:21:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-03 16:28:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:28:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300030C00B3B1A5A69EAE641904031629235E5E7e', '2019-04-03 16:29:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-03 16:31:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:31:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-03 16:31:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:31:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300060C00B3B1A5A69EAE641904031632185E5E7e', '2019-04-03 16:32:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:32:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-03 16:38:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:38:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE641904031639125E5E7e', '2019-04-03 16:39:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:39:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000901383437303439353036343137383730305E5E7e', '2019-04-03 16:45:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:45:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000A0C00B3B1A5A69EAE641904031646445E5E7e', '2019-04-03 16:46:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000B01383437303439353036343137383730305E5E7e', '2019-04-03 16:48:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:48:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000C01383437303439353036343137383730305E5E7e', '2019-04-03 16:49:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:49:04');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000D0C00B3B1A5A6069D141904031649385E5E7e', '2019-04-03 16:49:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:49:39');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000E01383437303439353036343137383730305E5E7e', '2019-04-03 16:55:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 16:55:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603000F0C00B3B1A5A69EAE5A1904031656355E5E7e', '2019-04-03 16:56:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 16:56:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001001383437303439353036343137383730305E5E7e', '2019-04-03 17:03:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:03:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300110C00B3B1A5A69EAE5A1904031704055E5E7e', '2019-04-03 17:04:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001201383437303439353036343137383730305E5E7e', '2019-04-03 17:06:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:06:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001301383437303439353036343137383730305E5E7e', '2019-04-03 17:06:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:06:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300140C00B3B1A5A69EAE5A1904031706595E5E7e', '2019-04-03 17:07:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 17:07:00');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001501383437303439353036343137383730305E5E7e', '2019-04-03 17:13:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:13:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300160C00B3B1A5A69EAE641904031713565E5E7e', '2019-04-03 17:13:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 17:13:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001701383437303439353036343137383730305E5E7e', '2019-04-03 17:20:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:20:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300180C00B3B1A5A6069D641904031721295E5E7e', '2019-04-03 17:21:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001901383437303439353036343137383730305E5E7e', '2019-04-03 17:23:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:23:36');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001A01383437303439353036343137383730305E5E7e', '2019-04-03 17:23:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:23:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001B0C00B3B1A5A69EAE641904031724235E5E7e', '2019-04-03 17:24:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 17:24:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001C01383437303439353036343137383730305E5E7e', '2019-04-03 17:30:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 17:30:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002189860116325700254603001D0C00B3B1A5A69EAE641904031731195E5E7e', '2019-04-03 17:31:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-03 17:31:21');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-03 18:19:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-03 18:19:25');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-03 18:19:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-03 18:19:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-04 14:48:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-04 14:48:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-04 14:48:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 14:48:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041449495E5E7e', '2019-04-04 14:49:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 14:49:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 14:51:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 14:55:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 14:55:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904041456395E5E7e', '2019-04-04 14:56:41');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-04 14:58:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 14:58:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-04 14:58:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 14:58:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE641904041459325E5E7e', '2019-04-04 14:59:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 14:59:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:00:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300058900000000000001D6F800645E5E7e', '2019-04-04 15:00:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-04 15:03:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000601383437303439353036343137383730305E5E7e', '2019-04-04 15:05:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:05:22');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300070C00B3B1A5A69EAE641904041506135E5E7e', '2019-04-04 15:06:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:06:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000301819C7E', '2019-04-04 15:06:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000883015E5E7e', '2019-04-04 15:06:38');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:06:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300098901050000037000000000645E5E7e', '2019-04-04 15:07:13');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000300819C7E', '2019-04-04 15:08:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000A83015E5E7e', '2019-04-04 15:08:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000300819C7E', '2019-04-04 15:09:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000B01383437303439353036343137383730305E5E7e', '2019-04-04 15:11:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:11:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E89860116325700254603000C8900000000000001D6F800645E5E7e', '2019-04-04 15:11:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:45');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E89860116325700254603000D8900000000000001D6F800645E5E7e', '2019-04-04 15:11:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:49');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:11:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603001701383437303439353036343137383730305E5E7e', '2019-04-04 15:18:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:18:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:19:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:19:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904041520295E5E7e', '2019-04-04 15:20:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:20:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00448986011632570025460300000B04000000030D3139322E3136382E36392E32310000000404000000190000000504726F6F740000000607726F6F7431323348157E', '2019-04-04 15:20:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300028B015E5E7e', '2019-04-04 15:21:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00448986011632570025460300000B04000000030D3139322E3136382E36392E32310000000404000000190000000504726F6F740000000607726F6F7431323348157E', '2019-04-04 15:21:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000301383437303439353036343137383730305E5E7e', '2019-04-04 15:23:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:23:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300040C00B3B1A5A69EAE641904041524055E5E7e', '2019-04-04 15:24:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:24:08');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00458986011632570025460300000B04000000030C3139322E3136382E36332E31000000040400000050000000050561646D696E00000006086E773132333435364D837E', '2019-04-04 15:26:44');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300058B015E5E7e', '2019-04-04 15:26:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:27:51');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:27:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:28:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:28:31');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:29:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300018900000000000001D6F800645E5E7e', '2019-04-04 15:29:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000300819C7E', '2019-04-04 15:29:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:29:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:29:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:29:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:29:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:31:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:31:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904041531555E5E7e', '2019-04-04 15:31:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:31:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00428986011632570025460300000B04000000030B3139322E3136382E312E310000000404000000190000000504726F6F740000000607726F6F74313233ED377E', '2019-04-04 15:32:01');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:34:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:34:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904041534535E5E7e', '2019-04-04 15:34:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:34:56');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300000300819C7E', '2019-04-04 15:36:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001489860116325700254603000283015E5E7e', '2019-04-04 15:36:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:36:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300038900000000000001D6F800645E5E7e', '2019-04-04 15:36:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:40:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:40:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904041541035E5E7e', '2019-04-04 15:41:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:41:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:42:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300018900000000000001D6F800645E5E7e', '2019-04-04 15:42:10');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041542275E5E7e', '2019-04-04 15:42:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:42:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:42:42');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:49:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:49:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00338986011632570025460300000B04030B3139322E3136382E312E310404000000190504726F6F740604726F6F743B317E', '2019-04-04 15:49:52');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300018B015E5E7e', '2019-04-04 15:49:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041550095E5E7e', '2019-04-04 15:50:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:50:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:53:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300038900000000000001D6F800645E5E7e', '2019-04-04 15:53:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:53:14');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 15:55:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 15:55:02');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00338986011632570025460300000B04030B3139322E3136382E312E310404000000190504726F6F740604726F6F743B317E', '2019-04-04 15:55:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300018B015E5E7e', '2019-04-04 15:55:28');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041555525E5E7e', '2019-04-04 15:55:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 15:55:55');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00258986011632570025460300000B02010F3231392E3134342E3234352E313738558D7E', '2019-04-04 15:56:32');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300038B015E5E7e', '2019-04-04 15:56:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-04 15:56:43');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300048900000000000001D6F800645E5E7e', '2019-04-04 15:57:09');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00138986011632570025460300000A5E5E7e', '2019-04-04 16:44:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00248986011632570025460300008A013834373034393530363431373837303008E77E', '2019-04-04 16:44:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000101383437303439353036343137383730305E5E7e', '2019-04-04 16:44:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 16:44:54');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041645465E5E7e', '2019-04-04 16:45:48');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 16:46:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 16:46:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00358986011632570025460300000B04030B3139322E3136382E312E310404000000190504726F6F740606313233343536D9DF7E', '2019-04-04 16:46:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300018B015E5E7e', '2019-04-04 16:46:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300020C00B3B1A5A69EAE641904041647105E5E7e', '2019-04-04 16:47:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-04 16:47:12');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E002B8986011632570025460300000B02010F3231392E3134342E3234352E31373802040000271948767E', '2019-04-04 16:48:16');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00148986011632570025460300038B015E5E7e', '2019-04-04 16:48:19');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-04 17:11:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-04 17:11:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000001383437303439353036343137383730305E5E7e', '2019-04-08 10:01:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-08 10:01:29');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300010C00B3B1A5A69EAE641904081002205E5E7e', '2019-04-08 10:02:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-08 10:02:24');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000201383437303439353036343137383730305E5E7e', '2019-04-08 10:09:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-08 10:09:05');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300030C00B3B1A5A69EAE641904081009545E5E7e', '2019-04-08 10:09:58');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000401383437303439353036343137383730305E5E7e', '2019-04-08 10:12:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-08 10:12:03');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000501383437303439353036343137383730305E5E7e', '2019-04-08 10:12:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-08 10:12:15');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300060C00B3B1A5A69EAE641904081012485E5E7e', '2019-04-08 10:12:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-08 10:12:50');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-08 10:18:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-08 10:18:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e00218986011632570025460300080C00B3B1A5A69EAE641904081019425E5E7e', '2019-04-08 10:19:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300008C96087E', '2019-04-08 10:19:46');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-08 10:20:30');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e001E8986011632570025460300098900000000000001D6F800645E5E7e', '2019-04-08 10:20:33');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00138986011632570025460300000996087E', '2019-04-08 10:23:53');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-09 09:24:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-09 09:24:34');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:26:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:26:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:26:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:26:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:26:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:26:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:18');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:27:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:27:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:07');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:17');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:27');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:37');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:47');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 09:28:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 09:28:57');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e002389860116325700254603000701383437303439353036343137383730305E5E7e', '2019-04-09 16:27:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E00148986011632570025460300008101819C7E', '2019-04-09 16:27:26');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'UP', '7e0013898601163257002546030014025E5E7e', '2019-04-09 16:28:35');
INSERT INTO `biz_equ_package` VALUES ('89860116325700254603', '89860116325700254603', 'DOWN', '7E0015898601163257002546030000820000C9017E', '2019-04-09 16:28:35');

-- ----------------------------
-- Table structure for `biz_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `biz_equipment`;
CREATE TABLE `biz_equipment` (
  `equ_id` varchar(32) NOT NULL,
  `dept_id` varchar(32) DEFAULT NULL,
  `equ_imei` varchar(20) DEFAULT NULL,
  `auth_code` varchar(32) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`equ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_equipment
-- ----------------------------
INSERT INTO `biz_equipment` VALUES ('d389274b79ef4169b8ec7c4419413563', null, 'qq11', null, '13259777088', 'admin', '2019-03-19 02:12:03', 'admin', '2019-03-19 10:12:04');
INSERT INTO `biz_equipment` VALUES ('801a2e149bc24f79822e8ee6b4b2aa8d', null, 'ssss', '1212', '15226262329', null, '2019-03-15 07:51:13', null, null);
INSERT INTO `biz_equipment` VALUES ('23f6a4d8801849e28497092c7aa5429b', null, '89860116325700254603', '8470495064178700', '15023641235', 'admin', '2019-04-01 03:53:04', 'admin', '2019-03-29 16:11:04');
INSERT INTO `biz_equipment` VALUES ('7fb425d4241c4cf686ede5f6131313a1', null, '525252', null, '15236363252', 'admin', '2019-03-27 16:03:08', null, null);
INSERT INTO `biz_equipment` VALUES ('5080e1b3dbd246d9972748c2fb9db825', null, 'adddddd', null, '13225242859', 'admin', '2019-03-19 15:55:45', null, null);
INSERT INTO `biz_equipment` VALUES ('635a7051c9964406adf84860fb1e6b97', null, '01020304050607080A0B', null, '15589642365', 'admin', '2019-03-29 12:36:42', null, null);

-- ----------------------------
-- Table structure for `biz_home`
-- ----------------------------
DROP TABLE IF EXISTS `biz_home`;
CREATE TABLE `biz_home` (
  `home_id` varchar(32) NOT NULL,
  `dept_id` varchar(32) DEFAULT NULL,
  `home_master` varchar(50) DEFAULT NULL,
  `home_num` varchar(30) DEFAULT NULL COMMENT '门牌号',
  `city_id` int(11) DEFAULT NULL COMMENT '市ID',
  `area_id` int(11) DEFAULT NULL COMMENT '区县ID',
  `town_id` int(11) DEFAULT NULL COMMENT '乡镇ID',
  `village_id` int(11) DEFAULT NULL COMMENT '村ID',
  `home_address` varchar(30) DEFAULT NULL COMMENT '家庭住址',
  `home_tel` varchar(20) DEFAULT NULL COMMENT '家庭联系电话',
  `idcard` varchar(30) DEFAULT NULL COMMENT '户主身份证',
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`home_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_home
-- ----------------------------
INSERT INTO `biz_home` VALUES ('1067e9712ad14e179d06b675b356b164', null, '古力娜扎', '101', '104', '10401', '1030101', '10203030', '西大街1号田园小区', '15233333333', '140431199208123656', 'admin', '2019-03-19 03:25:27', 'wangchao', '2019-03-19 11:25:28');
INSERT INTO `biz_home` VALUES ('b9684bc368564c08b1391a1ff557fa4e', null, '努尔·白克力', '303', '102', '10201', '1020101', '102010101', '南大街1号田园小区', '18615343433', '142225198505043888', 'admin', '2019-03-19 06:14:44', 'admin', '2019-03-19 14:14:44');
INSERT INTO `biz_home` VALUES ('45b168e4aa4645a3a4f602892d12910f', null, '张三', '02', '101', '10101', '1010101', '101010101', '123', '15235623256', '142332195912062222', 'admin', '2019-04-04 09:21:19', null, null);
INSERT INTO `biz_home` VALUES ('c5f9b5074b424042b6769433ad1d0687', null, '乔工', '11', '101', '10101', '1010102', '101010201', '雁塔区', '13225262423', '610326199908084541', 'admin', '2019-03-20 02:32:25', 'admin', '2019-03-20 10:32:26');
INSERT INTO `biz_home` VALUES ('7ac72e943da94bfd9860e38744ddd98c', null, '李工', '22', '105', '10502', '1050201', '105020301', '驱蚊器无', '15224262321', '610326199805121217', 'admin', '2019-03-19 15:58:09', null, null);
INSERT INTO `biz_home` VALUES ('4f4ca24b4639491f84e3e6451d020782', null, 'wabg', '225', '101', '10101', '1010101', '101010101', '7e0013898601163257002546030014', '18681869568', '610528196412212007', null, '2019-04-02 03:45:10', 'admin', '2019-04-02 11:45:11');
INSERT INTO `biz_home` VALUES ('fa20c7367e884d989680b7521cf96a7f', null, '阿嫂大赛得到', '2020', '101', '10101', '1010101', '101010101', '7e0023898601163257002546030012', '18235636365', '140431199208260425', 'admin', '2019-04-02 03:45:47', 'admin', '2019-04-02 11:45:47');
INSERT INTO `biz_home` VALUES ('cda8a3962d184aefa25c1c431d169209', null, '李四', '001', '112', '11201', '1120101', '112010101', '11#201室', '18612345678', '112523196801012210', 'admin', '2019-03-29 12:32:28', null, null);
INSERT INTO `biz_home` VALUES ('27a6cb02eddd426581219827997c1a29', null, '马尔扎哈', '202', '102', '10201', '1020101', '102010101', '北大街1号田园小区', '18455555555', '140431199308260417', 'admin', '2019-03-19 02:03:38', 'admin', '2019-03-19 10:03:40');
INSERT INTO `biz_home` VALUES ('0532de3bcb7641349c6eea13a4b134c6', null, '王五', '01', '102', '10201', '1020101', '102010101', '在线', '15232595965', '142332198605291111', 'admin', '2019-04-04 09:22:07', null, null);
INSERT INTO `biz_home` VALUES ('c2a495c4be4c441a848a33910d097b32', null, '赵六', '01', '105', '10501', '1050101', '105010102', '安抚', '13956589565', '142365199505296523', 'admin', '2019-04-04 09:22:48', null, null);

-- ----------------------------
-- Table structure for `biz_home_equ_map`
-- ----------------------------
DROP TABLE IF EXISTS `biz_home_equ_map`;
CREATE TABLE `biz_home_equ_map` (
  `home_id` varchar(32) DEFAULT NULL,
  `equ_id` varchar(32) DEFAULT NULL,
  `oper` varchar(32) DEFAULT NULL,
  `oper_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_home_equ_map
-- ----------------------------
INSERT INTO `biz_home_equ_map` VALUES ('27a6cb02eddd426581219827997c1a29', '23f6a4d8801849e28497092c7aa5429b', 'admin', '2019-04-02 09:43:51');
INSERT INTO `biz_home_equ_map` VALUES ('4f4ca24b4639491f84e3e6451d020782', '5080e1b3dbd246d9972748c2fb9db825', 'admin', '2019-03-27 15:07:49');
INSERT INTO `biz_home_equ_map` VALUES ('fa20c7367e884d989680b7521cf96a7f', '7fb425d4241c4cf686ede5f6131313a1', 'admin', '2019-03-27 16:03:32');
INSERT INTO `biz_home_equ_map` VALUES ('c5f9b5074b424042b6769433ad1d0687', 'd389274b79ef4169b8ec7c4419413563', 'admin', '2019-03-19 16:18:18');
INSERT INTO `biz_home_equ_map` VALUES ('cda8a3962d184aefa25c1c431d169209', '635a7051c9964406adf84860fb1e6b97', 'admin', '2019-03-29 12:36:54');
INSERT INTO `biz_home_equ_map` VALUES ('b9684bc368564c08b1391a1ff557fa4e', '801a2e149bc24f79822e8ee6b4b2aa8d', 'admin', '2019-03-19 16:20:18');

-- ----------------------------
-- Table structure for `biz_menu_resource`
-- ----------------------------
DROP TABLE IF EXISTS `biz_menu_resource`;
CREATE TABLE `biz_menu_resource` (
  `menu_id` varchar(32) NOT NULL DEFAULT '',
  `menu_pid` varchar(32) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `front_routing` varchar(50) DEFAULT NULL,
  `menu_icon` varchar(100) DEFAULT NULL,
  `perm` varchar(50) DEFAULT NULL,
  `sort_index` int(11) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_menu_resource
-- ----------------------------
INSERT INTO `biz_menu_resource` VALUES ('91b888d5cfd84232bd700ce94d4d1d2b', '-1', '位置服务', '位置服务', '1', '/index/radio/findInfoByHomeIds', '/home', 'menu1-iocn', 'home', '1', 'qiao', '2019-03-06 00:34:42', 'admin', '2018-04-17 11:46:38');
INSERT INTO `biz_menu_resource` VALUES ('9626f62191334f48be35106a5649fd2b', 'd21972a2ff3c49cabf49675231256ba1', '告警报表', '告警报表', '1', '/report/alarm/findAlarmList', '/report/AlarmReport', '3', 'AlarmReport', '3', 'qiao', '2019-03-06 02:50:39', 'admin', '2018-05-30 17:35:50');
INSERT INTO `biz_menu_resource` VALUES ('ceee5fbc4cd9440eb7ea77514f0f1f97', '9626f62191334f48be35106a5649fd2b', '全部标为已读', '全部标为已读', '2', '/lbs/alarm/handleAlarm', '/lbs/AlarmManage', '', 'alarm_manage_read', '1', 'admin', '2019-02-16 00:23:49', 'admin', '2018-03-22 09:01:33');
INSERT INTO `biz_menu_resource` VALUES ('ab1d6d27ec0942e58a7ee11f11e57a28', '9626f62191334f48be35106a5649fd2b', '告警处理', '告警处理', '2', '/report/alarm/handleAlarm', '/report/AlarmReport', '', 'alarm_manage_site', '3', 'admin', '2019-03-06 02:25:09', 'admin', '2018-03-22 09:01:56');
INSERT INTO `biz_menu_resource` VALUES ('f26ee71b575048f09968621971381bb3', '-1', '系统管理', '系统管理', '1', '', '', 'menu3-iocn', '', '2', 'qiao', '2019-03-06 02:18:21', 'admin', '2018-04-17 11:47:08');
INSERT INTO `biz_menu_resource` VALUES ('bc1134b643034f6e93c7c66a4bcb6218', 'f26ee71b575048f09968621971381bb3', '用户/组管理', '用户/组管理', '1', '', '/sysmgr/AccountGroup', '6', '', '1', 'admin', '2019-02-16 00:24:23', 'admin', '2018-03-22 09:36:14');
INSERT INTO `biz_menu_resource` VALUES ('375a784e3a854bb4af58dcb4495cd47d', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理', '用户管理', '2', '/sysmgr/account/findActList', '/sysmgr/AccountGroup', '', 'account_account', '1', 'admin', '2019-02-16 00:24:33', 'admin', '2018-03-22 09:05:15');
INSERT INTO `biz_menu_resource` VALUES ('7ea429cbb14f476c84df6c37617248ca', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理', '用户组管理', '2', '/sysmgr/group/findGroupList', '/sysmgr/AccountGroup', '', 'account_group', '2', 'admin', '2019-02-16 00:24:48', 'admin', '2018-03-22 09:05:29');
INSERT INTO `biz_menu_resource` VALUES ('65bd4549a8a24f709b4adcaadcddabbe', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理新增', '用户管理新增', '2', '/sysmgr/account/addAct', '/sysmgr/AccountGroup', '', 'account_add', '3', 'admin', '2019-02-16 00:24:58', 'admin', '2018-03-22 09:05:42');
INSERT INTO `biz_menu_resource` VALUES ('939d22c29eb84947ae87075aa63fb092', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理删除', '用户管理删除', '2', '/sysmgr/account/deleteAct', '/sysmgr/AccountGroup', '', 'account_delete', '4', 'admin', '2019-02-16 00:25:07', 'admin', '2018-03-22 09:05:54');
INSERT INTO `biz_menu_resource` VALUES ('c4c7135d219545a9ac8b56adcde13fb6', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理修改', '用户管理修改', '2', '/sysmgr/account/modifyAct', '/sysmgr/AccountGroup', '', 'account_modify', '5', 'admin', '2019-02-16 00:25:23', 'admin', '2018-03-22 09:06:07');
INSERT INTO `biz_menu_resource` VALUES ('2547f94c96194eb3a835acafb17b1d42', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理查看', '用户管理查看', '2', '/sysmgr/account/findActInfo', '/sysmgr/AccountGroup', '', 'account_check', '6', 'admin', '2019-02-16 00:27:06', 'admin', '2018-03-22 09:06:20');
INSERT INTO `biz_menu_resource` VALUES ('4421444b79784bc780c75ef2bcf76b56', 'bc1134b643034f6e93c7c66a4bcb6218', '用户管理角色管理', '用户管理角色管理', '2', '/sysmgr/account/roleManage', '/sysmgr/AccountGroup', '', 'account_role', '7', 'admin', '2019-02-16 00:27:26', 'admin', '2018-03-22 09:06:36');
INSERT INTO `biz_menu_resource` VALUES ('3b20578980884fc8a9b647307a986092', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理新增', '用户组管理新增', '2', '/sysmgr/group/addGroup', '/sysmgr/AccountGroup', '', 'group_add', '8', 'admin', '2019-02-16 00:27:34', 'admin', '2018-03-22 09:07:04');
INSERT INTO `biz_menu_resource` VALUES ('a8fd5ea960b8477ab9d1c101d6453e5a', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理删除', '用户组管理删除', '2', '/sysmgr/group/deleteGroup', '/sysmgr/AccountGroup', '', 'group_delete', '9', 'admin', '2019-02-16 00:27:43', 'admin', '2018-03-22 09:07:16');
INSERT INTO `biz_menu_resource` VALUES ('f1b5e02bf6274be28280d149d3b2beb2', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理修改', '用户组管理修改', '2', '/sysmgr/group/modifyGroup', '/sysmgr/AccountGroup', '', 'group_modify', '10', 'admin', '2019-02-16 00:27:49', 'admin', '2018-03-22 09:07:32');
INSERT INTO `biz_menu_resource` VALUES ('d62d980e67fb44b098a3e814321a91b5', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理查看', '用户组管理查看', '2', '/sysmgr/group/findGroupInfo', '/sysmgr/AccountGroup', '', 'group_check', '11', 'admin', '2019-02-16 00:27:57', 'admin', '2018-03-22 09:07:50');
INSERT INTO `biz_menu_resource` VALUES ('59353ec0d30a4cbb9771ac1178847b8c', 'bc1134b643034f6e93c7c66a4bcb6218', '用户组管理用户分组', '用户组管理用户分组', '2', '/sysmgr/group/groupManage', '/sysmgr/AccountGroup', '', 'group_acount_groud', '12', 'admin', '2019-02-16 00:28:05', 'admin', '2018-03-22 09:08:02');
INSERT INTO `biz_menu_resource` VALUES ('b258146053d44f84b810b07d965f838b', 'f26ee71b575048f09968621971381bb3', '角色管理', '角色管理', '1', '/sysmgr/role/findRoleList', '/sysmgr/RoleManage', '1', '', '2', 'admin', '2019-02-16 00:28:17', 'admin', '2018-03-22 09:08:17');
INSERT INTO `biz_menu_resource` VALUES ('694a4684694545bc8fc7fadee0c80f57', 'b258146053d44f84b810b07d965f838b', '角色管理新增', '角色管理新增', '2', '/sysmgr/role/addRole', '/sysmgr/RoleManage', '', 'role_add', '1', 'admin', '2019-02-16 00:28:23', 'admin', '2018-03-22 09:08:31');
INSERT INTO `biz_menu_resource` VALUES ('d85490e442e7493bb0f4f6569ba78ed9', 'b258146053d44f84b810b07d965f838b', '角色管理删除', '角色管理删除', '2', '/sysmgr/role/deleteRole', '/sysmgr/RoleManage', '', 'role_delete', '2', 'admin', '2019-02-16 00:28:31', 'admin', '2018-03-22 09:49:30');
INSERT INTO `biz_menu_resource` VALUES ('c49551ecc0984faf820de4950d6fe3e2', 'b258146053d44f84b810b07d965f838b', '角色管理修改', '角色管理修改', '2', '/sysmgr/role/ModifyRole', '/sysmgr/RoleManage', '', 'role_modify', '3', 'admin', '2019-02-16 00:28:38', 'admin', '2018-03-22 09:50:27');
INSERT INTO `biz_menu_resource` VALUES ('3e211c7278ce4ca7993182cca08ef987', 'b258146053d44f84b810b07d965f838b', '角色管理查看', '角色管理查看', '2', '/sysmgr/role/findRoleInfo', '/sysmgr/RoleManage', '', 'role_check', '4', 'admin', '2019-02-16 00:28:47', 'admin', '2018-03-22 09:09:07');
INSERT INTO `biz_menu_resource` VALUES ('776e224014764debb5db7396427b6db9', 'b257bb8414914b60b8eb8974591c1390', '部门删除', '部门删除', '2', '/sysmgr/depart/deleteDepart', '/sysmgr/DepartManage', '', 'depart_delete', '2', 'admin', '2019-04-09 09:46:21', 'admin', '2018-03-22 09:09:51');
INSERT INTO `biz_menu_resource` VALUES ('6da76c70c1d14b5e958f95f925956489', 'b257bb8414914b60b8eb8974591c1390', '部门修改', '部门修改', '2', '/sysmgr/depart/modifyDepart', '/sysmgr/DepartManage', '', 'depart_modify', '3', 'admin', '2019-04-09 09:46:36', 'admin', '2018-03-22 09:10:04');
INSERT INTO `biz_menu_resource` VALUES ('2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '7a43e9d1c2874cd48bbb64a211529d9f', '住户管理', '住户管理', '1', '/bizmgr/home/findHomeList', '/bizmgr/HouseholdManage', '1', '', '1', 'admin', '2019-03-12 02:38:03', 'admin', '2018-03-22 09:10:17');
INSERT INTO `biz_menu_resource` VALUES ('7a43e9d1c2874cd48bbb64a211529d9f', '-1', '运营管理', '运营管理', '1', '', '', 'menu4-iocn', '', '3', 'qiao', '2019-03-06 02:18:24', 'admin', '2018-04-17 11:51:49');
INSERT INTO `biz_menu_resource` VALUES ('5a97c189f43448f08d4f81dff54b53a1', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户管理新增', '住户管理新增', '2', '/bizmgr/home/addHome', '/bizmgr/HouseholdManage', '', 'householuer_add', '1', 'qiao', '2019-03-11 10:14:57', 'admin', '2018-03-22 09:10:30');
INSERT INTO `biz_menu_resource` VALUES ('896447b2e6e84283a08a6e3bbc6e2e08', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户管理删除', '住户管理删除', '2', '/bizmgr/home/deleteHome', '/bizmgr/HouseholdManage', '', 'householuer_delete', '2', 'qiao', '2019-03-11 10:15:42', 'admin', '2018-03-22 09:10:42');
INSERT INTO `biz_menu_resource` VALUES ('bab55833993b41e994cb41cefc9f2e72', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户管理修改', '住户管理修改', '2', '/bizmgr/home/modifyHome', '/bizmgr/HouseholdManage', '', 'householuer_modify', '3', 'qiao', '2019-03-11 10:15:11', 'admin', '2018-03-22 09:10:52');
INSERT INTO `biz_menu_resource` VALUES ('5dd519f3b6c94fc49ae0ea41c2443815', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户管理查看', '住户管理查看', '2', '/bizmgr/home/findHomeInfo', '/bizmgr/HouseholdManage', '', 'householuer_check', '4', 'qiao', '2019-03-11 10:15:24', 'admin', '2018-03-22 09:11:06');
INSERT INTO `biz_menu_resource` VALUES ('b3e00b1a717149dfab8fc7d13246a1a1', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '设备绑定与解绑', '设备绑定与解绑', '2', '/bizmgr/home/bindUnbindEqu', '/bizmgr/HouseholdManage', '', 'equment_Rule', '5', 'qiao', '2019-03-20 08:39:04', 'admin', '2018-03-22 09:11:42');
INSERT INTO `biz_menu_resource` VALUES ('a00f9561f84c478c845d49e540358b63', '91b888d5cfd84232bd700ce94d4d1d2b', '参数设置', '参数设置', '2', '/index/radio/configParams', '/home', null, 'parameter_set', null, null, '2019-03-13 02:57:44', null, null);
INSERT INTO `biz_menu_resource` VALUES ('89d3d4be36694678bb61edd2fe24e124', '91b888d5cfd84232bd700ce94d4d1d2b', '远程控制', '远程控制', '2', '/index/radio/ctrlRadio', '/home', null, 'radio_remote', null, null, '2019-03-13 02:57:42', null, null);
INSERT INTO `biz_menu_resource` VALUES ('c6e33fea3d184f6ca80ff82aadabe021', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户导入', '住户导入', '2', '/import/importData/home', '/bizmgr/HouseholdManage', null, 'householuer_import', '6', null, '2019-03-20 08:39:08', null, null);
INSERT INTO `biz_menu_resource` VALUES ('1be258d234824a719048f91c79863da1', '9dcc280d3e2e4ed08345e7da92bf3513', '设备导入', '设备导入', '2', '/import/importData/equ', '/bizmgr/EqumentManage', null, 'equment_import', '8', null, '2019-03-18 09:24:18', null, null);
INSERT INTO `biz_menu_resource` VALUES ('f9d9e1a631af47bdbe02ab9ecf0401b0', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', '住户导出', '住户导出', '2', '/bizmgr/home/exportHome', '/bizmgr/HouseholdManage', null, 'householuer_export', '7', null, '2019-03-20 08:44:32', null, null);
INSERT INTO `biz_menu_resource` VALUES ('e326c8a0aa6b4718978f2bb4e59155dc', '9dcc280d3e2e4ed08345e7da92bf3513', '设备导出', '设备导出', '2', '/bizmgr/equ/exportEqu', '/bizmgr/EqumentManage', null, 'equment_export', '9', null, '2019-03-20 08:44:48', null, null);
INSERT INTO `biz_menu_resource` VALUES ('b257bb8414914b60b8eb8974591c1390', 'f26ee71b575048f09968621971381bb3', '部门管理', '部门管理', '1', null, '/sysmgr/DepartManage', '1', null, '2', null, '2019-04-09 09:42:34', null, null);
INSERT INTO `biz_menu_resource` VALUES ('17808758a32141f19a4827c97b8f1c58', 'b257bb8414914b60b8eb8974591c1390', '部门新增', '部门新增', '2', '/sysmgr/depart/addDepart', '/sysmgr/DepartManage', '', 'depart_add', '1', 'admin', '2019-04-09 09:47:13', 'admin', '2018-03-22 09:09:41');
INSERT INTO `biz_menu_resource` VALUES ('9dcc280d3e2e4ed08345e7da92bf3513', '7a43e9d1c2874cd48bbb64a211529d9f', '设备管理', '设备管理', '1', '/bizmgr/equ/findEquList', '/bizmgr/EqumentManage', '3', '', '3', 'admin', '2019-02-16 00:32:01', 'admin', '2018-03-22 09:13:24');
INSERT INTO `biz_menu_resource` VALUES ('978faf0da57a49cfad0ea686e5aabec3', '9dcc280d3e2e4ed08345e7da92bf3513', '设备管理新增', '设备管理新增', '2', '/bizmgr/equ/addEqu', '/bizmgr/EqumentManage', '', 'equment_add', '1', 'admin', '2019-02-16 00:32:08', 'admin', '2018-03-22 09:13:35');
INSERT INTO `biz_menu_resource` VALUES ('67e71d504892453ea37714ffc123eb15', '9dcc280d3e2e4ed08345e7da92bf3513', '设备管理删除', '设备管理删除', '2', '/bizmgr/equ/deleteEqu', '/bizmgr/EqumentManage', '', 'equment_delete', '2', 'admin', '2019-02-16 00:32:16', 'admin', '2018-03-22 09:13:52');
INSERT INTO `biz_menu_resource` VALUES ('bf31983bfa6a4233b1c7dc2f8908b81e', '9dcc280d3e2e4ed08345e7da92bf3513', '设备管理修改', '设备管理修改', '2', '/bizmgr/equ/modifyEqu', '/bizmgr/EqumentManage', '', 'equment_modify', '3', 'admin', '2019-03-11 10:13:08', 'admin', '2018-03-22 09:14:08');
INSERT INTO `biz_menu_resource` VALUES ('d21972a2ff3c49cabf49675231256ba1', '-1', '统计报表', '统计报表', '1', '', '', 'menu5-iocn', '', '4', 'qiao', '2019-03-06 02:18:27', 'admin', '2018-04-17 11:51:58');
INSERT INTO `biz_menu_resource` VALUES ('3efd24b832474b85af1a6483a5b4fe5f', '9dcc280d3e2e4ed08345e7da92bf3513', '设备管理查看', '设备管理查看', '2', '/bizmgr/equ/findEquInfo', '/bizmgr/EqumentManage', '', 'equment_check', '6', 'admin', '2019-02-16 00:34:10', 'admin', '2018-05-04 17:45:06');
INSERT INTO `biz_menu_resource` VALUES ('6e2072212d954987be01484abedd684e', 'd21972a2ff3c49cabf49675231256ba1', '呼叫报表', '呼叫报表', '1', '/report/call/findCallList', '/report/CallReport', '1', 'CallReport', '2', 'qiao', '2019-03-06 02:50:50', null, '0000-00-00 00:00:00');
INSERT INTO `biz_menu_resource` VALUES ('cc0e6dbea0ef4e6bbcb4ab9070715694', '91b888d5cfd84232bd700ce94d4d1d2b', '实时广播', '实时广播', '2', '/index/radio/realRadio', '/home', null, 'radio_realtime', null, null, '2019-03-13 02:57:36', null, null);

-- ----------------------------
-- Table structure for `biz_prov`
-- ----------------------------
DROP TABLE IF EXISTS `biz_prov`;
CREATE TABLE `biz_prov` (
  `prov_id` int(11) DEFAULT NULL,
  `prov_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_prov
-- ----------------------------
INSERT INTO `biz_prov` VALUES ('1', '新疆');

-- ----------------------------
-- Table structure for `biz_resource`
-- ----------------------------
DROP TABLE IF EXISTS `biz_resource`;
CREATE TABLE `biz_resource` (
  `resource_id` varchar(32) NOT NULL,
  `resource_name` varchar(50) DEFAULT NULL,
  `resource_group` varchar(30) NOT NULL,
  `resource_url` varchar(100) NOT NULL,
  `resource_perm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_resource
-- ----------------------------
INSERT INTO `biz_resource` VALUES ('1136d064a911e8905b4ccc6a3ba90c', '首页报警', '首页报警', '/lbs/car/findAlarmTop', 'white_gps_alarm');
INSERT INTO `biz_resource` VALUES ('d73826d7e2bd49dcbb66c9fce1391c58', '修改密码', '修改密码', '/sysmgr/account/modifyPassword', 'white_modify_password');
INSERT INTO `biz_resource` VALUES ('595b38ca54a749889f7a642a1b78d32f', '查看个人信息', '查看个人信息', '/currentUser', 'white_current_user');
INSERT INTO `biz_resource` VALUES ('0a35b91d59b84031aba3a78797534676', '获取配置参数', '获取配置参数', '/sysmgr/account/findConfig', 'white_find_config');
INSERT INTO `biz_resource` VALUES ('5a7fa7a332084a4e9d63262b5e696b62', '菜单用户权限', '菜单用户权限', '/auth/findMenuPerms', 'white_menus_perms');
INSERT INTO `biz_resource` VALUES ('932dadc724d64e109bda548aba2479b8', '文件上传', '文件上传', '/file/upload', 'white_upload');
INSERT INTO `biz_resource` VALUES ('7d727d31213f4caab71997e9cf6b7943', '查看图片', '查看图片', '/file/viewImage', 'white_viewImage');
INSERT INTO `biz_resource` VALUES ('522299f268244ffebc00ba7016929621', '批量查找字典项', '批量查找字典项', '/dict/findBatchDictsByCode', 'white_batch_code');
INSERT INTO `biz_resource` VALUES ('297a642135ad4729af688e14cbe0d86d', '查询操作指令', '查询操作指令', '/lbs/car/findOrdersByCarId', 'white_orders');
INSERT INTO `biz_resource` VALUES ('c266922f41d243dfae646b0faaf28102', '获取车队列表树', '获取车队列表树', '/lbs/car/findCarTree', 'white_car_tree');
INSERT INTO `biz_resource` VALUES ('4646443ebbaa4a2681145fd7d63387bf', '查询车辆树', '查询车辆树', '/lbs/trail/findCarsByTree', 'white_trail_car_tree');
INSERT INTO `biz_resource` VALUES ('574cf6d6e50e4a689c76bd304542b912', '同一企业账号唯一', '同一企业账号唯一', '/sysmgr/account/uniqueAct', 'white_unique_act');
INSERT INTO `biz_resource` VALUES ('31bd386a943d442c95c76a5b78a4737c', '手机号唯一性校验', '手机号唯一性校验', '/sysmgr/account/uniquePhone', 'white_unique_phone');
INSERT INTO `biz_resource` VALUES ('1cffca72012d4faeb5f3cdce60fdd7cc', '用户角色列表', '用户角色列表', '/sysmgr/account/findRolesByActId', 'white_roles_act');
INSERT INTO `biz_resource` VALUES ('3e478dd727454a6bb395ca4827d668b3', '获取角色下拉框', '获取角色下拉框', '/sysmgr/role/roleArr', 'white_role_list');
INSERT INTO `biz_resource` VALUES ('79e9862a87774370a57440b1bca47450', '获取已分组用户', '获取已分组用户', '/sysmgr/group/findGrouped', 'white_grouped');
INSERT INTO `biz_resource` VALUES ('d515a459273941e2b20bf21c59c89af3', '验证用户组名称唯一', '验证用户组名称唯一', '/sysmgr/group/uniqueGroup', 'white_unique_group');
INSERT INTO `biz_resource` VALUES ('7724923839754cf18cd04fb180315a95', '获取组织机构树', '获取组织机构树', '/sysmgr/depart/departTree', 'white_depart_tree');
INSERT INTO `biz_resource` VALUES ('fe0dd9dc775843299780c7c844e158b6', '验证组织机构名称唯一', '验证组织机构名称唯一', '/sysmgr/depart/uniqueDepart', 'white_depart_unique');
INSERT INTO `biz_resource` VALUES ('e430fde0b907431782aaeb86e6e948f1', '查看资源列表', '查看资源列表', '/sysmgr/role/findResources', 'white_resources');
INSERT INTO `biz_resource` VALUES ('d28e60437bac46f8b90c8f0b7ea69a4c', '验证角色名称唯一', '验证角色名称唯一', '/sysmgr/role/uniqueRole', 'white_unique_role');
INSERT INTO `biz_resource` VALUES ('1651ff64a911e8905b4ccc6a3ba90c', '首页设置', '首页设置', '/userMgr/account/editConfig', 'white_gps_set');
INSERT INTO `biz_resource` VALUES ('e4294bcbcbba43bcbf9c2b544eba233c', '验证设备IMEI唯一', '验证设备IMEI唯一', '/bizmgr/equ/uniqueIMEI', 'white_unique_IMEI');
INSERT INTO `biz_resource` VALUES ('4d6ec1042d4d4ca79b536c873b757ba3', '验证设备手机号唯一', '验证设备手机号唯一', '/bizmgr/equ/uniquePhone', 'white_biz_uni_phone');
INSERT INTO `biz_resource` VALUES ('cdccb0e38caf469da34424c7f37b0ef7', '查询未绑定设备列表', '查询未绑定设备列表', '/bizmgr/equ/findUnboundEqus', 'white_equs');
INSERT INTO `biz_resource` VALUES ('66950cdbee5147c49215948f7a9eaae3', '验证车牌号唯一', '验证车牌号唯一', '/bizmgr/car/uniqueCarNum', 'white_biz_uni_car');
INSERT INTO `biz_resource` VALUES ('2122d22fe9824fa9b99be2ed33c7b571', '卡号唯一校验', '卡号唯一校验', '/bizmgr/driver/uniqueCardNo', 'white_unique_card_num');
INSERT INTO `biz_resource` VALUES ('a685d6ad48a14434a8e2854bf250051e', '验证驾驶员手机唯一', '验证驾驶员手机唯一', '/bizmgr/driver/uniquePhone', 'white_unique_der_phone');
INSERT INTO `biz_resource` VALUES ('a2e8c6a26c4b4c1bb5c2420b2002c80c', '子组织机构查找', '组织机构管理', '/sysmgr/depart/findSubDepart', 'white_sub_depart');
INSERT INTO `biz_resource` VALUES ('ba3e21586c9646849c71998b1da5a6c8', '当前组织机构查找', '组织机构管理', '/sysmgr/epart/findCurDepart', 'white_cur_depart');
INSERT INTO `biz_resource` VALUES ('5b641cac5ec24469801294b15c5abf90', '文件下载', '通用模块', '/ftpDownload', 'white_ftp_download');
INSERT INTO `biz_resource` VALUES ('a1bde8bdd6904916935f9bb5794a2cf7', '字典同步', '缓存管理', '/dict/synchronization', 'dict_sycn');
INSERT INTO `biz_resource` VALUES ('d658542816f746c39603c7452d804c08', '业务缓存', '缓存管理', '/redis/synchronization', 'bizcache_sycn');

-- ----------------------------
-- Table structure for `biz_role`
-- ----------------------------
DROP TABLE IF EXISTS `biz_role`;
CREATE TABLE `biz_role` (
  `role_id` varchar(32) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_desc` varchar(200) DEFAULT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_role
-- ----------------------------
INSERT INTO `biz_role` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '运维', '运维', 'admin', '2019-02-20 06:35:18', 'admin', '2019-02-20 14:35:19');
INSERT INTO `biz_role` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '平台业务角色', '平台业务角色', 'admin', '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role` VALUES ('b50da7a1637d43fe97b616f1fe8473e2', '11111', '11', 'admin', '2019-03-29 09:11:18', null, null);
INSERT INTO `biz_role` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '业务', '业务角色', 'admin', '2019-01-04 09:04:34', null, null);
INSERT INTO `biz_role` VALUES ('bdf77bafecdf4a26a4bf031241177253', '位置服务，系统管理', '2222', 'admin', '2019-03-06 01:49:01', 'admin', '2019-03-06 09:49:02');
INSERT INTO `biz_role` VALUES ('41b19bf6091e40ffa0fde0553d265013', '有方角色', '请勿删除', 'admin', '2019-02-21 19:51:50', null, null);
INSERT INTO `biz_role` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '按钮', '导入，导出，绑定，解绑', 'admin', '2019-03-18 09:49:41', 'admin', '2019-03-18 17:49:43');
INSERT INTO `biz_role` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'ceshi1', '运营管理、统计报表', 'admin', '2019-03-19 03:35:04', 'admin', '2019-03-19 11:35:05');
INSERT INTO `biz_role` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '测试角色', '位置服务、系统管理、运营管理、统计报表', 'admin', '2019-03-29 11:18:14', null, null);
INSERT INTO `biz_role` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '客户演示', '客户演示', 'admin', '2019-03-29 11:19:42', null, null);

-- ----------------------------
-- Table structure for `biz_role_res_map`
-- ----------------------------
DROP TABLE IF EXISTS `biz_role_res_map`;
CREATE TABLE `biz_role_res_map` (
  `role_id` varchar(32) NOT NULL,
  `menu_id` varchar(32) NOT NULL,
  `create_user` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_user` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_role_res_map
-- ----------------------------
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '67e71d504892453ea37714ffc123eb15', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'e326c8a0aa6b4718978f2bb4e59155dc', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '1be258d234824a719048f91c79863da1', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'f9d9e1a631af47bdbe02ab9ecf0401b0', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'c6e33fea3d184f6ca80ff82aadabe021', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'b3e00b1a717149dfab8fc7d13246a1a1', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '1b9d24f486e34171b6c3fa92b0e3dac0', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '98cc277a66c742fc8981b96111d31f56', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'f3f79a5c5d644a5c8ad8aad37c3f746a', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '9626f62191334f48be35106a5649fd2b', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '7101085a0cff467487b0d419d0a3c336', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '53fb773f0ad041688f838529a6fbecc0', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '4aca247edd28450288e8162e1748f67a', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '86c2ddc34f934cf4b5d39d7cf63703e5', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '33c902855b3a4450aefbc7133229bca1', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd675387249dd46b08dbbf81a6694da91', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '36e02202f9494426a0cb428e2e8b92a8', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd425392ff16148fd9a3c74853aa79a91', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd123c38d6e9944f6a88257172e5e6c65', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'b686a344e05d4bd3873c4c7782b70220', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '1d9c33e028c6410c92ab57b1c09b30a7', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '521e0faae23c4cd48ac6851769e3de76', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '82fd9b5f720b48208e473b2bc832a13e', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd21972a2ff3c49cabf49675231256ba1', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd3c6b2b984444611adef53f960e265fa', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '9280c2a896804417bf26bee04b9f7641', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', 'd16b1966b298467b821bcb58186a6e3b', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '6e2072212d954987be01484abedd684e', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '539c9f63df9e4a5691b90022d3c7c1be', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '105f76ff68a043debac6356abcaddac0', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '3b9aaecfbb2147a78923fb08b2ed350e', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '9cbe63d731a94094bb30852c23cf8c32', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('100efcc6891e44cb87f1e4ee614c11ab', '9fbcc920b32c47f0922145e5302e34a1', null, '2018-08-07 13:29:08', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '7d86d43dd20243d28db3875b3e399dc4', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'b3e00b1a717149dfab8fc7d13246a1a1', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '5173104c824c47b9b5eb62d23509b372', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'aa367e1e6ae649198811b5abbf2b44c4', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '896447b2e6e84283a08a6e3bbc6e2e08', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '5a97c189f43448f08d4f81dff54b53a1', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '7101085a0cff467487b0d419d0a3c336', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '9626f62191334f48be35106a5649fd2b', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'f3f79a5c5d644a5c8ad8aad37c3f746a', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '98cc277a66c742fc8981b96111d31f56', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '1b9d24f486e34171b6c3fa92b0e3dac0', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '7101085a0cff467487b0d419d0a3c336', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '9626f62191334f48be35106a5649fd2b', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'f3f79a5c5d644a5c8ad8aad37c3f746a', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '98cc277a66c742fc8981b96111d31f56', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '1b9d24f486e34171b6c3fa92b0e3dac0', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '3e211c7278ce4ca7993182cca08ef987', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'c49551ecc0984faf820de4950d6fe3e2', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'd85490e442e7493bb0f4f6569ba78ed9', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '694a4684694545bc8fc7fadee0c80f57', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'b258146053d44f84b810b07d965f838b', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '59353ec0d30a4cbb9771ac1178847b8c', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'd62d980e67fb44b098a3e814321a91b5', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'f1b5e02bf6274be28280d149d3b2beb2', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'a8fd5ea960b8477ab9d1c101d6453e5a', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '3b20578980884fc8a9b647307a986092', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '4421444b79784bc780c75ef2bcf76b56', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '2547f94c96194eb3a835acafb17b1d42', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'c4c7135d219545a9ac8b56adcde13fb6', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '939d22c29eb84947ae87075aa63fb092', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '65bd4549a8a24f709b4adcaadcddabbe', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '7ea429cbb14f476c84df6c37617248ca', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '375a784e3a854bb4af58dcb4495cd47d', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'bc1134b643034f6e93c7c66a4bcb6218', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'f26ee71b575048f09968621971381bb3', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'cc0e6dbea0ef4e6bbcb4ab9070715694', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '89d3d4be36694678bb61edd2fe24e124', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'a00f9561f84c478c845d49e540358b63', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '6e2072212d954987be01484abedd684e', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '9626f62191334f48be35106a5649fd2b', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '1b9d24f486e34171b6c3fa92b0e3dac0', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '98cc277a66c742fc8981b96111d31f56', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'f3f79a5c5d644a5c8ad8aad37c3f746a', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '9626f62191334f48be35106a5649fd2b', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '7101085a0cff467487b0d419d0a3c336', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '375a784e3a854bb4af58dcb4495cd47d', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '7ea429cbb14f476c84df6c37617248ca', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '2547f94c96194eb3a835acafb17b1d42', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd62d980e67fb44b098a3e814321a91b5', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '3e211c7278ce4ca7993182cca08ef987', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '5a97c189f43448f08d4f81dff54b53a1', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '896447b2e6e84283a08a6e3bbc6e2e08', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'aa367e1e6ae649198811b5abbf2b44c4', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '5173104c824c47b9b5eb62d23509b372', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'b3e00b1a717149dfab8fc7d13246a1a1', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '7d86d43dd20243d28db3875b3e399dc4', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'cd9e808f06fd404bb16171947c0809ec', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '433fe442f3214094b788aacd5c10e351', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'ad87cd6e43e64407a3f4c5c3496ec781', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'de130098c1fe4ca59fadc6ad7a1b79a4', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '5a90513686574b868eee32f722db9790', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd906b8b93b98421faa0842777ae2f913', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd577bf3eff5c42d89f2b4f66ced51b65', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '67e71d504892453ea37714ffc123eb15', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '65af7a0b405b4e5181137a4766bb61ad', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'a4713c865b4f47f6863898401498cb4a', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '49051b92107b444d86398a6550f4df57', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '60e0ec94989b4cd8bd692cb7b74ef676', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '5190d1861b564c00adc0f0b7f2902fe5', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '42477c8cd52e4126bcae34efde8981f9', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '2d09f6147e3a4b9fb00d927b327ec779', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '42a029ba01dd41d0995714bdc156e5d4', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '12aca071af154fafae1faca20da9bfb7', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'a9ace4020ed241b4998a0571ef41a757', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'c0d9794036054856b16df410396cdab6', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '22690286b47448a4b1cb3101ea29bca7', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '1d944a137b5d46e2bcaa02bb06e52abe', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '10941e7b8d4c44668fa257814dcdcd5b', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '9254136a1d944114bf03bbe38f90165f', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd21972a2ff3c49cabf49675231256ba1', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd3c6b2b984444611adef53f960e265fa', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '9280c2a896804417bf26bee04b9f7641', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'd16b1966b298467b821bcb58186a6e3b', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '6e2072212d954987be01484abedd684e', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', '539c9f63df9e4a5691b90022d3c7c1be', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'f26ee71b575048f09968621971381bb3', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'bc1134b643034f6e93c7c66a4bcb6218', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('8f64b8ebc2544df6a4fe4b68a78b3390', 'b258146053d44f84b810b07d965f838b', null, '2019-01-04 01:04:34', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '896447b2e6e84283a08a6e3bbc6e2e08', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '5a97c189f43448f08d4f81dff54b53a1', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '3e211c7278ce4ca7993182cca08ef987', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'c49551ecc0984faf820de4950d6fe3e2', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'd85490e442e7493bb0f4f6569ba78ed9', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '694a4684694545bc8fc7fadee0c80f57', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'b258146053d44f84b810b07d965f838b', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '59353ec0d30a4cbb9771ac1178847b8c', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'd62d980e67fb44b098a3e814321a91b5', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'f1b5e02bf6274be28280d149d3b2beb2', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'a8fd5ea960b8477ab9d1c101d6453e5a', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '3b20578980884fc8a9b647307a986092', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '4421444b79784bc780c75ef2bcf76b56', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '2547f94c96194eb3a835acafb17b1d42', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'c4c7135d219545a9ac8b56adcde13fb6', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '939d22c29eb84947ae87075aa63fb092', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '65bd4549a8a24f709b4adcaadcddabbe', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '7ea429cbb14f476c84df6c37617248ca', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '375a784e3a854bb4af58dcb4495cd47d', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'bc1134b643034f6e93c7c66a4bcb6218', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'f26ee71b575048f09968621971381bb3', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'cc0e6dbea0ef4e6bbcb4ab9070715694', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '89d3d4be36694678bb61edd2fe24e124', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '6e2072212d954987be01484abedd684e', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '9626f62191334f48be35106a5649fd2b', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'd21972a2ff3c49cabf49675231256ba1', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '67e71d504892453ea37714ffc123eb15', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'e326c8a0aa6b4718978f2bb4e59155dc', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '1be258d234824a719048f91c79863da1', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'f9d9e1a631af47bdbe02ab9ecf0401b0', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'c6e33fea3d184f6ca80ff82aadabe021', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '5a97c189f43448f08d4f81dff54b53a1', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '896447b2e6e84283a08a6e3bbc6e2e08', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('220ddb46542f45ff86cb8bb8227eeae1', 'b3e00b1a717149dfab8fc7d13246a1a1', null, '2019-03-29 03:18:13', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'd21972a2ff3c49cabf49675231256ba1', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('32bc8e96062c44ddabf0fbdc827c038f', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-03-29 03:19:42', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '6e2072212d954987be01484abedd684e', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'a4713c865b4f47f6863898401498cb4a', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '65af7a0b405b4e5181137a4766bb61ad', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '67e71d504892453ea37714ffc123eb15', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'd577bf3eff5c42d89f2b4f66ced51b65', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'd906b8b93b98421faa0842777ae2f913', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '5a90513686574b868eee32f722db9790', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'de130098c1fe4ca59fadc6ad7a1b79a4', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'ad87cd6e43e64407a3f4c5c3496ec781', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', '433fe442f3214094b788aacd5c10e351', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('41b19bf6091e40ffa0fde0553d265013', 'cd9e808f06fd404bb16171947c0809ec', null, '2019-02-21 11:51:49', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'ab1d6d27ec0942e58a7ee11f11e57a28', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'ceee5fbc4cd9440eb7ea77514f0f1f97', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '9626f62191334f48be35106a5649fd2b', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'd21972a2ff3c49cabf49675231256ba1', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '67e71d504892453ea37714ffc123eb15', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '1be258d234824a719048f91c79863da1', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', '89d3d4be36694678bb61edd2fe24e124', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('e56279dab5aa44fc80a793d43f0a3eaf', 'a00f9561f84c478c845d49e540358b63', null, '2019-03-19 03:35:04', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '67e71d504892453ea37714ffc123eb15', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '1be258d234824a719048f91c79863da1', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', 'cc0e6dbea0ef4e6bbcb4ab9070715694', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '89d3d4be36694678bb61edd2fe24e124', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', 'a00f9561f84c478c845d49e540358b63', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('2a5f865f250f4f3aaf65bfa26a24da6b', '91b888d5cfd84232bd700ce94d4d1d2b', null, '2019-03-18 09:49:41', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '978faf0da57a49cfad0ea686e5aabec3', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '9dcc280d3e2e4ed08345e7da92bf3513', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'd577bf3eff5c42d89f2b4f66ced51b65', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'd906b8b93b98421faa0842777ae2f913', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '5a90513686574b868eee32f722db9790', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'de130098c1fe4ca59fadc6ad7a1b79a4', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'ad87cd6e43e64407a3f4c5c3496ec781', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '433fe442f3214094b788aacd5c10e351', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'cd9e808f06fd404bb16171947c0809ec', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '7d86d43dd20243d28db3875b3e399dc4', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'b3e00b1a717149dfab8fc7d13246a1a1', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '5173104c824c47b9b5eb62d23509b372', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'aa367e1e6ae649198811b5abbf2b44c4', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '5dd519f3b6c94fc49ae0ea41c2443815', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'bab55833993b41e994cb41cefc9f2e72', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '896447b2e6e84283a08a6e3bbc6e2e08', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '5a97c189f43448f08d4f81dff54b53a1', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '2e0b8ff8b0b444e3af1ef6c1d5eb2b39', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '7a43e9d1c2874cd48bbb64a211529d9f', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '6eb13a970fb24225a1962b2526dff055', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '1d117402bf704d6c9dc7ba15b2a9dbf5', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'e72758314f264216a0a7362eec54f871', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '6da76c70c1d14b5e958f95f925956489', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '776e224014764debb5db7396427b6db9', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '17808758a32141f19a4827c97b8f1c58', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'b257bb8414914b60b8eb8974591c1390', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '3e211c7278ce4ca7993182cca08ef987', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'c49551ecc0984faf820de4950d6fe3e2', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'd85490e442e7493bb0f4f6569ba78ed9', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '694a4684694545bc8fc7fadee0c80f57', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'b258146053d44f84b810b07d965f838b', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '59353ec0d30a4cbb9771ac1178847b8c', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'd62d980e67fb44b098a3e814321a91b5', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'f1b5e02bf6274be28280d149d3b2beb2', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'a8fd5ea960b8477ab9d1c101d6453e5a', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '3b20578980884fc8a9b647307a986092', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '4421444b79784bc780c75ef2bcf76b56', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '2547f94c96194eb3a835acafb17b1d42', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'c4c7135d219545a9ac8b56adcde13fb6', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '939d22c29eb84947ae87075aa63fb092', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '65bd4549a8a24f709b4adcaadcddabbe', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '7ea429cbb14f476c84df6c37617248ca', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '375a784e3a854bb4af58dcb4495cd47d', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'bc1134b643034f6e93c7c66a4bcb6218', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'f26ee71b575048f09968621971381bb3', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '67e71d504892453ea37714ffc123eb15', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'bf31983bfa6a4233b1c7dc2f8908b81e', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '65af7a0b405b4e5181137a4766bb61ad', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'a4713c865b4f47f6863898401498cb4a', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '3efd24b832474b85af1a6483a5b4fe5f', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '49051b92107b444d86398a6550f4df57', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '60e0ec94989b4cd8bd692cb7b74ef676', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '5190d1861b564c00adc0f0b7f2902fe5', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '42477c8cd52e4126bcae34efde8981f9', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '2d09f6147e3a4b9fb00d927b327ec779', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '42a029ba01dd41d0995714bdc156e5d4', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '12aca071af154fafae1faca20da9bfb7', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'a9ace4020ed241b4998a0571ef41a757', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'c0d9794036054856b16df410396cdab6', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '22690286b47448a4b1cb3101ea29bca7', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '1d944a137b5d46e2bcaa02bb06e52abe', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '10941e7b8d4c44668fa257814dcdcd5b', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '9254136a1d944114bf03bbe38f90165f', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', 'd21972a2ff3c49cabf49675231256ba1', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '6e2072212d954987be01484abedd684e', null, '2019-02-20 06:35:18', null, null);
INSERT INTO `biz_role_res_map` VALUES ('3835260c5d4a41ccbc8601a5fae8484e', '539c9f63df9e4a5691b90022d3c7c1be', null, '2019-02-20 06:35:18', null, null);

-- ----------------------------
-- Table structure for `biz_town`
-- ----------------------------
DROP TABLE IF EXISTS `biz_town`;
CREATE TABLE `biz_town` (
  `town_id` int(11) DEFAULT NULL COMMENT '乡镇ID',
  `town_name` varchar(50) DEFAULT NULL COMMENT '乡镇名称',
  `area_id` int(11) DEFAULT NULL COMMENT '所属县区ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_town
-- ----------------------------
INSERT INTO `biz_town` VALUES ('1010101', '镇01', '10101');
INSERT INTO `biz_town` VALUES ('1010102', '镇02', '10101');
INSERT INTO `biz_town` VALUES ('1010201', '乡镇01', '10102');
INSERT INTO `biz_town` VALUES ('1020101', '乡镇02', '10201');
INSERT INTO `biz_town` VALUES ('1030101', '乡镇03', '10401');
INSERT INTO `biz_town` VALUES ('1030201', '乡镇04', '10402');
INSERT INTO `biz_town` VALUES ('1050101', '乡镇05', '10501');
INSERT INTO `biz_town` VALUES ('1050201', '乡镇06', '10502');
INSERT INTO `biz_town` VALUES ('1060101', '乡镇07', '10601');
INSERT INTO `biz_town` VALUES ('1060102', '乡镇08', '10602');
INSERT INTO `biz_town` VALUES ('1120101', '解放路街道', '11201');

-- ----------------------------
-- Table structure for `biz_village`
-- ----------------------------
DROP TABLE IF EXISTS `biz_village`;
CREATE TABLE `biz_village` (
  `village_id` int(11) DEFAULT NULL COMMENT '村ID',
  `village_name` varchar(50) DEFAULT NULL,
  `town_id` int(11) DEFAULT NULL COMMENT '所属乡镇ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_village
-- ----------------------------
INSERT INTO `biz_village` VALUES ('101010101', '村001', '1010101');
INSERT INTO `biz_village` VALUES ('101010102', '村002', '1010101');
INSERT INTO `biz_village` VALUES ('101020101', '村003', '1010201');
INSERT INTO `biz_village` VALUES ('101010201', '村004', '1010102');
INSERT INTO `biz_village` VALUES ('102010101', '村005', '1020101');
INSERT INTO `biz_village` VALUES ('10203030', '村006', '1030101');
INSERT INTO `biz_village` VALUES ('10203040', '村007', '1030201');
INSERT INTO `biz_village` VALUES ('105010102', '村008', '1050101');
INSERT INTO `biz_village` VALUES ('105020301', '村009', '1050201');
INSERT INTO `biz_village` VALUES ('1060102030', '村110', '1060101');
INSERT INTO `biz_village` VALUES ('1026354', '村222', '1060102');
INSERT INTO `biz_village` VALUES ('112010101', '联通公司', '1120101');

-- ----------------------------
-- Function structure for `findChildrenByDeptId`
-- ----------------------------
DROP FUNCTION IF EXISTS `findChildrenByDeptId`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `findChildrenByDeptId`(deptId VARCHAR(32)) RETURNS text CHARSET utf8
BEGIN
DECLARE sTemp text;
DECLARE sTempChd text;

SET sTemp='';
SET sTempChd = CAST(deptId AS CHAR);

WHILE sTempChd IS NOT NULL DO

if sTemp='' then
set sTemp=sTempChd;
else 
SET sTemp= CONCAT(sTemp,',',sTempChd);
end if;

SELECT GROUP_CONCAT(dept_id) INTO sTempChd FROM biz_department WHERE FIND_IN_SET(dept_pid,sTempChd)>0;
END WHILE;
RETURN sTemp;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `findParentByDeptId`
-- ----------------------------
DROP FUNCTION IF EXISTS `findParentByDeptId`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `findParentByDeptId`(deptId VARCHAR(32)) RETURNS text CHARSET utf8
BEGIN
DECLARE sTemp text;   
DECLARE sTempPare text;   
SET sTemp = '';
SET sTempPare = CAST(deptId AS CHAR);

WHILE sTempPare IS NOT NULL  DO  
IF sTemp='' THEN
SET sTemp = sTempPare;
ELSE
SET sTemp= CONCAT(sTemp,',',sTempPare);
end if;

SELECT GROUP_CONCAT(dept_pid) INTO sTempPare FROM biz_department WHERE FIND_IN_SET(dept_id,sTempPare)>0;
   
END WHILE; 
  
RETURN sTemp;  
END
;;
DELIMITER ;
