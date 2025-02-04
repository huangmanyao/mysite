/*
MySQL Data Transfer
Source Host: 127.0.0.1
Source Database: tzproject
Target Host: 127.0.0.1
Target Database: tzproject
Date: 2019/7/16 16:53:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tb_docs
-- ----------------------------
DROP TABLE IF EXISTS `tb_docs`;
CREATE TABLE `tb_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `title` varchar(150) NOT NULL,
  `desc` longtext NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `file_name` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_docs_author_id_2c8d92c0_fk_tb_user_id` (`author_id`),
  CONSTRAINT `tb_docs_author_id_2c8d92c0_fk_tb_user_id` FOREIGN KEY (`author_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tb_docs` VALUES ('1', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/流畅的Python.pdf', '流畅的Python', '本书由奋战在Python开发一线近20年的Luciano Ramalho执笔，从语言设计层面剖析编程细节，兼顾Python 3和Python 2，教你写出风格地道的Python代码。', '/media/fluent_python_1.jpg', '1', '流畅的Python.pdf');
INSERT INTO `tb_docs` VALUES ('2', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/笨办法学python.pdf', '笨办法学python', '本书的目的是让你起步编程。虽然说是用“Hard Way”（笨办法）学习写程序，但其实并非如此。所谓的“笨办法”指的是本文的教学方式，也就是所谓的“指令式”教学。', '/media/hard_way_to_learn_python.jpg', '1', '笨办法学python.pdf');
INSERT INTO `tb_docs` VALUES ('3', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/像计算机科学家一样思考Python.pdf', '像计算机科学家一样思考Python', '《像计算机科学家一样思考python》按照培养读者像计算机科学家一样的思维方式的思路来教授python语言编程。对于第一次接触程序设计的人来说，是一本不可多得的佳作。', '/media/像计算机科学家一样思考Python.jpg', '2', '像计算机科学家一样思考Python.pdf');
INSERT INTO `tb_docs` VALUES ('4', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/《Python+Cookbook》第三版中文v3.0.0.pdf', '《Python+Cookbook》第三版中文v3', '本书覆盖了Python应用中的很多常见问题，并提出了通用的解决方案。书中包含了大量实用的编程技巧和示例代码，并在Python 3.3环境下进行了测试，可以很方便地应用到实际项目中去。', '/media/Python_Cookbook_第三版.jpg', '2', '《Python+Cookbook》第三版中文v3.0.0.pdf');
INSERT INTO `tb_docs` VALUES ('5', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/Python核心编程（第3版）PDF高清晰完整中文版.pdf', 'Python核心编程（第3版）PDF高清晰完整中文版', '是经典畅销图书《Python核心编程（第二版）》的全新升级版本，总共分为3部分。适合具有一定经验的Python开发人员阅读。', '/media/Python核心编程.jpg', '1', 'Python核心编程（第3版）PDF高清晰完整中文版.pdf');
INSERT INTO `tb_docs` VALUES ('6', '2019-07-15 22:35:27.000000', '2019-07-15 22:35:27.000000', '0', '/media/django项目班_英语单词2.doc', 'django项目班_英语单词2', 'youkou老师说：每天一个单词，充实每一天！', '/media/django项目班_英语单词.jpg', '2', 'django项目班_英语单词2.doc');
