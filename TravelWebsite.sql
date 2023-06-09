/*
Navicat MySQL Data Transfer

Source Server         : ubantuDB
Source Server Version : 80013
Source Host           : 192.168.0.175:3306
Source Database       : TravelWebsite

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-11-21 14:53:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('04', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '04', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '04', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '04', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '04', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 游记信息', '6', 'add_diary');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 游记信息', '6', 'change_diary');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 游记信息', '6', 'delete_diary');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 游记信息', '6', 'view_diary');
INSERT INTO `auth_permission` VALUES ('25', 'Can add news', '7', 'add_news');
INSERT INTO `auth_permission` VALUES ('26', 'Can change news', '7', 'change_news');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete news', '7', 'delete_news');
INSERT INTO `auth_permission` VALUES ('28', 'Can view news', '7', 'view_news');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 活动评论', '8', 'add_activecomments');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 活动评论', '8', 'change_activecomments');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 活动评论', '8', 'delete_activecomments');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 活动评论', '8', 'view_activecomments');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 游记评论', '9', 'add_diarycomments');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 游记评论', '9', 'change_diarycomments');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 游记评论', '9', 'delete_diarycomments');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 游记评论', '9', 'view_diarycomments');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 景区评论', '10', 'add_spotscomments');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 景区评论', '10', 'change_spotscomments');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 景区评论', '10', 'delete_spotscomments');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 景区评论', '10', 'view_spotscomments');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 游记收藏', '11', 'add_usercollect');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 游记收藏', '11', 'change_usercollect');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 游记收藏', '11', 'delete_usercollect');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 游记收藏', '11', 'view_usercollect');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 旅游活动', '12', 'add_active');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 旅游活动', '12', 'change_active');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 旅游活动', '12', 'delete_active');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 旅游活动', '12', 'view_active');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 轮播图', '13', 'add_gallery');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 轮播图', '13', 'change_gallery');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 轮播图', '13', 'delete_gallery');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 轮播图', '13', 'view_gallery');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 旅游景区', '14', 'add_spots');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 旅游景区', '14', 'change_spots');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 旅游景区', '14', 'delete_spots');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 旅游景区', '14', 'view_spots');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户信息', '15', 'add_myuser');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户信息', '15', 'change_myuser');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户信息', '15', 'delete_myuser');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户信息', '15', 'view_myuser');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 轮播图', '16', 'add_banner');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 轮播图', '16', 'change_banner');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 轮播图', '16', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 轮播图', '16', 'view_banner');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 邮箱验证码信息', '17', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 邮箱验证码信息', '17', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 邮箱验证码信息', '17', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 邮箱验证码信息', '17', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 常用联系人信息', '18', 'add_thecontact');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 常用联系人信息', '18', 'change_thecontact');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 常用联系人信息', '18', 'delete_thecontact');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 常用联系人信息', '18', 'view_thecontact');
INSERT INTO `auth_permission` VALUES ('73', 'Can add Bookmark', '19', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('74', 'Can change Bookmark', '19', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete Bookmark', '19', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('76', 'Can view Bookmark', '19', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('77', 'Can add User Setting', '20', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('78', 'Can change User Setting', '20', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete User Setting', '20', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('80', 'Can view User Setting', '20', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('81', 'Can add User Widget', '21', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('82', 'Can change User Widget', '21', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete User Widget', '21', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('84', 'Can view User Widget', '21', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('85', 'Can add log entry', '22', 'add_log');
INSERT INTO `auth_permission` VALUES ('86', 'Can change log entry', '22', 'change_log');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete log entry', '22', 'delete_log');
INSERT INTO `auth_permission` VALUES ('88', 'Can view log entry', '22', 'view_log');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 商品信息', '23', 'add_product');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 商品信息', '23', 'change_product');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 商品信息', '23', 'delete_product');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 商品信息', '23', 'view_product');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 商品图片', '24', 'add_propic');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 商品图片', '24', 'change_propic');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 商品图片', '24', 'delete_propic');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 商品图片', '24', 'view_propic');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('101', 'Can add area info', '26', 'add_areainfo');
INSERT INTO `auth_permission` VALUES ('102', 'Can change area info', '26', 'change_areainfo');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete area info', '26', 'delete_areainfo');
INSERT INTO `auth_permission` VALUES ('104', 'Can view area info', '26', 'view_areainfo');
INSERT INTO `auth_permission` VALUES ('105', 'Can add 游记点赞', '27', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('106', 'Can change 游记点赞', '27', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete 游记点赞', '27', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('108', 'Can view 游记点赞', '27', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('109', 'Can add shopping cart', '28', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('110', 'Can change shopping cart', '28', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete shopping cart', '28', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('112', 'Can view shopping cart', '28', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('113', 'Can add 商品订单主表', '29', 'add_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('114', 'Can change 商品订单主表', '29', 'change_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete 商品订单主表', '29', 'delete_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('116', 'Can view 商品订单主表', '29', 'view_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES ('117', 'Can add 用户购买商品信息', '30', 'add_orderitems');
INSERT INTO `auth_permission` VALUES ('118', 'Can change 用户购买商品信息', '30', 'change_orderitems');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete 用户购买商品信息', '30', 'delete_orderitems');
INSERT INTO `auth_permission` VALUES ('120', 'Can view 用户购买商品信息', '30', 'view_orderitems');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 直接购买商品', '31', 'add_shopping');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 直接购买商品', '31', 'change_shopping');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 直接购买商品', '31', 'delete_shopping');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 直接购买商品', '31', 'view_shopping');
INSERT INTO `auth_permission` VALUES ('125', 'Can add 商品评论', '32', 'add_productcomments');
INSERT INTO `auth_permission` VALUES ('126', 'Can change 商品评论', '32', 'change_productcomments');
INSERT INTO `auth_permission` VALUES ('127', 'Can delete 商品评论', '32', 'delete_productcomments');
INSERT INTO `auth_permission` VALUES ('128', 'Can view 商品评论', '32', 'view_productcomments');
INSERT INTO `auth_permission` VALUES ('129', 'Can add 门票订单', '33', 'add_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('130', 'Can change 门票订单', '33', 'change_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('131', 'Can delete 门票订单', '33', 'delete_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('132', 'Can view 门票订单', '33', 'view_ticketsordersmaintable');
INSERT INTO `auth_permission` VALUES ('133', 'Can add 旅游订单', '34', 'add_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('134', 'Can change 旅游订单', '34', 'change_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('135', 'Can delete 旅游订单', '34', 'delete_scenicordersmaintable');
INSERT INTO `auth_permission` VALUES ('136', 'Can view 旅游订单', '34', 'view_scenicordersmaintable');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('157', '8*7=', '56', '1629cf1ecd71517e65d1f3d47ea05f5d6be2e538', '2018-10-18 16:33:59.104375');

-- ----------------------------
-- Table structure for diarys_diary
-- ----------------------------
DROP TABLE IF EXISTS `diarys_diary`;
CREATE TABLE `diarys_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `checknum` int(11) NOT NULL,
  `commentsnum` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `add_times` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `praisenum` int(11) NOT NULL,
  `collectnum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `diarys_diary_user_id_6a600bd5_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `diarys_diary_user_id_6a600bd5_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diarys_diary
-- ----------------------------
INSERT INTO `diarys_diary` VALUES ('3', '最美人间四月天，此处繁花更盛景', '<p>对于热爱旅行的人来说，四月是个美好的季节，四月春光好，镇江春意闹，每一缕阳光都是适合出行的温度，每一阵和风都是来自春天的信使，让我们一起背上行囊，打卡春日的旅行吧！</p><p><br/></p><p>四月的镇江，于氤氲花香气中，款款走来。镇江最美的季节来了。</p><p><br/></p><p>牡丹是中国的传统名花，它有着“百花之王”之称，自古就备受人们的喜爱。</p><p><br/></p><p>文人墨客们写给牡丹的诗句是数不胜数，最有名的莫过于刘禹锡的那句“唯有牡丹真国色，花开时节动京城”了。</p><p><br/></p><p>&nbsp;</p><p>随着春意渐暖，得撒石磨豆腐村小康牡丹园的牡丹仙子们从萌芽孕蕾到舒叶绽放，经过漫长休眠期后终于舒展身姿，如期而至，闪亮登场。</p><p><br/></p><p>4月15号，得撒石磨豆腐村第八届牡丹节即将开幕，以国色天香的娇人姿态喜迎八方游客。</p><p><br/><img src=\"/media/ueimages/mudanhua2.jpg\" title=\"\" alt=\"mudanhua2.jpg\"/></p>', 'diary/2023/04/mudanhua1.jpg', '16', '0', '1', '2023-04-11 13:51:38.381751', '1', '6', '0');
INSERT INTO `diarys_diary` VALUES ('4', '最美人间四月天，此处繁花更盛景', '<p>对于热爱旅行的人来说，四月是个美好的季节，四月春光好，镇江春意闹，每一缕阳光都是适合出行的温度，每一阵和风都是来自春天的信使，让我们一起背上行囊，打卡春日的旅行吧！</p><p><br/></p><p>四月的镇江，于氤氲花香气中，款款走来。镇江最美的季节来了。</p><p><br/></p><p>牡丹是中国的传统名花，它有着“百花之王”之称，自古就备受人们的喜爱。</p><p><br/></p><p>文人墨客们写给牡丹的诗句是数不胜数，最有名的莫过于刘禹锡的那句“唯有牡丹真国色，花开时节动京城”了。</p><p><br/></p><p>&nbsp;</p><p>随着春意渐暖，得撒石磨豆腐村小康牡丹园的牡丹仙子们从萌芽孕蕾到舒叶绽放，经过漫长休眠期后终于舒展身姿，如期而至，闪亮登场。</p><p><br/></p><p>4月15号，得撒石磨豆腐村第八届牡丹节即将开幕，以国色天香的娇人姿态喜迎八方游客。</p><p><br/><img src=\"/media/ueimages/mudanhua2.jpg\" title=\"\" alt=\"mudanhua2.jpg\"/></p>', 'diary/2023/04/mudanhua1.jpg', '16', '0', '1', '2023-04-11 13:51:38.381751', '1', '6', '0');
INSERT INTO `diarys_diary` VALUES ('5', '赏杜鹃', '<p>春日赏花，怎能少得了镇江市花——杜鹃花？</p><p>杜鹃花，素有“花中西施”的美誉，代表着幸福和吉祥。1994年，被确定为镇江市市花。</p><p>而南山与杜鹃花也有着不同寻常的“缘分”。</p><p>《鹤林志》载道：“杜鹃花高丈余，春日花开，倾城游赏。”</p><p>唐代诗人李绅也有诗云：“鹤栖峰下青莲宇，花发江城世界春。红照日高殷夺火，紫凝霞曙莹销尘。”</p><p>这些记载都表明，南山杜鹃花栽培、观赏历史悠久。</p><p style=\"text-align:center\"><img src=\"/media/dujuan1.jpg\" title=\"\" alt=\"dujuan1.jpg\"/></p><p><br/></p><p>镇江~杜鹃花&nbsp;</p><p><br/></p>', 'diary/2023/04/dujuan4.jpg', '3', '0', '1', '2023-04-11 15:51:24.664372', '19', '3', '0');
INSERT INTO `diarys_diary` VALUES ('6', '绣球花', '<p>如果，我有一个庭院，只能种一种树，那一定木绣球。幽幽庭院寂无声，朵朵繁花雪栖春。</p><p><br/></p><p>从镇江中山东路由西往东行，从远处就能看到大市口城市客厅广场东角矗立着一棵似树非树，似花非花的木绣球。满树的玲珑，让你不由停下脚步，感叹这盛放的生机。</p><p><br/></p><p>据悉，这棵绣球树是镇江蚕研所赠送的礼物，自2001年城市客厅建成的时候就已经种下，到如今是第22个年头了。年年春天，如约盛放，未曾背弃其被赋予的花语——“希望”。</p><p style=\"text-align: center;\"><img src=\"/media/xiuqiuhua1.jpg\" title=\"\" alt=\"xiuqiuhua1.jpg\"/></p>', 'diary/2023/04/xiuqiuhua4.jpg', '53', '0', '1', '2023-04-11 15:53:43.925177', '19', '0', '0');
INSERT INTO `diarys_diary` VALUES ('7', '打卡《瘗鹤铭》系列活动启动 ','<p>最美人间四月天。四月的焦山，春和景明，气候宜人，山水相映，绿树成荫。</p><p>4月8日上午</p><p>一场书法爱好者交流的盛会、名城镇江文化界的盛事在镇江焦山碑刻博物馆“瘗鹤铭”厅隆重举行——“2023打卡《瘗鹤铭》”系列活动拉开帷幕。</p><p>大家来到焦山碑刻博物馆，齐聚书法圣地《瘗鹤铭》碑前，以书为名，共襄一场书法盛宴。</p><p>当天上午10时，“瘗鹤铭”厅前，大家云集，高朋满座。镇江市文化广电和旅游局党委书记、局长陆艳华发布了“2023打卡《瘗鹤铭》”系列活动清单：我为《瘗鹤铭》写一句宣传语活动、打卡《瘗鹤铭》研学基地揭牌活动、打卡《瘗鹤铭》亲子碑刻拓印体验活动、打卡《瘗鹤铭》临摹书法作品大赛、打卡《瘗鹤铭》优秀导游词解说大赛、打卡《瘗鹤铭》文创产品征集活动、随文化名人观《瘗鹤铭》游碑林活动等。</p><p>活动形式多样、贯穿全年，希望市民游客关心支持、踊跃参与。</p><p>陆艳华表示，通过系列活动的举办，我们相信并且期待，以此次活动为契机，塑造独具特色的《瘗鹤铭》文旅品牌，将《瘗鹤铭》打造成为国内外知名的旅游打卡地，吸引更多书法爱好者、海内外游客来镇江参观、研学、旅游。</p><p>镇江文旅人将饱含深情、满怀激情，与大家携手同行，为人民群众精神生活增光添彩，为推动镇江文旅高质量发展作出贡献！</p><p>镇江报业传媒集团党委书记、董事长、社长徐红军介绍了集团“创意写作全城接力”活动情况，并宣布了“我为《瘗鹤铭》写一句宣传语”获奖名单。</p><p>徐红军说，焦山碑林是镇江文化的一张靓丽名片，《瘗鹤铭》更是这靓丽名片中的“明星”，作为“2023打卡《瘗鹤铭》”系列活动重要组成部分和先期活动，“创意写作 全城接力”——“我为《瘗鹤铭》写一句宣传语”活动，由报业集团和市文广旅局、焦山碑刻博物馆共同策划举办。</p><p>创意写作活动以开放平台吸引广大用户参与内容生产传播，拉近媒体与受众的距离，增进用户和文化的情感，使内容生产更加适应时代要求，更加契合受众需求。通过确定写作主题，搭建创作平台，在线众筹内容，滚动传播作品，组织投票评奖，形成报网端微屏圈联动，全民参与、全程接力、全员转发的现象级传播效果，受到了国内外书法爱好者的广泛关注和热情参与。</p><p>领导和嘉宾现场为“我为《瘗鹤铭》写一句宣传语”活动获奖者颁奖。获奖代表孙建平在发言中说，他参与了八季所有主题的写作，也学习了八季所有的入围作品，期间眼界大开，获益良多。八季的活动里，倾注了主办单位和活动组织者大量的心血，有智力的，有体力的。</p><p>在这同时，也看到了活动所有参与者的积极努力，他们提供的大量作品为书香镇江添彩，也为讲好镇江好故事提供了大量的素材。</p><p>著名书法家、江苏省书法院副院长、两届中国书法最高奖兰亭奖获得者宇文家林现场临摹《瘗鹤铭》并讲解“大字之祖”的书法艺术特点。</p><p>现场领导为宇文家林现场临摹的《瘗鹤铭》作品共同签章，并正式启动“2023打卡《瘗鹤铭》系列活动”。</p><p>随后，在展厅，著名文艺评论家、书法家，江苏省文艺评论家协会秘书长，中国书法最高奖兰亭奖获得者衡正安向大家解读了《瘗鹤铭》文化故事，以及其在书法史上的地位和影响。</p><p>据了解，期间共收到在线接龙作品、电子邮件投稿和纸质来稿共700多条，其中一个微信创作群在线接龙达200多条。经过筛选编辑，在“今日镇江”客户端和中山东路4号公众号发布60批作品共616条，评审组投票推出100条进行网络投票。网络投票非常活跃，截止昨天傍晚6时，累计票数66.88万，累计访问量 36.66万人次，创下历次活动参与人数新高。最终，评审组从中评选出最佳宣传语1件，优秀宣传语10件和鼓励奖作品20件。最佳宣传语：千古之谜《瘗鹤铭》，大字之祖名天下。</p><p><img src=\"/media/shufa.jpg\" title=\"\" alt=\"shufa.jpg\"/></p>', 'diary/2023/04/shufa4.jpg', '2', '0', '0', '2023-04-11 15:56:09.247553', '19', '0', '0');
INSERT INTO `diarys_diary` VALUES ('74', '赏杜鹃', '<p>春日赏花，怎能少得了镇江市花——杜鹃花？</p><p>杜鹃花，素有“花中西施”的美誉，代表着幸福和吉祥。1994年，被确定为镇江市市花。</p><p>而南山与杜鹃花也有着不同寻常的“缘分”。</p><p>《鹤林志》载道：“杜鹃花高丈余，春日花开，倾城游赏。”</p><p>唐代诗人李绅也有诗云：“鹤栖峰下青莲宇，花发江城世界春。红照日高殷夺火，紫凝霞曙莹销尘。”</p><p>这些记载都表明，南山杜鹃花栽培、观赏历史悠久。</p><p style=\"text-align:center\"><img src=\"/media/dujuan1.jpg\" title=\"\" alt=\"dujuan1.jpg\"/></p><p><br/></p><p>镇江~杜鹃花&nbsp;</p><p><br/></p>', 'diary/2023/04/dujuan4.jpg', '3', '0', '1', '2023-04-11 15:51:24.664372', '19', '3', '0');
INSERT INTO `diarys_diary` VALUES ('75', '绣球花', '<p>如果，我有一个庭院，只能种一种树，那一定木绣球。幽幽庭院寂无声，朵朵繁花雪栖春。</p><p><br/></p><p>从镇江中山东路由西往东行，从远处就能看到大市口城市客厅广场东角矗立着一棵似树非树，似花非花的木绣球。满树的玲珑，让你不由停下脚步，感叹这盛放的生机。</p><p><br/></p><p>据悉，这棵绣球树是镇江蚕研所赠送的礼物，自2001年城市客厅建成的时候就已经种下，到如今是第22个年头了。年年春天，如约盛放，未曾背弃其被赋予的花语——“希望”。</p><p style=\"text-align: center;\"><img src=\"/media/xiuqiuhua1.jpg\" title=\"\" alt=\"xiuqiuhua1.jpg\"/></p>', 'diary/2023/04/xiuqiuhua4.jpg', '53', '0', '1', '2023-04-11 15:53:43.925177', '19', '0', '0');
INSERT INTO `diarys_diary` VALUES ('76', '打卡《瘗鹤铭》系列活动启动 ','<p>最美人间四月天。四月的焦山，春和景明，气候宜人，山水相映，绿树成荫。</p><p>4月8日上午</p><p>一场书法爱好者交流的盛会、名城镇江文化界的盛事在镇江焦山碑刻博物馆“瘗鹤铭”厅隆重举行——“2023打卡《瘗鹤铭》”系列活动拉开帷幕。</p><p>大家来到焦山碑刻博物馆，齐聚书法圣地《瘗鹤铭》碑前，以书为名，共襄一场书法盛宴。</p><p>当天上午10时，“瘗鹤铭”厅前，大家云集，高朋满座。镇江市文化广电和旅游局党委书记、局长陆艳华发布了“2023打卡《瘗鹤铭》”系列活动清单：我为《瘗鹤铭》写一句宣传语活动、打卡《瘗鹤铭》研学基地揭牌活动、打卡《瘗鹤铭》亲子碑刻拓印体验活动、打卡《瘗鹤铭》临摹书法作品大赛、打卡《瘗鹤铭》优秀导游词解说大赛、打卡《瘗鹤铭》文创产品征集活动、随文化名人观《瘗鹤铭》游碑林活动等。</p><p>活动形式多样、贯穿全年，希望市民游客关心支持、踊跃参与。</p><p>陆艳华表示，通过系列活动的举办，我们相信并且期待，以此次活动为契机，塑造独具特色的《瘗鹤铭》文旅品牌，将《瘗鹤铭》打造成为国内外知名的旅游打卡地，吸引更多书法爱好者、海内外游客来镇江参观、研学、旅游。</p><p>镇江文旅人将饱含深情、满怀激情，与大家携手同行，为人民群众精神生活增光添彩，为推动镇江文旅高质量发展作出贡献！</p><p>镇江报业传媒集团党委书记、董事长、社长徐红军介绍了集团“创意写作全城接力”活动情况，并宣布了“我为《瘗鹤铭》写一句宣传语”获奖名单。</p><p>徐红军说，焦山碑林是镇江文化的一张靓丽名片，《瘗鹤铭》更是这靓丽名片中的“明星”，作为“2023打卡《瘗鹤铭》”系列活动重要组成部分和先期活动，“创意写作 全城接力”——“我为《瘗鹤铭》写一句宣传语”活动，由报业集团和市文广旅局、焦山碑刻博物馆共同策划举办。</p><p>创意写作活动以开放平台吸引广大用户参与内容生产传播，拉近媒体与受众的距离，增进用户和文化的情感，使内容生产更加适应时代要求，更加契合受众需求。通过确定写作主题，搭建创作平台，在线众筹内容，滚动传播作品，组织投票评奖，形成报网端微屏圈联动，全民参与、全程接力、全员转发的现象级传播效果，受到了国内外书法爱好者的广泛关注和热情参与。</p><p>领导和嘉宾现场为“我为《瘗鹤铭》写一句宣传语”活动获奖者颁奖。获奖代表孙建平在发言中说，他参与了八季所有主题的写作，也学习了八季所有的入围作品，期间眼界大开，获益良多。八季的活动里，倾注了主办单位和活动组织者大量的心血，有智力的，有体力的。</p><p>在这同时，也看到了活动所有参与者的积极努力，他们提供的大量作品为书香镇江添彩，也为讲好镇江好故事提供了大量的素材。</p><p>著名书法家、江苏省书法院副院长、两届中国书法最高奖兰亭奖获得者宇文家林现场临摹《瘗鹤铭》并讲解“大字之祖”的书法艺术特点。</p><p>现场领导为宇文家林现场临摹的《瘗鹤铭》作品共同签章，并正式启动“2023打卡《瘗鹤铭》系列活动”。</p><p>随后，在展厅，著名文艺评论家、书法家，江苏省文艺评论家协会秘书长，中国书法最高奖兰亭奖获得者衡正安向大家解读了《瘗鹤铭》文化故事，以及其在书法史上的地位和影响。</p><p>据了解，期间共收到在线接龙作品、电子邮件投稿和纸质来稿共700多条，其中一个微信创作群在线接龙达200多条。经过筛选编辑，在“今日镇江”客户端和中山东路4号公众号发布60批作品共616条，评审组投票推出100条进行网络投票。网络投票非常活跃，截止昨天傍晚6时，累计票数66.88万，累计访问量 36.66万人次，创下历次活动参与人数新高。最终，评审组从中评选出最佳宣传语1件，优秀宣传语10件和鼓励奖作品20件。最佳宣传语：千古之谜《瘗鹤铭》，大字之祖名天下。</p><p><img src=\"/media/shufa.jpg\" title=\"\" alt=\"shufa.jpg\"/></p>', 'diary/2023/04/shufa4.jpg', '2', '0', '0', '2023-04-11 15:56:09.247553', '19', '0', '0');-- Table structure for django_admin_log

-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('04', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'diarys', 'diary');
INSERT INTO `django_content_type` VALUES ('7', 'news', 'news');
INSERT INTO `django_content_type` VALUES ('8', 'operation', 'activecomments');
INSERT INTO `django_content_type` VALUES ('9', 'operation', 'diarycomments');
INSERT INTO `django_content_type` VALUES ('32', 'operation', 'productcomments');
INSERT INTO `django_content_type` VALUES ('31', 'operation', 'shopping');
INSERT INTO `django_content_type` VALUES ('28', 'operation', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('10', 'operation', 'spotscomments');
INSERT INTO `django_content_type` VALUES ('11', 'operation', 'usercollect');
INSERT INTO `django_content_type` VALUES ('27', 'operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('29', 'pay', 'goodsordersmaintable');
INSERT INTO `django_content_type` VALUES ('30', 'pay', 'orderitems');
INSERT INTO `django_content_type` VALUES ('34', 'pay', 'scenicordersmaintable');
INSERT INTO `django_content_type` VALUES ('33', 'pay', 'ticketsordersmaintable');
INSERT INTO `django_content_type` VALUES ('12', 'scenicspots', 'active');
INSERT INTO `django_content_type` VALUES ('13', 'scenicspots', 'gallery');
INSERT INTO `django_content_type` VALUES ('14', 'scenicspots', 'spots');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('23', 'shop', 'product');
INSERT INTO `django_content_type` VALUES ('24', 'shop', 'propic');
INSERT INTO `django_content_type` VALUES ('26', 'users', 'areainfo');
INSERT INTO `django_content_type` VALUES ('16', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('17', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'myuser');
INSERT INTO `django_content_type` VALUES ('18', 'users', 'thecontact');
INSERT INTO `django_content_type` VALUES ('19', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-10-09 16:26:05.433260');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-10-09 16:26:05.851075');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-10-09 16:26:07.159414');
INSERT INTO `django_migrations` VALUES ('04', 'auth', '0002_alter_permission_name_max_length', '2018-10-09 16:26:07.469071');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-10-09 16:26:07.489161');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-10-09 16:26:07.508064');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-10-09 16:26:07.525505');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-10-09 16:26:07.539623');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-10-09 16:26:07.561272');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-10-09 16:26:07.578811');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2018-10-09 16:26:07.596594');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2018-10-09 16:26:09.742026');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2018-10-09 16:26:10.401200');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2018-10-09 16:26:10.421689');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2018-10-09 16:26:10.450370');
INSERT INTO `django_migrations` VALUES ('16', 'diarys', '0001_initial', '2018-10-09 16:26:10.564613');
INSERT INTO `django_migrations` VALUES ('17', 'diarys', '0002_diary_user', '2018-10-09 16:26:10.936283');
INSERT INTO `django_migrations` VALUES ('18', 'news', '0001_initial', '2018-10-09 16:26:11.069816');
INSERT INTO `django_migrations` VALUES ('19', 'scenicspots', '0001_initial', '2018-10-09 16:26:11.858810');
INSERT INTO `django_migrations` VALUES ('20', 'operation', '0001_initial', '2018-10-09 16:26:12.484342');
INSERT INTO `django_migrations` VALUES ('21', 'operation', '0002_auto_20181009_1624', '2018-10-09 16:26:15.011204');
INSERT INTO `django_migrations` VALUES ('22', 'sessions', '0001_initial', '2018-10-09 16:26:15.222733');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0001_initial', '2018-10-09 16:26:16.579197');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0002_log', '2018-10-09 16:26:17.276652');
INSERT INTO `django_migrations` VALUES ('25', 'xadmin', '0003_auto_20160715_0100', '2018-10-09 16:26:17.598662');
INSERT INTO `django_migrations` VALUES ('26', 'shop', '0001_initial', '2018-10-10 09:56:09.849007');
INSERT INTO `django_migrations` VALUES ('27', 'news', '0002_auto_20181011_0944', '2018-10-11 09:44:43.587982');
INSERT INTO `django_migrations` VALUES ('28', 'news', '0003_auto_20181011_1059', '2018-10-11 10:59:30.523816');
INSERT INTO `django_migrations` VALUES ('29', 'captcha', '0001_initial', '2018-10-11 14:11:54.926549');
INSERT INTO `django_migrations` VALUES ('30', 'scenicspots', '0002_auto_20181015_1654', '2018-10-15 16:54:27.987588');
INSERT INTO `django_migrations` VALUES ('31', 'scenicspots', '0003_auto_20181016_1412', '2018-10-16 14:12:47.106173');
INSERT INTO `django_migrations` VALUES ('32', 'scenicspots', '0003_auto_20181016_1605', '2018-10-16 16:05:56.341874');
INSERT INTO `django_migrations` VALUES ('33', 'scenicspots', '0004_auto_20181016_1607', '2018-10-16 16:07:04.562935');
INSERT INTO `django_migrations` VALUES ('34', 'scenicspots', '0005_auto_20181016_1608', '2018-10-16 16:08:24.317636');
INSERT INTO `django_migrations` VALUES ('35', 'users', '0002_myuser_integral', '2018-10-17 09:50:27.796235');
INSERT INTO `django_migrations` VALUES ('36', 'users', '0003_myuser_check_time', '2018-10-17 14:44:34.508524');
INSERT INTO `django_migrations` VALUES ('37', 'users', '0004_auto_20181018_1011', '2018-10-18 10:11:24.027408');
INSERT INTO `django_migrations` VALUES ('38', 'users', '0005_areainfo', '2018-10-18 10:26:50.224997');
INSERT INTO `django_migrations` VALUES ('39', 'users', '0006_auto_20181018_1043', '2018-10-18 10:44:09.789843');
INSERT INTO `django_migrations` VALUES ('40', 'users', '0004_auto_20181018_1048', '2018-10-18 10:49:05.642659');
INSERT INTO `django_migrations` VALUES ('41', 'users', '0005_auto_20181018_1101', '2018-10-18 11:01:48.904530');
INSERT INTO `django_migrations` VALUES ('42', 'users', '0006_auto_20181018_1506', '2018-10-18 15:07:57.965127');
INSERT INTO `django_migrations` VALUES ('43', 'users', '0007_auto_20181018_1559', '2018-10-18 15:59:30.366503');
INSERT INTO `django_migrations` VALUES ('44', 'users', '0004_auto_20181018_1601', '2018-10-18 16:01:17.792776');
INSERT INTO `django_migrations` VALUES ('45', 'users', '0005_auto_20181018_1623', '2018-10-18 16:24:04.737184');
INSERT INTO `django_migrations` VALUES ('46', 'users', '0006_auto_20181018_1625', '2018-10-18 16:25:18.133600');
INSERT INTO `django_migrations` VALUES ('47', 'users', '0006_auto_20181018_1627', '2018-10-18 16:27:58.880720');
INSERT INTO `django_migrations` VALUES ('48', 'users', '0007_auto_20181019_1006', '2018-10-19 10:06:06.415892');
INSERT INTO `django_migrations` VALUES ('49', 'users', '0008_auto_20181019_1416', '2018-10-19 14:16:46.260110');
INSERT INTO `django_migrations` VALUES ('50', 'users', '0007_auto_20181019_1452', '2018-10-19 15:26:44.480658');
INSERT INTO `django_migrations` VALUES ('51', 'users', '0008_auto_20181019_1523', '2018-10-19 15:27:09.875443');
INSERT INTO `django_migrations` VALUES ('52', 'diarys', '0003_auto_20181025_1137', '2018-10-25 11:37:35.109152');
INSERT INTO `django_migrations` VALUES ('53', 'diarys', '0004_auto_20181025_1403', '2018-10-25 14:03:49.659776');
INSERT INTO `django_migrations` VALUES ('54', 'diarys', '0003_auto_20181026_1325', '2018-10-26 13:25:39.725773');
INSERT INTO `django_migrations` VALUES ('55', 'diarys', '0004_auto_20181026_1450', '2018-10-26 14:51:03.916641');
INSERT INTO `django_migrations` VALUES ('56', 'diarys', '0005_diary_praisenum', '2018-10-29 16:25:12.485427');
INSERT INTO `django_migrations` VALUES ('57', 'diarys', '0006_diary_collectnum', '2018-10-29 16:29:17.860055');
INSERT INTO `django_migrations` VALUES ('58', 'operation', '0003_userfav', '2018-10-31 10:03:11.776788');
INSERT INTO `django_migrations` VALUES ('59', 'shop', '0002_auto_20181101_1411', '2018-11-01 14:11:35.125966');
INSERT INTO `django_migrations` VALUES ('60', 'shop', '0003_propic_add_time', '2018-11-01 14:24:05.931082');
INSERT INTO `django_migrations` VALUES ('61', 'shop', '0004_auto_20181101_1433', '2018-11-01 14:33:41.060981');
INSERT INTO `django_migrations` VALUES ('62', 'shop', '0005_auto_20181101_1520', '2018-11-01 15:20:30.030885');
INSERT INTO `django_migrations` VALUES ('63', 'operation', '0004_shoppingcart', '2018-11-02 14:18:44.006037');
INSERT INTO `django_migrations` VALUES ('64', 'operation', '0005_auto_20181106_0941', '2018-11-06 09:42:00.064744');
INSERT INTO `django_migrations` VALUES ('65', 'pay', '0001_initial', '2018-11-08 13:59:49.988765');
INSERT INTO `django_migrations` VALUES ('66', 'pay', '0002_auto_20181108_1406', '2018-11-08 14:06:37.056286');
INSERT INTO `django_migrations` VALUES ('67', 'pay', '0003_auto_20181109_1110', '2018-11-09 11:10:45.960591');
INSERT INTO `django_migrations` VALUES ('68', 'pay', '0004_auto_20181109_1323', '2018-11-09 13:23:52.491480');
INSERT INTO `django_migrations` VALUES ('69', 'pay', '0002_orderitems_good_price', '2018-11-09 14:00:00.964442');
INSERT INTO `django_migrations` VALUES ('70', 'pay', '0003_auto_20181109_1404', '2018-11-09 14:04:11.181572');
INSERT INTO `django_migrations` VALUES ('71', 'pay', '0004_orderitems_good_image', '2018-11-09 14:12:05.059083');
INSERT INTO `django_migrations` VALUES ('72', 'pay', '0005_orderitems_good_id', '2018-11-09 15:26:31.905550');
INSERT INTO `django_migrations` VALUES ('73', 'operation', '0006_shopping', '2018-11-12 10:29:12.530515');
INSERT INTO `django_migrations` VALUES ('74', 'operation', '0007_productcomments', '2018-11-12 15:14:51.659297');
INSERT INTO `django_migrations` VALUES ('75', 'pay', '0006_ticketsordersmaintable', '2018-11-13 15:04:13.132703');
INSERT INTO `django_migrations` VALUES ('76', 'pay', '0007_ticketsordersmaintable_cdk', '2018-11-14 10:20:53.136136');
INSERT INTO `django_migrations` VALUES ('77', 'pay', '0008_auto_20181114_1036', '2018-11-14 10:36:06.076438');
INSERT INTO `django_migrations` VALUES ('78', 'pay', '0009_auto_20181114_1317', '2018-11-14 13:17:10.539366');
INSERT INTO `django_migrations` VALUES ('79', 'scenicspots', '0003_auto_20181016_1625', '2018-11-19 10:41:36.210767');
INSERT INTO `django_migrations` VALUES ('80', 'scenicspots', '0004_auto_20181119_1037', '2018-11-19 10:41:36.322340');
INSERT INTO `django_migrations` VALUES ('81', 'pay', '0010_auto_20181119_1545', '2018-11-19 15:45:46.302588');
INSERT INTO `django_migrations` VALUES ('82', 'users', '0009_auto_20181109_1338', '2018-11-20 11:48:47.917988');
INSERT INTO `django_migrations` VALUES ('83', 'users', '0010_remove_banner_index', '2018-11-20 11:48:48.206575');
INSERT INTO `django_migrations` VALUES ('84', 'users', '0011_auto_20181120_1353', '2018-11-20 13:54:07.160925');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5b9yqp0jwrw9erg53kuf16mtx03mpyne', 'ODUzY2NlMDAxZGJiYmM0MGViOGI4OTdmZjRmODY0ZDUwYTlkNWYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTY5MDFiYmZmMGRjNjI3ZTM5NGU3ODE4ZTc5ODZhNTNhZmFiYjU3IiwiTElTVF9RVUVSWSI6W1sic2hvcCIsInByb2R1Y3QiXSwiIl0sIndpemFyZF94YWRtaW51c2Vyd2lkZ2V0X2FkbWluX3dpemFyZF9mb3JtX3BsdWdpbiI6eyJzdGVwIjpudWxsLCJzdGVwX2RhdGEiOnt9LCJzdGVwX2ZpbGVzIjp7fSwiZXh0cmFfZGF0YSI6e319fQ==', '2018-11-15 16:04:43.816724');
INSERT INTO `django_session` VALUES ('80yzhy03f4fd629kifkk73d0z05eoy4t', 'MWM4NzgwOTU3YWNlZGNjY2E4YzYwNjBmOGRiNmFjNDgwMTUyMWZhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTY5MDFiYmZmMGRjNjI3ZTM5NGU3ODE4ZTc5ODZhNTNhZmFiYjU3IiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl0sIm5hdl9tZW51IjoiW3tcInRpdGxlXCI6IFwiVXNlcnNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL215dXNlci9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDN9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogXCJmYSBmYS1waG90b1wiLCBcIm9yZGVyXCI6IDExfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL215dXNlci9cIn0sIHtcInRpdGxlXCI6IFwiXHU1NTQ2XHU1N2NlXHU0ZmUxXHU2MDZmXCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU1NTQ2XHU1NGMxXHU0ZmUxXHU2MDZmXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zaG9wL3Byb2R1Y3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLXNob3BwaW5nLWNhcnRcIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTU1NDZcdTU0YzFcdTU2ZmVcdTcyNDdcIiwgXCJ1cmxcIjogXCIveGFkbWluL3Nob3AvcHJvcGljL1wiLCBcImljb25cIjogXCJmYSBmYS1waWN0dXJlLW9cIiwgXCJvcmRlclwiOiAxMH1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1zaG9wcGluZy1jYXJ0XCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9zaG9wL3Byb2R1Y3QvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NjViMFx1OTVmYlx1OGQ0NFx1OGJhZlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjViMFx1OTVmYlx1NGZlMVx1NjA2ZlwiLCBcInVybFwiOiBcIi94YWRtaW4vbmV3cy9uZXdzL1wiLCBcImljb25cIjogXCJmYSBmYS1uZXdzcGFwZXItb1wiLCBcIm9yZGVyXCI6IDV9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtbmV3c3BhcGVyLW9cIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL25ld3MvbmV3cy9cIn0sIHtcInRpdGxlXCI6IFwiXHU2NjZmXHU1MzNhXHU1MjE3XHU4ODY4XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU2NWM1XHU2ZTM4XHU2NjZmXHU1MzNhXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zY2VuaWNzcG90cy9zcG90cy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcIm9yZGVyXCI6IDZ9LCB7XCJ0aXRsZVwiOiBcIlx1OGY2ZVx1NjRhZFx1NTZmZVwiLCBcInVybFwiOiBcIi94YWRtaW4vc2Nlbmljc3BvdHMvZ2FsbGVyeS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtcGljdHVyZS1vXCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU2NWM1XHU2ZTM4XHU2ZDNiXHU1MmE4XCIsIFwidXJsXCI6IFwiL3hhZG1pbi9zY2VuaWNzcG90cy9hY3RpdmUvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNsaXBib2FyZFwiLCBcIm9yZGVyXCI6IDh9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtYmFua1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vc2Nlbmljc3BvdHMvc3BvdHMvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMTN9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wifV0ifQ==', '2018-12-05 14:37:41.626802');
INSERT INTO `django_session` VALUES ('ev7jwhjt20x2hsa2ma1o0xs1hu0qngow', 'YThkOWE0M2ZjNmZiODkwOTg3MmVmNjQwNzNlMTVlOGU5ZDM3OWE2NTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzBhYmFmYWY1ZjZhZDY3MTAzODE0N2U2MjllZmRjMzgyM2Q5N2FkYiJ9', '2018-10-26 14:32:18.516868');
INSERT INTO `django_session` VALUES ('s9333wadrnmd1l5q93m71jd6hghx4prm', 'MTZkYTdiZjVlYmY1MTJlMTdjYzAyYzJmNDc5YjEzNjMzNjkxZDQ3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTIzMTZkYzYwOGUzZGY4MmQ1ZDUwYTc2ZWE3NWUyOGZlZmU4YjEwIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-10-26 16:39:26.919838');

-- ----------------------------
-- Table structure for news_news
-- ----------------------------
DROP TABLE IF EXISTS `news_news`;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `checknum` int(11) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `add_times` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_news
-- ----------------------------
INSERT INTO `news_news` VALUES ('1', '柳叶蒸饺', '镇江人的美好一天,是从一碗热气腾腾的锅盖面开始的,热气夹杂着葱叶的香、配料的鲜直冲面门,配上自己挑选的浇头,别提多美了 \r\n 除了锅盖面,蟹黄汤包、柳叶蒸饺……总有一款是你喜欢的,不可错过的还有特色河豚套餐,薄薄的鱼肉可以透光,不仅口感鲜嫩细腻，还口留余香,许多藏在街头巷尾的小馆子,是连地图都搜不到的好味道,不用太过包装，却惊艳了味觉,走一走、逛一逛,你会找到心仪的那款', 'news/2023/04/xiajiao.jpg', '5', 'food', '2023-04-12 10:40:00');
INSERT INTO `news_news` VALUES ('2', '茅山下雪', '初冬的茅山进入了万籁俱寂的时节周遭的一切都显得格外安静似乎都在等待着，等待一场白色的邀约，还记得去年的茅山下雪的样子吗？白雪皑皑、纷纷扬扬一望无垠为大地一裹素容换上一袭新衣......不如一起跟着小编去回忆那纯白的美好吧~，没见过茅山的大雪纷飞就不知道什么叫冬日的精彩白雪皑皑这是美到极致的素颜，冬日还有比下雪更值得期待的事么？赶紧行动快来亲眼见证雪花落在茅山大地带来的美好吧！', 'news/2023/04/maoshan.jpg', '1', 'active', '2023-04-12 10:40:00');
INSERT INTO `news_news` VALUES ('3', '用无声世界见万物！', '“无声世界，追光逐影，眼观意达，可见万物。日前，由市文广旅局主办，市文化馆、市摄影家协会、市聋人摄影学会承办的“‘虽无声 却精彩’镇江市聋人摄影学会摄影作品展”在市文化馆文心展厅开展。闻讯前来观展的市民和广大摄影爱好者纷纷为聋人摄影师们点赞，大家说，“聋人学习摄影、进行摄影创作，需要克服比常人更多的困难，付出比常人更多的努力，他们的精神令人感动，他们的成果十分可喜。”\r\n\r\n　　本次展览共展出由市聋人摄影学会多名会员近几年创作的近60幅优秀摄影作品，作品内容包含人物摄影、风景摄影、无人机摄影。聋人摄影师姚振宇表示：“我一直相信努力可以办成一切事情，照片不会说话，但去拍就会说话”。市摄影家协会主席任国卿评价，从一幅幅展出的摄影作品里，可以看见聋人摄影师镜头下的精彩，感受他们对社会美的认识，同时，也能让他们通过摄影，更多地融入社会。\r\n\r\n　　虽然这些照片的创作者听不见，但他们用美丽的心灵、敏锐的眼睛和灵巧的双手记录了世间的美好，孜孜不倦地追求艺术的高峰，用豁达开朗、乐观自信的心态，克服困难、永不言败，创造更加美好的生活。\r\n\r\n　本次展览将展出至4月16日，感兴趣的市民可前往市文化馆一楼文心展厅观展。 ', 'news/2023/04/wenxinzhanting.jpg', '11', 'active', '2023-04-11 10:40:00');
INSERT INTO `news_news` VALUES ('4', '江南三月天，镇江访茶不负春', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">1如果镇江是一味香，这前调必是沁人心脾的茶香，经过历史的慢火烘焙，愈加醇厚、悠远、回甘，春来镇江，不品春茶，不游茶园，怎知春色几许？</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“楚尾吴头，一片青山入座；淮南江北，半潭江水烹茶。”镇江有着浓郁的茶文化传统，有着中外驰名的金山翠芽。这里地处楚尾吴头、江河交汇之地，丘陵遍布，为典型季风气候地区，四季分明，土壤、水分和光照等条件，极适宜茶树生长。茶圣陆羽在《茶经》中记载：“天下产茶者，三十六州，浙西、湖州上。常州次，宜州、杭州、睦州、歙州下，润州、苏州又下。”镇江在唐朝时叫润州。可见，在唐代，镇江就已被列为重要的产茶区。有好茶还得有好水，镇江自古出名泉。唐代张又新《煎茶水记》载，品泉家刘伯刍对若干名泉佳水进行品鉴，较水宜于茶者凡七等，镇江中泠泉评为第一，从此中泠泉被誉为“天下第一泉”，成为镇江人的骄傲。喝茶，本质上喝的还是文化。“以茶代酒”典故，即源出镇江。陈寿《三国志·吴志》记载：东吴的最后一个皇帝孙皓嗜好饮酒，每次设宴，规定来客至少饮酒七升。但孙皓对博学多闻的朝臣韦曜甚为器重，韦曜酒量不行，孙晧就让人把他的酒换成茶，这就是“以茶代酒”的最早记载。而众多历代名士文人慕名而至镇江，饮泉品茶，留诗咏赞。朝萨都剌有句:“山中有景无多地，天下知名第一泉”；明代唐寅诗:“日斜未放沧浪渡，饱酌中泠洗宿心”；南宋文天祥诗：“扬子江心第一泉，南金北来铸文渊。男儿斩却楼兰首，闲品茶经拜羽仙。”清朝康熙皇帝一生嗜茶，也曾品评金山中泠泉：“缓酌中泠泉，曾传第一泉。如能作霖雨，沾酒遍山行。”</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　而众多历代名士文人慕名而至镇江，饮泉品茶，留诗咏赞。朝萨都剌有句:“山中有景无多地，天下知名第一泉”；明代唐寅诗:“日斜未放沧浪渡，饱酌中泠洗宿心”；南宋文天祥诗：“扬子江心第一泉，南金北来铸文渊。男儿斩却楼兰首，闲品茶经拜羽仙。”清朝康熙皇帝一生嗜茶，也曾品评金山中泠泉：“缓酌中泠泉，曾传第一泉。如能作霖雨，沾酒遍山行。”</p><p><br/></p>', 'news/2023/04/cha.jpg', '0', 'hot', '2023-04-11 10:40:00');
INSERT INTO `news_news` VALUES ('5', '这些耳熟能详的成语，竟然都源自镇江！', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　您知道镇江城自古以来诗意盎然，却不了解镇江还盛产成语。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　成语是汉语中长期习用，结构定型，意义完整的固定词组。它们大多由四字组成，具有深厚的历史文化内涵，是中国特色的语言文化瑰宝，也是古代汉语遗存于现代汉语的活化石，在现代社会生活中仍然具有非常顽强的生命力。镇江作为中国历史文化名城，很多成语的形成与它有着深厚的渊源。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　水漫金山，出自神话故事《白蛇传》，传说古代白蛇娘子与许仙一见钟情后，就结为夫妻。法海和尚见到许仙面带妖气，就把他带到金山寺藏到法座后，白蛇娘子带领小青蛇来寻夫，法海不许。白蛇娘子无奈只好与法海斗法，于是水漫金山，法海搬来天兵天将来对付白蛇，将白蛇压在雷峰塔下。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　据《世说新语》载，东晋太傅郗鉴在京口时，曾遣门生与丞相王导书信，求女婿。王导告诉郗鉴信使往东厢房遍观王氏子弟，任意挑选。门生归，禀报郗鉴说：“王家诸郎，亦皆可嘉，闻来觅婿，咸自矜持。唯有一郎，在床上坦腹卧，如不闻。”郗鉴说：“正此好！”后来询问，乃知是王羲之，郗鉴因嫁其女与王羲之为妻。《晋书·王羲之传》述此事，作“惟一人在东床坦腹食”。后因以“东床坦腹”代指女婿。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　王羲之，字逸少。晋司徒王导之从子。东晋元帝南渡过江，王羲之父王旷首创其议。王羲之年十三，曾拜谒周顗，周顗察而异之。时人宴会，重视吃牛心炙，一次宴会众客尚未食，周顗先割牛心炙给王羲之吃，于是开始知名。及长，王羲之辩赡，以骨鲠称，尤善隶书、行书，为古今之冠，论者称其笔势，以为“飘若浮云，矫若惊龙”。王羲之深为从伯王敦、王导所器重。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　《建康实录》记载，陈时，东征北军于丹徒盗发晋郗昙墓，大获王羲之及诸名贤墨迹。镇江焦山石刻大字之祖《瘗鹤铭》相传为王羲之所书。宋苏舜钦诗：“山阴不见换鹅经，京口今传《瘗鹤铭》。潇洒谪仙来作记，风流太守为开亭。”宋时镇江府城西北有宝墨亭，藏有陀罗尼经石幢，为王奂之集王羲之书，后移于焦山，与《瘗鹤铭》同处一山，宋咸淳八年，赵溍题记称：“古润二宝，俱萃焦山下。”</p><p><br/></p>', 'news/2023/04/chengyu.jpg', '1', 'specialty', '2023-04-11 15:40:00');
INSERT INTO `news_news` VALUES ('6', '想要感受非遗魅力？跟着镇江这3条线路走就对啦！', '<p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　2023“水韵江苏”非遗主题精品旅游线路征集活动自2月启动以来，经过各设区市文化广电和旅游局申报以及社会自主申报，共征集到56条非遗主题旅游线路。经过初审，共遴选出30条旅游线路，其中镇江3条线路入选。这三条线路是：“见怪不怪——探寻舌尖上的‘镇江非遗’”“一眼千年，品味镇江”和“穿越千年——宝华山非遗体验之旅”。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“见怪不怪——探寻舌尖上的‘镇江非遗’”线路以镇江非遗美食为核心，涵盖镇江锅盖面、镇江肴肉、镇江蟹黄汤包、镇江恒顺香醋、东乡羊肉、东乡云飏汤等非遗制作技艺以及扬中河豚食俗，串联起历史遗迹西津渡、镇江醋文化博物馆、长江渔文化园等特色景区、场馆，让游客在品味非遗美食的同时，探寻镇江历史文化底蕴，感受田园生态之美。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“一眼千年，品味镇江”线路涵盖镇江金山、西津渡历史文化街区、中国镇江醋文化博物馆、句容宝华山千华古村、句容茅山、丹阳九里风景区、丹阳酒厂等多个点位，带领游客感受白蛇传传说、镇江恒顺香醋酿制技艺、镇江锅盖面制作技艺、茅山上清符箓文化、封缸酒酿造技艺等非遗魅力。</p><p style=\"margin-top: 0.6rem; margin-bottom: 0.6rem; padding: 0px; border: 0px; text-align: justify; color: rgb(64, 64, 64); font-family: STHeiti, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 17.28px; white-space: normal; background-color: rgb(246, 246, 246);\">　　“穿越千年——宝华山非遗体验之旅”线路位于句容宝华山景区（国家4A级景区），在宝华山国家森林公园，游客可近距离感受句容秦淮灯彩、马灯阵舞、张家镗舞等非遗项目；在古色古香的千华古村，游客可在民俗表演广场领略中国古代民俗技艺的魅力，还可闲逛非遗市井文化一条街，体验形式多样的非遗体验活动、传统美食制作，入住各具特色的民宿等。</p><p><br/></p>', 'news/2023/04/feiyi.jpg', '0', 'specialty', '2023-04-11 15:40:00');
INSERT INTO `news_news` VALUES ('7', '省“最美公共文化空间”之望山书局邀您共度芬芳书香春天！', '望山书局位于镇江市京口区凤凰广场四楼，开业以来，已获得“长三角百佳公共文化空间”、省“最美公共文化空间”、江苏“最美书店”等荣誉称号。望山一曰北眺北固山，二曰“观书山”，其设计理念源自镇江“三山一渡”，同时融入了光影、山形、自然及与镇江相关的特色元素。从空间设计到装饰风格，有机结合镇江独有的山水特色——“看得见山、望得见水，看得见乡愁”，旨在打造有特色、有品位的新型公共文化空间。\r\n\r\n在空间美化特色营造方面，望山书局采用全新理念，融入生活美学，层层错落，形似山型，实现视觉与空间的完美融合。书局内8米层高挑空设计，营造出高低错落的空间感，体现望山书局中“山”的主题，也丰富了空间层次。\r\n\r\n　　功能优化设置合理方面，望山书局内设社科图书区、图书馆式阅读区、精品文创区、多功能厅、小型报告厅、小型展厅等多样化的空间，全方位满足消费者多种文化体验。为了带给读者更好的阅读购书体验，店内配备了自助查询系统、自助购书系统以及掌上新华购书系统，在保证安全的前提下配备了取书梯、选书小推车、购书篮等，在各区域配备了阅读桌、台灯、座位。总服务台还配备了便民箱、轮椅等物品供有需求的读者使用。\r\n\r\n　在模式创新融合发展方面，望山书局除了立足门店，还积极走进社区，走进校园，得到了相关社区和学校的高度赞扬。望山书局与杨家门社区结对共建，为居民小朋友带去绘本；将自有品牌“凤凰姐姐讲绘本”带进幼儿园，与幼儿园的孩子们分享阅读绘本的快乐，同时配合学校开展课后延时服务，通过每周三的阅读分享、小报制作、公益讲座等活动，丰富五六年级孩子们的课后生活。\r\n\r\n  望山书局还会定期与各企事业单位举行阅读分享会、诵读征文等公益活动。与镇江康复集团联合开设“医者·望山——镇江一院公益讲堂”，与读者共话健康，同时作为镇江市图书馆品牌活动“文心讲堂”的分会场，望山书局还定期与市图书馆联合举办读书讲座活动，不定期邀请镇江本土作家学者进行公益文化讲座，培养群众的阅读习惯，提升城市的文化氛围。\r\n\r\n   细雨迷蒙，书香氤氲，随着春天的复苏，一切都充满了生机，在纷繁复杂的世界里，诚邀您走进望山书局,翻开一本有趣的书,把熙攘和聒噪卷入尘埃，伴着书香度过一段属于自己的静谧时光。', 'news/2023/04/tushu.jpg', '20', 'active', '2023-04-10 19:30:00');
INSERT INTO `news_news` VALUES ('8', '兔个开心 | 2023，我想去句容感受四季', '新的一年，你准备好\r\n\r\n赴约山海，前往未见之地了吗？\r\n\r\n　　去看错过的春花秋月、夏雨冬雪\r\n\r\n　如果你还没想好该从何处开始\r\n\r\n  不如去遇见福地句容\r\n\r\n   2023，拥抱美好，不留遗憾\r\n\r\n  在这花开的季节   \r\n\r\n 梅花、海棠、郁金香、樱花、油菜花 \r\n\r\n 无论什么品种、颜色 \r\n\r\n 只要是在春日里盛放 \r\n\r\n 都能装入心情相册 \r\n\r\n 驱散阴霾、明媚心情 \r\n\r\n  储存新年伊始的能量', 'news/2023/04/jurong.jpg', '23', 'active', '2023-04-13 11:30:00');
INSERT INTO `news_news` VALUES ('9', '茅山下雪', '初冬的茅山进入了万籁俱寂的时节周遭的一切都显得格外安静似乎都在等待着，等待一场白色的邀约，还记得去年的茅山下雪的样子吗？白雪皑皑、纷纷扬扬一望无垠为大地一裹素容换上一袭新衣......不如一起跟着小编去回忆那纯白的美好吧~，没见过茅山的大雪纷飞就不知道什么叫冬日的精彩白雪皑皑这是美到极致的素颜，冬日还有比下雪更值得期待的事么？赶紧行动快来亲眼见证雪花落在茅山大地带来的美好吧！', 'news/2023/04/maoshan.jpg', '1', 'culture', '2023-04-12 10:40:00');
INSERT INTO `news_news` VALUES ('10', '茅山下雪', '初冬的茅山进入了万籁俱寂的时节周遭的一切都显得格外安静似乎都在等待着，等待一场白色的邀约，还记得去年的茅山下雪的样子吗？白雪皑皑、纷纷扬扬一望无垠为大地一裹素容换上一袭新衣......不如一起跟着小编去回忆那纯白的美好吧~，没见过茅山的大雪纷飞就不知道什么叫冬日的精彩白雪皑皑这是美到极致的素颜，冬日还有比下雪更值得期待的事么？赶紧行动快来亲眼见证雪花落在茅山大地带来的美好吧！', 'news/2023/04/maoshan.jpg', '1', 'life', '2023-04-12 10:40:00');
-- ----------------------------
-- Table structure for operation_activecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_activecomments`;
CREATE TABLE `operation_activecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `active_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_activecomm_active_id_fa517fb5_fk_scenicspo` (`active_id`),
  KEY `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_activecomm_active_id_fa517fb5_fk_scenicspo` FOREIGN KEY (`active_id`) REFERENCES `scenicspots_active` (`id`),
  CONSTRAINT `operation_activecomments_user_id_ae1153b0_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_activecomments
-- ----------------------------
INSERT INTO `operation_activecomments` VALUES ('1', '赶紧行动起来', '2022-11-19 17:07:42.503174', '2', '1');
INSERT INTO `operation_activecomments` VALUES ('2', '焦山+北固山+句容茅山景区/金山+南山+西津渡古街等10景点24小时畅游卡不限人群！', '2022-11-20 10:10:49.023945', '3', '1');

-- ----------------------------
-- Table structure for operation_diarycomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_diarycomments`;
CREATE TABLE `operation_diarycomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_diarycomments_diary_id_a5054431_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_diarycomments_user_id_90fe7301_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_diarycomments
-- ----------------------------
INSERT INTO `operation_diarycomments` VALUES ('1', '一般化', '2018-10-31 15:20:43.142073', '76', '1');
INSERT INTO `operation_diarycomments` VALUES ('2', '还可以', '2018-10-31 15:44:29.000000', '75', '19');
INSERT INTO `operation_diarycomments` VALUES ('3', '学习了', '2018-10-31 15:49:02.384543', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('4', '很好', '2018-10-31 15:49:58.802799', '75', '19');
INSERT INTO `operation_diarycomments` VALUES ('5', 'hahahahahahhahah', '2018-10-31 15:51:28.044170', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('6', '好好好好好', '2018-10-31 16:17:25.236691', '75', '1');
INSERT INTO `operation_diarycomments` VALUES ('7', '很好很好很好！', '2018-11-14 15:31:24.000000', '75', '19');

-- ----------------------------
-- Table structure for operation_productcomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_productcomments`;
CREATE TABLE `operation_productcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_productcomments_product_id_07f2dc10_fk_shop_product_id` (`product_id`),
  KEY `operation_productcomments_user_id_c7452db3_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_productcomments_product_id_07f2dc10_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_productcomments_user_id_c7452db3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_productcomments
-- ----------------------------
INSERT INTO `operation_productcomments` VALUES ('1', '1541999329971653321', '很好看的摆件！', '2018-11-12 16:22:17.564157', '6', '1');

-- ----------------------------
-- Table structure for operation_shopping
-- ----------------------------
DROP TABLE IF EXISTS `operation_shopping`;
CREATE TABLE `operation_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_shopping_product_id_13d02d24_fk_shop_product_id` (`product_id`),
  KEY `operation_shopping_user_id_0b58005c_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_shopping_product_id_13d02d24_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_shopping_user_id_0b58005c_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_shopping
-- ----------------------------
INSERT INTO `operation_shopping` VALUES ('8', '4', '2018-11-12 11:08:55.376533', '8', '1');
INSERT INTO `operation_shopping` VALUES ('9', '1', '2018-11-12 11:17:27.335778', '6', '1');
INSERT INTO `operation_shopping` VALUES ('10', '1', '2018-11-12 13:07:37.909377', '5', '1');
INSERT INTO `operation_shopping` VALUES ('11', '1', '2018-11-13 13:14:13.822066', '3', '1');

-- ----------------------------
-- Table structure for operation_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `operation_shoppingcart`;
CREATE TABLE `operation_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id` (`product_id`),
  KEY `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_shoppingcart_product_id_39e6948f_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `operation_shoppingcart_user_id_afb642bb_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_shoppingcart
-- ----------------------------
INSERT INTO `operation_shoppingcart` VALUES ('1', '1', '2018-11-02 15:27:57.042176', '7', '1', '1');
INSERT INTO `operation_shoppingcart` VALUES ('5', '10', '2018-11-09 14:02:08.433645', '5', '1', '0');
INSERT INTO `operation_shoppingcart` VALUES ('6', '3', '2018-11-09 15:21:18.795222', '8', '1', '0');
INSERT INTO `operation_shoppingcart` VALUES ('7', '1', '2018-11-09 15:22:19.405650', '6', '1', '1');
INSERT INTO `operation_shoppingcart` VALUES ('8', '12', '2018-11-09 15:28:33.228581', '1', '1', '0');

-- ----------------------------
-- Table structure for operation_spotscomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_spotscomments`;
CREATE TABLE `operation_spotscomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `spots_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo` (`spots_id`),
  KEY `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_spotscomme_spots_id_9e05aeab_fk_scenicspo` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`),
  CONSTRAINT `operation_spotscomments_user_id_1ab65cb3_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_spotscomments
-- ----------------------------
INSERT INTO `operation_spotscomments` VALUES ('1', '北宋文学家苏轼是一位美食家，常爱以诗词记载所品美食。此诗就是苏轼在镇江焦山品鱼时，赞美镇江香醋和鱼的诗句。提及镇江香醋，除了品尝一番，最不容错过的就属中国醋文化博物馆。', '2023-04-19 14:11:23.012778', '4', '1');
INSERT INTO `operation_spotscomments` VALUES ('2', '香草博物馆、帐篷酒店、环游马车、赏荷栈桥、亲子游乐天地、知青文化墙、柿子园、银杏园等散落景区各处，风景处处在。', '2023-04-19 17:07:01.251005', '5', '1');

-- ----------------------------
-- Table structure for operation_usercollect
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercollect`;
CREATE TABLE `operation_usercollect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_usercollect_diary_id_645e38c5_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_usercollect_user_id_bd2b08b4_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercollect
-- ----------------------------
INSERT INTO `operation_usercollect` VALUES ('4', '2018-11-14 16:45:32.729416', '8', '1');
INSERT INTO `operation_usercollect` VALUES ('5', '2018-11-14 16:45:39.214790', '76', '1');
INSERT INTO `operation_usercollect` VALUES ('23', '2018-11-15 10:09:58.238369', '75', '1');

-- ----------------------------
-- Table structure for operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfav`;
CREATE TABLE `operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfav_diary_id_15f80041_fk_diarys_diary_id` (`diary_id`),
  KEY `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `operation_userfav_diary_id_15f80041_fk_diarys_diary_id` FOREIGN KEY (`diary_id`) REFERENCES `diarys_diary` (`id`),
  CONSTRAINT `operation_userfav_user_id_1f1a4c7e_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfav
-- ----------------------------

-- ----------------------------
-- Table structure for pay_goodsordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_goodsordersmaintable`;
CREATE TABLE `pay_goodsordersmaintable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(25) NOT NULL,
  `order_describe` varchar(50) NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `order_state` varchar(3) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `received_time` datetime(6) DEFAULT NULL,
  `finish_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `pay_goodsordersmaintable_user_id_a9d1ec06_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_goodsordersmaintable
-- ----------------------------
INSERT INTO `pay_goodsordersmaintable` VALUES ('1', '1541742473926987561', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1598.00', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 13:47:54.061815', '2018-11-09 13:48:27.810196', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('2', '1541743460533560781', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品等多件商品', '2318.00', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 14:04:20.671379', '2018-11-09 14:04:52.403942', '2018-11-13 16:28:30.732406', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('3', '1541748091988500191', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '89.40', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-09 15:21:32.077866', '2018-11-09 15:22:03.476689', '2018-11-12 14:59:26.761479', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('4', '1541748152642443961', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'wzf', '2018-11-09 15:22:32.765393', null, null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('5', '1541748525478583981', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '89.40', 'ABC', '河南  洛阳  洛龙区 洛龙区123123', '12345678910', '000000', 'yzf', '2018-11-09 15:28:45.602637', '2018-11-12 14:42:06.874718', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('6', '1541985947829919171', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '357.60', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'yzf', '2018-11-12 09:25:47.941859', '2018-11-12 09:26:29.903241', null, null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('7', '1541999260727173981', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '72.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-12 13:07:40.769128', '2018-11-12 13:08:13.367202', '2018-11-13 16:28:24.196619', null, '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('8', '1541999329971653321', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498.00', 'zhiqi123', '河南  郑州  二七区 二七区123', '13345678910', '000000', 'ywc', '2018-11-12 13:08:50.050936', '2018-11-12 13:09:21.050126', '2018-11-12 14:53:59.056294', '2018-11-12 16:22:17.590178', '1');
INSERT INTO `pay_goodsordersmaintable` VALUES ('10', '1542098120652654161', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品等多件商品', '2096.00', '黄鹤', '浙江  温州  龙湾区 江南皮革厂', '18888888888', '123456', 'ysh', '2018-11-13 16:35:20.783212', '2018-11-13 16:35:55.580379', '2018-11-13 16:35:58.684523', null, '1');

-- ----------------------------
-- Table structure for pay_orderitems
-- ----------------------------
DROP TABLE IF EXISTS `pay_orderitems`;
CREATE TABLE `pay_orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(30) NOT NULL,
  `good_num` int(11) NOT NULL,
  `order_num` varchar(25) NOT NULL,
  `good_price` double NOT NULL,
  `good_image` varchar(100) NOT NULL,
  `good_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_orderitems
-- ----------------------------
INSERT INTO `pay_orderitems` VALUES ('1', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1541742473926987561', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('2', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1541743460533560781', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('3', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '10', '1541743460533560781', '72', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', '5');
INSERT INTO `pay_orderitems` VALUES ('6', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '3', '1541748091988500191', '29.8', 'product/mainimg/2018/11/timg.jpeg', '8');
INSERT INTO `pay_orderitems` VALUES ('7', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1541748152642443961', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('8', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '3', '1541748525478583981', '29.8', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '1');
INSERT INTO `pay_orderitems` VALUES ('9', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '12', '1541985947829919171', '29.8', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '1');
INSERT INTO `pay_orderitems` VALUES ('10', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '1', '1541999260727173981', '72', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', '5');
INSERT INTO `pay_orderitems` VALUES ('11', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1541999329971653321', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('12', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '3', '1542097549359671461', '29.8', 'product/mainimg/2018/11/timg.jpeg', '8');
INSERT INTO `pay_orderitems` VALUES ('13', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '2', '1542097549359671461', '498', 'product/mainimg/2018/11/342355.jpeg', '6');
INSERT INTO `pay_orderitems` VALUES ('14', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1', '1542098120652654161', '1598', 'product/mainimg/2018/11/123asd.jpeg', '7');
INSERT INTO `pay_orderitems` VALUES ('15', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '1', '1542098120652654161', '498', 'product/mainimg/2018/11/342355.jpeg', '6');

-- ----------------------------
-- Table structure for pay_scenicordersmaintable
-- ----------------------------
DROP TABLE IF EXISTS `pay_scenicordersmaintable`;
CREATE TABLE `pay_scenicordersmaintable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(30) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `ticket_price` double NOT NULL,
  `scenic_image` varchar(100) NOT NULL,
  `scenic_id` int(11) NOT NULL,
  `order_num` varchar(25) NOT NULL,
  `cdk` varchar(25) NOT NULL,
  `order_describe` varchar(50) NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `order_state` varchar(3) NOT NULL,
  `classification` varchar(2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `received_time` datetime(6) DEFAULT NULL,
  `finish_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `pay_scenicordersmaintable_user_id_1fd20704_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_scenicordersmaintable
-- ----------------------------
INSERT INTO `pay_scenicordersmaintable` VALUES ('2', '江心洲橘江里景区', '1', '19.5', 'spots/thumbnail/2023/04/jiangxinzhou1.jpg', '5', '154261410049883401', '9Por5-hhOAk-jFbqr-CvB78', '江心洲橘江里景区门票', '19.50', '黄鹤', '18888888888', 'ywc', 'mp', '2022-11-29 15:55:00.500821', '2022-11-29 15:55:42.774384', null, '2022-11-29 17:07:01.332485', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('3', '镇江醋文化博物馆', '2', '19.5', 'spots/thumbnail/2023/04/cu2.jpg', '4', '154261510662321741', 'amjtW-6zhVy-j2oir-nWmfA', '镇江醋文化博物馆门票', '39.00', '慕容铁蛋', '13255684466', 'yzf', 'mp', '2022-11-29 16:11:46.626726', '2022-11-29 16:12:31.405169', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('4', '南山风景名胜区', '1', '20', 'spots/thumbnail/2023/04/nanshan1.jpg', '3', '154261531998408111', 'rcr4X-iaZjV-PJwZ2-8AMFF', '南山风景名胜区门票', '20.00', '李白', '13345678910', 'yzf', 'mp', '2022-11-29 16:15:19.987236', '2022-11-29 16:15:49.953833', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('5', '茅山景区“惠民畅游”！', '1', '39', 'active/2023/04/maoshan.jpg', '2', '1542616228676335021', 'JYp52-xRRdQ-lRtfk-x8dNJ', '茅山景区“惠民畅游”！', '39.00', '黄鹤', '18888888888', 'ywc', 'hd', '2022-11-29 16:30:28.679494', '2022-11-29 16:31:04.595318', null, '2022-11-29 17:07:42.604363', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('6', '金山、焦山、北固山、西津渡精品二日游', '2', '298', 'active/2023/04/jinshanxijindu.jpg', '1', '1542616675465996671', '', '金山、焦山、北固山、西津渡精品二日游', '596.00', '黄鹤', '18888888888', 'wzf', 'hd', '2022-11-19 16:37:55.468917', null, null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('7', '茅山景区“惠民畅游”！', '1', '39', 'active/2023/04/maoshan.jpg', '2', '1542678331860761191', 'cuU2X-rPgCP-BiAA3-XVG0I', '茅山景区“惠民畅游”！', '39.00', '黄鹤', '18888888888', 'yzf', 'hd', '2022-11-20 09:45:32.086806', '2022-11-20 09:46:40.816136', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('8', '茅山景区“惠民畅游”！', '1', '39', 'active/2023/04/maoshan.jpg', '2', '1542678357330589961', '8G0xr-XUdDa-m0BIt-WbmMi', '茅山景区“惠民畅游”！', '39.00', '慕容铁主', '18835641234', 'yzf', 'hd', '2022-11-20 09:45:57.367523', '2022-11-20 10:10:07.016571', null, null, '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('9', '句容茅山景区+南山+西津渡古街等10景点24小时畅游卡', '2', '2995', 'active/2023/04/shidajingdian.jpg', '3', '1542678468301508341', 'IjYJf-2Hpqx-mGAdm-BIpHY', '句容茅山景区+南山+西津渡古街等10景点24小时畅游卡', '5990.00', '黄鹤', '18888888888', 'ywc', 'hd', '2022-11-20 09:47:48.349429', '2022-11-20 09:48:20.097284', null, '2022-11-20 10:10:49.130609', '1');
INSERT INTO `pay_scenicordersmaintable` VALUES ('10', '茅山景区“惠民畅游”！', '1', '39', 'active/2023/04/maoshan.jpg', '2', '1542678937707499421', 'zSRRq-DTOxV-O9tX2-UxJHv', '茅山景区“惠民畅游”！', '39.00', '鲁迅', '12345678910', 'yzf', 'hd', '2022-11-20 09:55:37.712928', '2022-11-20 09:56:26.595082', null, null, '1');


-- ----------------------------
-- Table structure for scenicspots_active
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_active`;
CREATE TABLE `scenicspots_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `introduce` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `go_time` datetime(6) NOT NULL,
  `address` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `now_num` int(11) NOT NULL,
  `all_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_active
-- ----------------------------
INSERT INTO `scenicspots_active` VALUES ('1', '金山、焦山、北固山、西津渡精品二日游', '<h3 class=\"hd\" data-reactid=\"302\" style=\"margin: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 24px; line-height: 1; font-family: &quot;microsoft yahei&quot;; text-align: center; white-space: normal;\">北固山</h3><ul class=\"mod_info_box list-paddingleft-2\" data-reactid=\"304\" style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 115px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 24px; min-height: 48px;\"><li><p>第1天  餐   无</p></li><li><p><br/></p></li><ul class=\"txt_list list-paddingleft-2\" data-reactid=\"307\" style=\"list-style-type: square;\"><li><p>集合地出发，抵达后游览千年古刹【金山寺】这里是水陆法会的发源地，是白娘子许仙爱情的传承地，是苏东坡《水调歌头》的发表地，是梁红玉击鼓战金山的根据地。</p></li><li><p>沿绮丽的小山，登慈寿塔，揽御碑亭，观夕照御笔，睹宝带留玉。</p></li><li><p>后前往【夜游西津渡】，【西津渡】它位于镇江市区蒜山脚下，全长1000余米，三国时诸葛亮与孙权在此定下“火烧赤壁”的计谋。</p></li><li><p>古代西津渡是我国东南地区漕粮、丝绸等物资北运京师的重要港口。唐宋著名诗人李白、孟浩然、苏轼、陆游等都曾在此候船、登岸，并留下为世传诵的篇章。</p></li><li><p>元代马可波罗当年从此登岸游历江南。</p></li><li><p>现如今，被称为“江南第一渡”、“中国古渡博物馆”的西津渡古街，已荣获联合国科教文组织亚太地区文化遗产保护优秀奖。  </p></li><li><p>后入住酒店</p></li></ul></ul><ul class=\"mod_info_box list-paddingleft-2\" data-reactid=\"315\" style=\"margin: 0px 0px 20px; padding: 0px 0px 0px 115px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 24px; min-height: 48px;\"><li><p>第2天　 早餐</p></li><li><p><br/></p></li><ul class=\"txt_list list-paddingleft-2\" data-reactid=\"318\" style=\"list-style-type: square;\"><li><p>集合后前往游览江中浮玉5A景区—【焦山风景区】（焦山门票+游船挂牌65，旅行社优惠折扣价40必消）位于镇江市区东北角长江之中，相传因东汉著名学者焦光在此隐居而得名。此山孤悬江中，满山青翠，宛如碧玉浮江，故又有人称之为浮玉山。耸峙于焦山之北的松寥山和夷山夹江而立，自古有“海门”之誉。焦山碑林是全国重点文物保护单位，江南第一碑林，其中有被誉为“大字之祖”的瘗鹤铭碑。“焦山十六景”现存主要景点有定慧寺、宝墨轩、壮观亭、别峰庵、三诏洞、吸江楼、万佛塔、古炮台、摩崖石刻等。后游览【北固山】北固山是长江边的“京口三山”之一，位于另两座山金山和焦山中间，海拔55.2米。山上的景点多与《三国演义》中的故事有关，以甘露寺最为出名，是故事里刘备招亲结识孙尚香的地方。辛弃疾游北固山曾留下“天下英雄谁敌手？曹刘，生子当如孙仲谋”的名句。</p></li></ul></ul><p><br/></p>', 'active/2023/04/jinshanxijindu.jpg', 'natural', '0211-00000000', '2023-01-20 08:00:00.000000', '镇江火车站', '298', '0', '30', '2023-11-19 10:43:00.000000');
INSERT INTO `scenicspots_active` VALUES ('2', '茅山景区“惠民畅游”！', '<h3 class=\"mult_data_tit\" style=\"margin: 0px 0px 20px; padding: 0px; font-weight: 100; font-size: 22px;\"><p>7月1日起，镇江市民凭身份证免门票！</p></h3><h5 style=\"margin: 0px; padding: 10px 0px 0px; font-weight: 100; font-size: 18px;\"><span class=\"i_sce\" style=\"background-repeat: no-repeat; display: inline-block; vertical-align: middle; position: relative; top: -1px; height: 20px; width: 20px; margin: 5px 0px 0px -87px; background-image: url(&quot;//pic.c-ctrip.com/VacationOnlinePic/vacation_v2/searchresult/ico_travel03.png&quot;); background-position: 0px -40px; float: left;\"></span>08:00</h5><h4 class=\"sce_tit\" style=\"margin: 0px; padding: 0px; font-weight: 100; font-size: 18px;\">句容茅山景区决定<a data-json=\"{&quot;GSScenicSpotID&quot;:77498,&quot;PreName&quot;:&quot;&quot;,&quot;Name&quot;:&quot;面向全体镇江市民实行“惠民畅游”&quot;,&quot;SuffixName&quot;:&quot;&quot;}\" class=\"J_mapPointHook\" style=\"color: rgb(25, 160, 240); outline: none;\">面向全体镇江市民实行“惠民畅游”</a><span class=\"mult_score\" style=\"font-size: 12px; color: rgb(25, 160, 240); margin-left: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 18px;\">04.6</span>/5分</span></h4><p>句容茅山是镇江第二个国家5A级景区，茅山是一座包容的山，暑期免费就是让更多的镇江市民共享绿水青山，畅游福地仙境。<br/></p><p>作为镇江唯一入选首届江苏十大避暑胜地的景区，茅山景区的清凉避暑、红色文化等主题游备受游客喜爱。今年暑期，茅山景区首次对全体镇江市民免门票。</p><p>也就是说，包括扬中、丹阳、新区等地在内的所有镇江人都可以凭身份证免门票入景区游览。</p><p>1、茅山景区严格落实“限量、预约、错峰”要求，实行实名制分时预约参观制度。请您提前在“句容茅山景区”微信公众号首页或扫描下方二维码预约，预约成功后，请按照预约日期和时段入园。如显示当前预约人数已满请预约其他时段，错峰入园。</p><p>2、景区对游览人员密度进行实时控制，严格将日最高承载量、瞬时最大承载量控制在核定值范围内（日接待量不超过80000人次，瞬时接待量不超过50000人次）。当遇到园内人员密度较大时，将根据具体情况采取相关限流措施。</p><p>。。。。。。。</p><p><br/> </p><p style=\"position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 365px;\"><span style=\"white-space: normal;\">。。。。。。。</span></p>', 'active/2023/04/maoshan.jpg', 'natural', '0211-00000000', '2022-12-20 09:00:00.000000', '句容车站', '39', '04', '25', '2023-11-19 11:02:00.000000');
INSERT INTO `scenicspots_active` VALUES ('3', '句容茅山景区+南山+西津渡古街等10景点24小时畅游卡', '<ul data-reactid=\"88\" style=\"padding: 0px; color: rgb(34, 34, 34); font-family: &quot;microsoft yahei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>逛人气景区：句容茅山景区/金山、焦山、北固山、南山、西津渡历史文化街区（云台阁、观音洞、救生会）、中国醋文化博物馆、江苏茶博园、宝华山国家森林公园、米芾书法公园（每位持卡者可在以上所有景点各刷卡进入1次</strong></span></p></li><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>带一份精致伴手礼：镇江醋博物馆精致小礼品（中国醋文化博物馆售票处)</strong></span></p></li><li><p><span style=\"font-size: 20px; color: rgb(255, 0, 0);\"><strong>用一次酒店折扣：一泉金山湖畔（门市价8折）、一泉国营公社（门市价8折）、句容曙光国际大酒店（门市价7.8折、餐饮8.8折）、丹阳金陵饭店（门市价6折)</strong></span></p></li></ul><p><br/></p>', 'active/2023/04/shidajingdian.jpg', 'leisure', '0211-00000000', '2023-03-20 08:00:00.000000', '镇江火车站', '98', '2', '10', '2023-11-19 11:09:00.000000');

-- ----------------------------
-- Table structure for scenicspots_gallery
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_gallery`;
CREATE TABLE `scenicspots_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `spots_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id` (`spots_id`),
  CONSTRAINT `scenicspots_gallery_spots_id_43d90e33_fk_scenicspots_spots_id` FOREIGN KEY (`spots_id`) REFERENCES `scenicspots_spots` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_gallery
-- ----------------------------
INSERT INTO `scenicspots_gallery` VALUES ('1', '金山寺5', 'spots/banner/2023/04/jinshansi5.jpg', '2023-04-16 14:31:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('2', '金山寺4', 'spots/banner/2023/04/jinshansi4.jpg', '2023-04-16 14:32:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('3', '金山寺3', 'spots/banner/2023/04/jinshansi3.jpg', '2023-04-16 14:33:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('4', '金山寺2', 'spots/banner/2023/04/jinshansi2.jpg', '2023-04-16 14:34:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('5', '金山寺1', 'spots/banner/2023/04/jinshansi1.jpg', '2023-04-16 14:34:00.000000', '1');
INSERT INTO `scenicspots_gallery` VALUES ('6', '西津渡3', 'spots/banner/2023/04/xijindu3.jpg', '2023-04-16 14:35:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('7', '西津渡2', 'spots/banner/2023/04/xijindu2.jpg', '2023-04-16 14:37:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('8', '西津渡1', 'spots/banner/2023/04/xijindu1.jpg', '2023-04-16 14:37:00.000000', '2');
INSERT INTO `scenicspots_gallery` VALUES ('9', '江心洲3', 'spots/banner/2023/04/jiangxinzhou3.jpg', '2023-04-16 14:38:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('10', '江心洲2', 'spots/banner/2023/04/jiangxinzhou2.jpg', '2023-04-16 14:39:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('11', '江心洲1', 'spots/banner/2023/04/jiangxinzhou1.jpg', '2023-04-16 14:39:00.000000', '5');
INSERT INTO `scenicspots_gallery` VALUES ('12', '镇江醋文化3', 'spots/banner/2023/04/cu3.jpg', '2023-04-16 14:40:00.000000', '04');
INSERT INTO `scenicspots_gallery` VALUES ('13', '镇江醋文化2', 'spots/banner/2023/04/cu2.jpg', '2023-04-16 14:41:00.000000', '04');
INSERT INTO `scenicspots_gallery` VALUES ('14', '镇江醋文化1', 'spots/banner/2023/04/cu1.jpg', '2023-04-16 14:41:00.000000', '04');
INSERT INTO `scenicspots_gallery` VALUES ('15', '南山5', 'spots/banner/2023/04/nanshan5.jpg', '2023-04-16 14:43:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('16', '南山4', 'spots/banner/2023/04/nanshan4.jpg', '2023-04-16 14:43:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('17', '南山3', 'spots/banner/2023/04/nanshan3.jpg', '2023-04-16 14:44:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('18', '南山2', 'spots/banner/2023/04/nanshan2.jpg', '2023-04-16 14:44:00.000000', '3');
INSERT INTO `scenicspots_gallery` VALUES ('19', '南山1', 'spots/banner/2023/04/nanshan1.jpg', '2023-04-16 14:44:00.000000', '3');

-- ----------------------------
-- Table structure for scenicspots_spots
-- ----------------------------
DROP TABLE IF EXISTS `scenicspots_spots`;
CREATE TABLE `scenicspots_spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `businessHours` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `add_times` datetime(6) NOT NULL,
  `x` decimal(9,6) NOT NULL,
  `y` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenicspots_spots
-- ----------------------------
INSERT INTO `scenicspots_spots` VALUES ('1', '金山寺', '<p><span style=\"background-color: rgb(255, 255, 255); font-family: 宋体; font-size: 14px;\">　　说起镇江，很多人脑海里第一个浮现出的就是金山的秀丽风景。“山不在高，有仙则名”，金山这座小山的“仙”气就来源于中国四大爱情传说之一的《白蛇传》，其中水漫金山的故事就发生在此处。</span><br/> </p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　金山寺位于江苏镇江，始建于东晋，康熙皇帝游览金山，见金山雄伟秀丽，江天一色，乘兴亲笔写下了“江天一览”四字，并赐名江天禅寺。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　金山寺寺门朝西，依山而建，殿宇栉比，亭台相连。遍山布满建筑，以致难窥金山原貌，故有“金山寺裹山”之说。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　白素贞和她的爱情，为端午披上一层多情柔曼的面纱，更为金山增添了一层神秘的色彩。很多游人特地到金山来寻访《白蛇传》的踪迹。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　更不容忽视的是，金山寺是中国佛教诵经设斋、礼佛拜忏、追荐亡灵的水陆法会发源地。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在当地人心目中，金山不只是庄严肃穆的庙宇，同时也是人们休闲的绿色公园。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　围绕着被橙黄色古建筑裹覆的金山，碧波荡漾的金山湖徜徉其间。泛舟湖上，吹着清爽的湖风、远望阳光下宝寺裹山的金山、聆听耳边不时传来的声声梵音……</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　金山寺前开放的莲花，朵朵沁出馨香，宁静到了极致，微风拂过，仿佛就在莲香里坐禅。众生喧嚣，只有花开是静的。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　寺内主要建筑有天王殿、大雄宝殿、观音阁、藏经楼、慈寿塔、法海洞、妙高台、楞伽台、江天一览亭等。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　登上慈寿塔，凭栏驰目——雄秀的焦山、险峻的北固山，竞奔眼底；大江东去，奔流不息，令人心旷神怡。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　游走在这里，仿佛一砖一石、一草一木都拥有深厚的文化积淀，都在向我们叙述的无尽的故事。</p><p><br/> </p>', 'spots/thumbnail/2023/04/jinshansi1.jpg', 'spots/mainfigure/2023/04/jinshansi2.jpg', 'natural', '0379-65980972', '全年', '江苏省镇江市长江路188号', '35', '2018-10-16 09:50:00.000000', '119.421568', '32.221303');
INSERT INTO `scenicspots_spots` VALUES ('2', '西津渡', '<p>西津渡<a target="_blank" href="https://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6AAAA%E7%BA%A7%E6%97%85%E6%B8%B8%E6%99%AF%E5%8C%BA/7574615?fromModule=lemma_inlink" data-lemmaid="7574615" data-log="summary">国家AAAA级旅游景区</a>，位于<a target="_blank" href="https://baike.baidu.com/item/%E9%95%87%E6%B1%9F/406?fromModule=lemma_inlink" data-lemmaid="406" data-log="summary">镇江</a>城西的<a target="_blank" href="https://baike.baidu.com/item/%E4%BA%91%E5%8F%B0%E5%B1%B1/18774212?fromModule=lemma_inlink" data-lemmaid="18774212" data-log="summary">云台山</a>麓，是依附于破山栈道而建的一处历史遗迹。西津渡古街是镇江<a target="_blank" href="https://baike.baidu.com/item/%E6%96%87%E7%89%A9%E5%8F%A4%E8%BF%B9/1839619?fromModule=lemma_inlink" data-lemmaid="1839619" data-log="summary">文物古迹</a>保存最多、最集中、最完好的地区，是镇江<a target="_blank" href="https://baike.baidu.com/item/%E5%8E%86%E5%8F%B2%E6%96%87%E5%8C%96%E5%90%8D%E5%9F%8E?fromModule=lemma_inlink" data-log="summary">历史文化名城</a>的“文脉”所在。街区共有<a target="_blank" href="https://baike.baidu.com/item/%E6%96%87%E7%89%A9%E4%BF%9D%E6%8A%A4%E5%8D%95%E4%BD%8D/8798319?fromModule=lemma_inlink" data-lemmaid="8798319" data-log="summary">文物保护单位</a>38处，其中国家级3处，省级6处</p>', 'spots/thumbnail/2023/04/xijindu2.jpg', 'spots/mainfigure/2023/04/xijindu.jpg', 'leisure', '0379-66586666', '全年', '镇江市润州区西津渡', '75', '2018-10-16 09:57:00.000000', '119.438123', '32.219906');
INSERT INTO `scenicspots_spots` VALUES ('3', '南山风景名胜区', '<p>从市区南行数里，有一胜区，这里群山环抱，青峦错落，绿树葱茏，有珍禽奇鸟，有亭台楼阁，有竹林流泉，风景清幽，美不胜收。这便是被列为江苏省级自然风景保护单位的<a target="_blank" href="https://baike.baidu.com/item/%E9%95%87%E6%B1%9F%E5%8D%97%E9%83%8A%E9%A3%8E%E6%99%AF%E5%8C%BA/10565739?fromModule=lemma_inlink" data-lemmaid="10565739" data-log="summary">镇江南郊风景区</a>。南山风景名胜区在南北朝至明代为鼎盛时期。六朝后，历代文士名流曾在此居住、游览，留下了珍贵的古迹和名篇，其中有梁代<a target="_blank" href="https://baike.baidu.com/item/%E6%98%AD%E6%98%8E%E5%A4%AA%E5%AD%90/5973754?fromModule=lemma_inlink" data-lemmaid="5973754" data-log="text">昭明太子</a>博邀《<a target="_blank" href="https://baike.baidu.com/item/%E6%96%87%E5%BF%83%E9%9B%95%E9%BE%99/743008?fromModule=lemma_inlink" data-lemmaid="743008" data-log="text">文心雕龙</a>》著作<a target="_blank" href="https://baike.baidu.com/item/%E5%88%98%E5%8B%B0/197270?fromModule=lemma_inlink" data-lemmaid="197270" data-log="text">刘勰</a>等天下贤才，在招隐增华阁编纂了<a target="_blank" href="https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E6%96%87%E5%AD%A6%E5%8F%B2/1343102?fromModule=lemma_inlink" data-lemmaid="1343102" data-log="text">中国文学史</a>上第一部文学选集《<a target="_blank" href="https://baike.baidu.com/item/%E6%98%AD%E6%98%8E%E6%96%87%E9%80%89/7766092?fromModule=lemma_inlink" data-lemmaid="7766092" data-log="text">昭明文选</a>》。<a target="_blank" href="https://baike.baidu.com/item/%E5%8C%97%E5%AE%8B/396063?fromModule=lemma_inlink" data-lemmaid="396063" data-log="text">北宋</a>大书画家<a target="_blank" href="https://baike.baidu.com/item/%E7%B1%B3%E8%8A%BE/1255000?fromModule=lemma_inlink" data-lemmaid="1255000" data-log="text">米芾</a>、<a target="_blank" href="https://baike.baidu.com/item/%E7%B1%B3%E5%8F%8B%E4%BB%81/2420452?fromModule=lemma_inlink" data-lemmaid="2420452" data-log="text">米友仁</a>父子居此四十年，创“<a target="_blank" href="https://baike.baidu.com/item/%E7%B1%B3%E6%B0%8F%E4%BA%91%E5%B1%B1/6669814?fromModule=lemma_inlink" data-lemmaid="6669814" data-log="text">米氏云山</a>”。<a target="_blank" href="https://baike.baidu.com/item/%E4%B8%9C%E6%99%8B/456028?fromModule=lemma_inlink" data-lemmaid="456028" data-log="text">东晋</a><a target="_blank" href="https://baike.baidu.com/item/%E5%8D%97%E6%9C%9D/7131305?fromModule=lemma_inlink" data-lemmaid="7131305" data-log="text">南朝</a><a target="_blank" href="https://baike.baidu.com/item/%E5%88%98%E5%AE%8B/10862114?fromModule=lemma_inlink" data-lemmaid="10862114" data-log="text">刘宋</a>。宋代大诗人<a target="_blank" href="https://baike.baidu.com/item/%E8%8B%8F%E4%B8%9C%E5%9D%A1/53970?fromModule=lemma_inlink" data-lemmaid="53970" data-log="text">苏东坡</a>在鹤林寺留下“苏公竹院”，哲学家、文学家<a target="_blank" href="https://baike.baidu.com/item/%E5%91%A8%E6%95%A6%E9%A2%90/327717?fromModule=lemma_inlink" data-lemmaid="327717" data-log="text">周敦颐</a>的“茂叔莲池”等。在竹林景区东侧有纪念辛亥革命先烈<a target="_blank" href="https://baike.baidu.com/item/%E8%B5%B5%E4%BC%AF%E5%85%88/6638971?fromModule=lemma_inlink" data-lemmaid="6638971" data-log="text">赵伯先</a>将军的陵墓，还有曾出土史前<a target="_blank" href="https://baike.baidu.com/item/%E9%AA%A8%E5%8C%96%E7%9F%B3/4560389?fromModule=lemma_inlink" data-lemmaid="4560389" data-log="text">骨化石</a>的莲花洞。</p>','spots/thumbnail/2023/04/nanshan1.jpg','spots/mainfigure/2023/04/nanshan2.jpg', 'natural', '0379-00000000', '全年', '镇江市润州区竹林路98号', '20', '2023-10-16 09:59:00.000000', '119.447564', '32.176531');
INSERT INTO `scenicspots_spots` VALUES ('4', '镇江醋文化博物馆', '<p>中国镇江醋文化博物馆是国内首个专业性主题醋文化博物馆，也是镇江市第一个集<a target="_blank" href="https://baike.baidu.com/item/%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7%E4%BF%9D%E6%8A%A4/9112417?fromModule=lemma_inlink" data-lemmaid="9112417" data-log="summary">文化遗产保护</a>、科普教育、<a target="_blank" href="https://baike.baidu.com/item/%E5%B7%A5%E4%B8%9A%E6%97%85%E6%B8%B8/10750697?fromModule=lemma_inlink" data-lemmaid="10750697" data-log="summary">工业旅游</a><a target="_blank" href="https://baike.baidu.com/item/%E5%B7%A5%E4%B8%9A%E6%97%85%E6%B8%B8/10750697?fromModule=lemma_inlink" data-lemmaid="10750697" data-log="summary">工业旅游</a>等功能于一体的主题展馆。博物馆分醋史馆、老作坊、陈列馆三大主体展馆，以及一个体验馆。全馆采用声、光、电等现代表现形式，全面展示醋文化、解读醋文化、品味醋文化。中国<a target="_blank" href="https://baike.baidu.com/item/%E9%95%87%E6%B1%9F?fromModule=lemma_inlink" data-log="summary">镇江</a>醋文化博物馆占地30多亩、建筑面积4000平方米。是由恒顺集团投资3000多万元建设，是<a target="_blank" href="https://baike.baidu.com/item/%E6%B1%9F%E8%8B%8F%E7%9C%81/320938?fromModule=lemma_inlink" data-lemmaid="320938" data-log="summary">江苏省</a>“十一五”百项重点文化建设项目之一，被列入“长三角世博主题体验之旅示范点”。</p>', 'spots/thumbnail/2023/04/cu2.jpg','spots/mainfigure/2023/04/cu1.jpg', 'leisure', '0379-00000000', '全年', '江苏省镇江市丹徒区新城广园路60号', '19.5', '2022-10-16 09:59:00.000000', '119.4861674', '32.108387');
INSERT INTO `scenicspots_spots` VALUES ('5', '江心洲橘江里景区', '<p>江苏镇江江心洲位于<a target="_blank" href="https://baike.baidu.com/item/%E9%95%87%E6%B1%9F/406?fromModule=lemma_inlink" data-lemmaid="406" data-log="summary">镇江</a>市东郊，与<a target="_blank" href="https://baike.baidu.com/item/%E4%BA%AC%E5%8F%A3%E5%8C%BA/2480164?fromModule=lemma_inlink" data-lemmaid="2480164" data-log="summary">京口区</a><a target="_blank" href="https://baike.baidu.com/item/%E8%B0%8F%E5%A3%81%E9%95%87/4041311?fromModule=lemma_inlink" data-lemmaid="4041311" data-log="summary">谏壁镇</a>隔江相望，总面积只有13.46平方公里，但却拥有江滩芦荡近5000亩。江心洲除了美丽的自然风光和田园景色，还拥有滩涂<a target="_blank" href="https://baike.baidu.com/item/%E6%B9%BF%E5%9C%B0%E8%B5%84%E6%BA%90/5039366?fromModule=lemma_inlink" data-lemmaid="5039366" data-log="summary">湿地资源</a>和<a target="_blank" href="https://baike.baidu.com/item/%E4%BC%A0%E7%BB%9F%E5%86%9C%E4%B8%9A/2029517?fromModule=lemma_inlink" data-lemmaid="2029517" data-log="summary">传统农业</a>优势。由于位于<a target="_blank" href="https://baike.baidu.com/item/%E9%95%BF%E6%B1%9F/388?fromModule=lemma_inlink" data-lemmaid="388" data-log="summary">长江</a>北侧边缘，江心洲也面临着地质灾害的威胁。2012年10月13日中午开始，江心洲堤坍失310米 ，截至15日凌晨，已导致28处民房掉进长江。</p>','spots/thumbnail/2023/04/jiangxinzhou1.jpg','spots/mainfigure/2023/04/jiangxinzhou2.jpg', 'natural', '0379-00000000', '全年', '江苏省镇江市丹徒区五套路', '19.5', '2022-10-16 09:59:00.000000', '119.587019', '32.213666');

-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `num` int(11) NOT NULL,
  `freight` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  `pro_type` varchar(3) NOT NULL,
  `buyers` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `mainimg` varchar(100) NOT NULL,
  `remind` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', '29.8', '473', '0', '福建漳州', 'sg', '30', '0', '<p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">新品上市</span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><br/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><img src=\"/media/shop/ueditor/image_20181101141949_382.png\" title=\"\" alt=\"image.png\"/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\"><br/> </span></em></span></p><p><span style=\"color: rgb(255, 0, 0);\"><em><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍<em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em><em style=\"color: rgb(255, 0, 0); white-space: normal;\"><span style=\"font-size: 24px; font-family: 隶书, SimLi;\">产品介绍</span></em></span></em></span></p>', '2018-08-01 10:11:00.000000', 'product/mainimg/2018/11/u8997057393192590278fm26gp0.jpg', '此商品为鲜活易腐类，不支持7天无理由退货');
INSERT INTO `shop_product` VALUES ('2', '无籽青柠檬 皮薄汁多新鲜水果 500g', '10', '553', '10', '福建厦门', 'sg', '0', '0', '<p><img src=\"/media/shop/ueditor/image_20181101142048_101.png\" title=\"\" alt=\"image.png\"/> </p>', '2018-10-06 14:20:00.000000', 'product/mainimg/2018/11/546475.jpeg', '此商品为鲜活易腐类，不支持7天无理由退货');
INSERT INTO `shop_product` VALUES ('3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', '10', '561', '0', '辽宁鞍山', 'sg', '50', '0', '<p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\"><span style=\"color: rgb(227, 108, 9); font-size: 36px; text-align: center;\">脆甜多汁大苹果</span></span></span></span></span></p>', '2018-11-01 14:36:00.000000', 'product/mainimg/2018/11/34553434.jpeg', null);
INSERT INTO `shop_product` VALUES ('04', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', '59', '129', '5', '东北', 'ncp', '0', '0', '<p>大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介大米简介</p>', '2018-11-01 14:42:00.000000', 'product/mainimg/2018/11/2142345.jpeg', null);
INSERT INTO `shop_product` VALUES ('5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', '72', '1402', '0', '江西', 'ncp', '15', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品名称：黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品编号：32519106186</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">商品毛重：2.5kg</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">货号：557403272799</span></p></li><li><p style=\"text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">分类：黄豆</span></p></li></ul><p><br/> </p>', '2018-11-01 14:48:00.000000', 'product/mainimg/2018/11/u8602493881365701743fm200gp0.jpg', null);
INSERT INTO `shop_product` VALUES ('6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', '498', '25', '0', '广东中山', 'gyp', '3', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺品办公室书房铜摆设开业招财乔迁礼物礼品 铜梅花鹿</p></li><li><p>商品编号：00000000</p></li><li><p>商品毛重：1.5kg</p></li><li><p>材质：铜</p></li><li><p>风格：新中式</p></li><li><p>类型：桌面摆件</p></li><li><p>分类：装饰摆件</p></li><li><p>适用场景：客厅，玄关，书房，餐厅</p></li></ul><p><br/> </p>', '2018-11-01 14:51:00.000000', 'product/mainimg/2018/11/342355.jpeg', '支持七天无理由退货');
INSERT INTO `shop_product` VALUES ('7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', '1598', '45', '0', '浙江义乌', 'gyp', '21', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：墨斗鱼木制帆船33cm 深蓝色2050</p></li><li><p>商品编号：7476412</p></li><li><p>商品毛重：0.66kg</p></li><li><p>商品产地：浙江义乌</p></li><li><p>材质：木质</p></li><li><p>风格：现代简约</p></li><li><p>类型：桌面摆件</p></li><li><p>外观造型：建筑</p></li><li><p>分类：装饰摆件</p></li><li><p>用途：事业</p></li><li><p>适用场景：客厅，玄关，书房，餐厅</p></li></ul><p><br/> </p>', '2018-11-01 14:54:00.000000', 'product/mainimg/2018/11/123asd.jpeg', '支持七天无理由退货');
INSERT INTO `shop_product` VALUES ('8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', '29.8', '839', '0', '北京', 'fsp', '1', '0', '<ul class=\"parameter2 p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>商品名称：德芙牛奶巧克力</p></li><li><p>商品编号：1178879</p></li><li><p>商品毛重：310.00g</p></li><li><p>商品产地：北京/嘉兴</p></li><li><p>国产/进口：国产</p></li><li><p>分类：巧克力</p></li><li><p>形状：排块</p></li></ul><p><br/> </p>', '2018-11-01 14:55:00.000000', 'product/mainimg/2018/11/timg.jpeg', '');

-- ----------------------------
-- Table structure for shop_propic
-- ----------------------------
DROP TABLE IF EXISTS `shop_propic`;
CREATE TABLE `shop_propic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_propic_product_id_32f51b91_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_propic_product_id_32f51b91_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_propic
-- ----------------------------
INSERT INTO `shop_propic` VALUES ('1', 'product/2018/11/sdadasdsf.jpeg', '1', '2018-11-01 14:33:00.000000');
INSERT INTO `shop_propic` VALUES ('2', 'product/2018/11/u13169828951304490032fm26gp0.jpg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('3', 'product/2018/11/u18929235521492736427fm200gp0.jpg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('5', 'product/2018/11/youzi1.jpeg', '1', '2018-11-01 14:34:00.000000');
INSERT INTO `shop_propic` VALUES ('6', 'product/2018/11/u5982165093666614667fm26gp0.jpg', '2', '2018-11-01 14:35:00.000000');
INSERT INTO `shop_propic` VALUES ('7', 'product/2018/11/u7601192363179539404fm26gp0.jpg', '2', '2018-11-01 14:36:00.000000');
INSERT INTO `shop_propic` VALUES ('8', 'product/2018/11/u10823352311037865581fm200gp0.jpg', '2', '2018-11-01 14:36:00.000000');
INSERT INTO `shop_propic` VALUES ('9', 'product/2018/11/u13006401731507832118fm200gp0.jpg', '3', '2018-11-01 14:39:00.000000');
INSERT INTO `shop_propic` VALUES ('10', 'product/2018/11/u21326009963129401320fm200gp0.jpg', '3', '2018-11-01 14:40:00.000000');
INSERT INTO `shop_propic` VALUES ('11', 'product/2018/11/u2619906361712776241fm200gp0.jpg', '3', '2018-11-01 14:40:00.000000');
INSERT INTO `shop_propic` VALUES ('12', 'product/2018/11/5b6176c3N4ace3d7a.jpg', '04', '2018-11-01 14:46:00.000000');
INSERT INTO `shop_propic` VALUES ('13', 'product/2018/11/5b6176caNdd0e0859.jpg', '04', '2018-11-01 14:47:00.000000');
INSERT INTO `shop_propic` VALUES ('14', 'product/2018/11/u21469647391264340391fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('15', 'product/2018/11/u22923944891760817181fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('16', 'product/2018/11/u257853416681158271fm200gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('17', 'product/2018/11/u42067941022732747374fm26gp0.jpg', '5', '2018-11-01 14:50:00.000000');
INSERT INTO `shop_propic` VALUES ('18', 'product/2018/11/5b5edba5N60720245.jpg', '6', '2018-11-01 14:53:00.000000');
INSERT INTO `shop_propic` VALUES ('19', 'product/2018/11/5b5edba6N904080ff.jpg', '6', '2018-11-01 14:53:00.000000');
INSERT INTO `shop_propic` VALUES ('20', 'product/2018/11/5b068a12N6bb7b1e4.jpg', '7', '2018-11-01 14:55:00.000000');
INSERT INTO `shop_propic` VALUES ('21', 'product/2018/11/u12968643141600296057fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');
INSERT INTO `shop_propic` VALUES ('22', 'product/2018/11/u23076616973972066607fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');
INSERT INTO `shop_propic` VALUES ('23', 'product/2018/11/u36642129033322461283fm26gp0.jpg', '8', '2018-11-01 14:59:00.000000');

-- ----------------------------
-- Table structure for users_areainfo
-- ----------------------------
DROP TABLE IF EXISTS `users_areainfo`;
CREATE TABLE `users_areainfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `Parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id` (`Parent_id`),
  CONSTRAINT `users_areainfo_Parent_id_1438e84c_fk_users_areainfo_id` FOREIGN KEY (`Parent_id`) REFERENCES `users_areainfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=990101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_areainfo
-- ----------------------------
INSERT INTO `users_areainfo` VALUES ('110000', '北京', '0');
INSERT INTO `users_areainfo` VALUES ('110100', '北京市', '110000');
INSERT INTO `users_areainfo` VALUES ('110101', '东城', '110100');
INSERT INTO `users_areainfo` VALUES ('110102', '西城', '110100');
INSERT INTO `users_areainfo` VALUES ('110103', '崇文', '110100');
INSERT INTO `users_areainfo` VALUES ('110104', '宣武', '110100');
INSERT INTO `users_areainfo` VALUES ('110105', '朝阳', '110100');
INSERT INTO `users_areainfo` VALUES ('110106', '丰台', '110100');
INSERT INTO `users_areainfo` VALUES ('110107', '石景山', '110100');
INSERT INTO `users_areainfo` VALUES ('110108', '海淀', '110100');
INSERT INTO `users_areainfo` VALUES ('110109', '门头沟', '110100');
INSERT INTO `users_areainfo` VALUES ('110111', '房山', '110100');
INSERT INTO `users_areainfo` VALUES ('110112', '通州', '110100');
INSERT INTO `users_areainfo` VALUES ('110113', '顺义', '110100');
INSERT INTO `users_areainfo` VALUES ('110114', '昌平', '110100');
INSERT INTO `users_areainfo` VALUES ('110115', '大兴', '110100');
INSERT INTO `users_areainfo` VALUES ('110116', '怀柔', '110100');
INSERT INTO `users_areainfo` VALUES ('110117', '平谷', '110100');
INSERT INTO `users_areainfo` VALUES ('110228', '密云', '110100');
INSERT INTO `users_areainfo` VALUES ('110229', '延庆', '110100');
INSERT INTO `users_areainfo` VALUES ('110230', '其它', '110100');
INSERT INTO `users_areainfo` VALUES ('120000', '天津', '0');
INSERT INTO `users_areainfo` VALUES ('120100', '天津市', '120000');
INSERT INTO `users_areainfo` VALUES ('120101', '和平', '120100');
INSERT INTO `users_areainfo` VALUES ('120102', '河东', '120100');
INSERT INTO `users_areainfo` VALUES ('120103', '河西', '120100');
INSERT INTO `users_areainfo` VALUES ('120104', '南开', '120100');
INSERT INTO `users_areainfo` VALUES ('120105', '河北', '120100');
INSERT INTO `users_areainfo` VALUES ('120106', '红桥', '120100');
INSERT INTO `users_areainfo` VALUES ('120107', '塘沽', '120100');
INSERT INTO `users_areainfo` VALUES ('120108', '汉沽', '120100');
INSERT INTO `users_areainfo` VALUES ('120109', '大港', '120100');
INSERT INTO `users_areainfo` VALUES ('120110', '东丽', '120100');
INSERT INTO `users_areainfo` VALUES ('120111', '西青', '120100');
INSERT INTO `users_areainfo` VALUES ('120112', '津南', '120100');
INSERT INTO `users_areainfo` VALUES ('120113', '北辰', '120100');
INSERT INTO `users_areainfo` VALUES ('120114', '武清', '120100');
INSERT INTO `users_areainfo` VALUES ('120115', '宝坻', '120100');
INSERT INTO `users_areainfo` VALUES ('120221', '宁河', '120100');
INSERT INTO `users_areainfo` VALUES ('120223', '静海', '120100');
INSERT INTO `users_areainfo` VALUES ('120225', '蓟县', '120100');
INSERT INTO `users_areainfo` VALUES ('120226', '其它', '120100');
INSERT INTO `users_areainfo` VALUES ('130000', '河北', '0');
INSERT INTO `users_areainfo` VALUES ('130100', '石家庄', '130000');
INSERT INTO `users_areainfo` VALUES ('130102', '长安区', '130100');
INSERT INTO `users_areainfo` VALUES ('130103', '桥东区', '130100');
INSERT INTO `users_areainfo` VALUES ('130104', '桥西区', '130100');
INSERT INTO `users_areainfo` VALUES ('130105', '新华区', '130100');
INSERT INTO `users_areainfo` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `users_areainfo` VALUES ('130108', '裕华区', '130100');
INSERT INTO `users_areainfo` VALUES ('130121', '井陉县', '130100');
INSERT INTO `users_areainfo` VALUES ('130123', '正定县', '130100');
INSERT INTO `users_areainfo` VALUES ('130124', '栾城县', '130100');
INSERT INTO `users_areainfo` VALUES ('130125', '行唐县', '130100');
INSERT INTO `users_areainfo` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `users_areainfo` VALUES ('130127', '高邑县', '130100');
INSERT INTO `users_areainfo` VALUES ('130128', '深泽县', '130100');
INSERT INTO `users_areainfo` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `users_areainfo` VALUES ('130130', '无极县', '130100');
INSERT INTO `users_areainfo` VALUES ('130131', '平山县', '130100');
INSERT INTO `users_areainfo` VALUES ('130132', '元氏县', '130100');
INSERT INTO `users_areainfo` VALUES ('130133', '赵县', '130100');
INSERT INTO `users_areainfo` VALUES ('130181', '辛集市', '130100');
INSERT INTO `users_areainfo` VALUES ('130182', '藁城市', '130100');
INSERT INTO `users_areainfo` VALUES ('130183', '晋州市', '130100');
INSERT INTO `users_areainfo` VALUES ('130184', '新乐市', '130100');
INSERT INTO `users_areainfo` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `users_areainfo` VALUES ('130186', '其它区', '130100');
INSERT INTO `users_areainfo` VALUES ('130200', '唐山', '130000');
INSERT INTO `users_areainfo` VALUES ('130202', '路南区', '130200');
INSERT INTO `users_areainfo` VALUES ('130203', '路北区', '130200');
INSERT INTO `users_areainfo` VALUES ('130204', '古冶区', '130200');
INSERT INTO `users_areainfo` VALUES ('130205', '开平区', '130200');
INSERT INTO `users_areainfo` VALUES ('130207', '丰南区', '130200');
INSERT INTO `users_areainfo` VALUES ('130208', '丰润区', '130200');
INSERT INTO `users_areainfo` VALUES ('130223', '滦县', '130200');
INSERT INTO `users_areainfo` VALUES ('130224', '滦南县', '130200');
INSERT INTO `users_areainfo` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `users_areainfo` VALUES ('130227', '迁西县', '130200');
INSERT INTO `users_areainfo` VALUES ('130229', '玉田县', '130200');
INSERT INTO `users_areainfo` VALUES ('130230', '唐海县', '130200');
INSERT INTO `users_areainfo` VALUES ('130281', '遵化市', '130200');
INSERT INTO `users_areainfo` VALUES ('130283', '迁安市', '130200');
INSERT INTO `users_areainfo` VALUES ('130284', '其它区', '130200');
INSERT INTO `users_areainfo` VALUES ('130300', '秦皇岛', '130000');
INSERT INTO `users_areainfo` VALUES ('130302', '海港区', '130300');
INSERT INTO `users_areainfo` VALUES ('130303', '山海关区', '130300');
INSERT INTO `users_areainfo` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `users_areainfo` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `users_areainfo` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `users_areainfo` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `users_areainfo` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `users_areainfo` VALUES ('130398', '其它区', '130300');
INSERT INTO `users_areainfo` VALUES ('130399', '经济技术开发区', '130300');
INSERT INTO `users_areainfo` VALUES ('130400', '邯郸', '130000');
INSERT INTO `users_areainfo` VALUES ('130402', '邯山区', '130400');
INSERT INTO `users_areainfo` VALUES ('130403', '丛台区', '130400');
INSERT INTO `users_areainfo` VALUES ('130404', '复兴区', '130400');
INSERT INTO `users_areainfo` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `users_areainfo` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `users_areainfo` VALUES ('130423', '临漳县', '130400');
INSERT INTO `users_areainfo` VALUES ('130424', '成安县', '130400');
INSERT INTO `users_areainfo` VALUES ('130425', '大名县', '130400');
INSERT INTO `users_areainfo` VALUES ('130426', '涉县', '130400');
INSERT INTO `users_areainfo` VALUES ('130427', '磁县', '130400');
INSERT INTO `users_areainfo` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `users_areainfo` VALUES ('130429', '永年县', '130400');
INSERT INTO `users_areainfo` VALUES ('130430', '邱县', '130400');
INSERT INTO `users_areainfo` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `users_areainfo` VALUES ('130432', '广平县', '130400');
INSERT INTO `users_areainfo` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `users_areainfo` VALUES ('130434', '魏县', '130400');
INSERT INTO `users_areainfo` VALUES ('130435', '曲周县', '130400');
INSERT INTO `users_areainfo` VALUES ('130481', '武安市', '130400');
INSERT INTO `users_areainfo` VALUES ('130482', '其它区', '130400');
INSERT INTO `users_areainfo` VALUES ('130500', '邢台', '130000');
INSERT INTO `users_areainfo` VALUES ('130502', '桥东区', '130500');
INSERT INTO `users_areainfo` VALUES ('130503', '桥西区', '130500');
INSERT INTO `users_areainfo` VALUES ('130521', '邢台县', '130500');
INSERT INTO `users_areainfo` VALUES ('130522', '临城县', '130500');
INSERT INTO `users_areainfo` VALUES ('130523', '内丘县', '130500');
INSERT INTO `users_areainfo` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `users_areainfo` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `users_areainfo` VALUES ('130526', '任县', '130500');
INSERT INTO `users_areainfo` VALUES ('130527', '南和县', '130500');
INSERT INTO `users_areainfo` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `users_areainfo` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `users_areainfo` VALUES ('130530', '新河县', '130500');
INSERT INTO `users_areainfo` VALUES ('130531', '广宗县', '130500');
INSERT INTO `users_areainfo` VALUES ('130532', '平乡县', '130500');
INSERT INTO `users_areainfo` VALUES ('130533', '威县', '130500');
INSERT INTO `users_areainfo` VALUES ('130534', '清河县', '130500');
INSERT INTO `users_areainfo` VALUES ('130535', '临西县', '130500');
INSERT INTO `users_areainfo` VALUES ('130581', '南宫市', '130500');
INSERT INTO `users_areainfo` VALUES ('130582', '沙河市', '130500');
INSERT INTO `users_areainfo` VALUES ('130583', '其它区', '130500');
INSERT INTO `users_areainfo` VALUES ('130600', '保定', '130000');
INSERT INTO `users_areainfo` VALUES ('130602', '新市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130603', '北市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130604', '南市区', '130600');
INSERT INTO `users_areainfo` VALUES ('130621', '满城县', '130600');
INSERT INTO `users_areainfo` VALUES ('130622', '清苑县', '130600');
INSERT INTO `users_areainfo` VALUES ('130623', '涞水县', '130600');
INSERT INTO `users_areainfo` VALUES ('130624', '阜平县', '130600');
INSERT INTO `users_areainfo` VALUES ('130625', '徐水县', '130600');
INSERT INTO `users_areainfo` VALUES ('130626', '定兴县', '130600');
INSERT INTO `users_areainfo` VALUES ('130627', '唐县', '130600');
INSERT INTO `users_areainfo` VALUES ('130628', '高阳县', '130600');
INSERT INTO `users_areainfo` VALUES ('130629', '容城县', '130600');
INSERT INTO `users_areainfo` VALUES ('130630', '涞源县', '130600');
INSERT INTO `users_areainfo` VALUES ('130631', '望都县', '130600');
INSERT INTO `users_areainfo` VALUES ('130632', '安新县', '130600');
INSERT INTO `users_areainfo` VALUES ('130633', '易县', '130600');
INSERT INTO `users_areainfo` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `users_areainfo` VALUES ('130635', '蠡县', '130600');
INSERT INTO `users_areainfo` VALUES ('130636', '顺平县', '130600');
INSERT INTO `users_areainfo` VALUES ('130637', '博野县', '130600');
INSERT INTO `users_areainfo` VALUES ('130638', '雄县', '130600');
INSERT INTO `users_areainfo` VALUES ('130681', '涿州市', '130600');
INSERT INTO `users_areainfo` VALUES ('130682', '定州市', '130600');
INSERT INTO `users_areainfo` VALUES ('130683', '安国市', '130600');
INSERT INTO `users_areainfo` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `users_areainfo` VALUES ('130698', '高开区', '130600');
INSERT INTO `users_areainfo` VALUES ('130699', '其它区', '130600');
INSERT INTO `users_areainfo` VALUES ('130700', '张家口', '130000');
INSERT INTO `users_areainfo` VALUES ('130702', '桥东区', '130700');
INSERT INTO `users_areainfo` VALUES ('130703', '桥西区', '130700');
INSERT INTO `users_areainfo` VALUES ('130705', '宣化区', '130700');
INSERT INTO `users_areainfo` VALUES ('130706', '下花园区', '130700');
INSERT INTO `users_areainfo` VALUES ('130721', '宣化县', '130700');
INSERT INTO `users_areainfo` VALUES ('130722', '张北县', '130700');
INSERT INTO `users_areainfo` VALUES ('130723', '康保县', '130700');
INSERT INTO `users_areainfo` VALUES ('130724', '沽源县', '130700');
INSERT INTO `users_areainfo` VALUES ('130725', '尚义县', '130700');
INSERT INTO `users_areainfo` VALUES ('130726', '蔚县', '130700');
INSERT INTO `users_areainfo` VALUES ('130727', '阳原县', '130700');
INSERT INTO `users_areainfo` VALUES ('130728', '怀安县', '130700');
INSERT INTO `users_areainfo` VALUES ('130729', '万全县', '130700');
INSERT INTO `users_areainfo` VALUES ('130730', '怀来县', '130700');
INSERT INTO `users_areainfo` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `users_areainfo` VALUES ('130732', '赤城县', '130700');
INSERT INTO `users_areainfo` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `users_areainfo` VALUES ('130734', '其它区', '130700');
INSERT INTO `users_areainfo` VALUES ('130800', '承德', '130000');
INSERT INTO `users_areainfo` VALUES ('130802', '双桥区', '130800');
INSERT INTO `users_areainfo` VALUES ('130803', '双滦区', '130800');
INSERT INTO `users_areainfo` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `users_areainfo` VALUES ('130821', '承德县', '130800');
INSERT INTO `users_areainfo` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `users_areainfo` VALUES ('130823', '平泉县', '130800');
INSERT INTO `users_areainfo` VALUES ('130824', '滦平县', '130800');
INSERT INTO `users_areainfo` VALUES ('130825', '隆化县', '130800');
INSERT INTO `users_areainfo` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `users_areainfo` VALUES ('130829', '其它区', '130800');
INSERT INTO `users_areainfo` VALUES ('130900', '沧州', '130000');
INSERT INTO `users_areainfo` VALUES ('130902', '新华区', '130900');
INSERT INTO `users_areainfo` VALUES ('130903', '运河区', '130900');
INSERT INTO `users_areainfo` VALUES ('130921', '沧县', '130900');
INSERT INTO `users_areainfo` VALUES ('130922', '青县', '130900');
INSERT INTO `users_areainfo` VALUES ('130923', '东光县', '130900');
INSERT INTO `users_areainfo` VALUES ('130924', '海兴县', '130900');
INSERT INTO `users_areainfo` VALUES ('130925', '盐山县', '130900');
INSERT INTO `users_areainfo` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `users_areainfo` VALUES ('130927', '南皮县', '130900');
INSERT INTO `users_areainfo` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `users_areainfo` VALUES ('130929', '献县', '130900');
INSERT INTO `users_areainfo` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `users_areainfo` VALUES ('130981', '泊头市', '130900');
INSERT INTO `users_areainfo` VALUES ('130982', '任丘市', '130900');
INSERT INTO `users_areainfo` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `users_areainfo` VALUES ('130984', '河间市', '130900');
INSERT INTO `users_areainfo` VALUES ('130985', '其它区', '130900');
INSERT INTO `users_areainfo` VALUES ('131000', '廊坊', '130000');
INSERT INTO `users_areainfo` VALUES ('131002', '安次区', '131000');
INSERT INTO `users_areainfo` VALUES ('131003', '广阳区', '131000');
INSERT INTO `users_areainfo` VALUES ('131022', '固安县', '131000');
INSERT INTO `users_areainfo` VALUES ('131023', '永清县', '131000');
INSERT INTO `users_areainfo` VALUES ('131024', '香河县', '131000');
INSERT INTO `users_areainfo` VALUES ('131025', '大城县', '131000');
INSERT INTO `users_areainfo` VALUES ('131026', '文安县', '131000');
INSERT INTO `users_areainfo` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `users_areainfo` VALUES ('131051', '开发区', '131000');
INSERT INTO `users_areainfo` VALUES ('131052', '燕郊经济技术开发区', '131000');
INSERT INTO `users_areainfo` VALUES ('131081', '霸州市', '131000');
INSERT INTO `users_areainfo` VALUES ('131082', '三河市', '131000');
INSERT INTO `users_areainfo` VALUES ('131083', '其它区', '131000');
INSERT INTO `users_areainfo` VALUES ('131100', '衡水', '130000');
INSERT INTO `users_areainfo` VALUES ('131102', '桃城区', '131100');
INSERT INTO `users_areainfo` VALUES ('131121', '枣强县', '131100');
INSERT INTO `users_areainfo` VALUES ('131122', '武邑县', '131100');
INSERT INTO `users_areainfo` VALUES ('131123', '武强县', '131100');
INSERT INTO `users_areainfo` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `users_areainfo` VALUES ('131125', '安平县', '131100');
INSERT INTO `users_areainfo` VALUES ('131126', '故城县', '131100');
INSERT INTO `users_areainfo` VALUES ('131127', '景县', '131100');
INSERT INTO `users_areainfo` VALUES ('131128', '阜城县', '131100');
INSERT INTO `users_areainfo` VALUES ('131181', '冀州市', '131100');
INSERT INTO `users_areainfo` VALUES ('131182', '深州市', '131100');
INSERT INTO `users_areainfo` VALUES ('131183', '其它区', '131100');
INSERT INTO `users_areainfo` VALUES ('140000', '山西', '0');
INSERT INTO `users_areainfo` VALUES ('140100', '太原', '140000');
INSERT INTO `users_areainfo` VALUES ('140105', '小店区', '140100');
INSERT INTO `users_areainfo` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `users_areainfo` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `users_areainfo` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `users_areainfo` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `users_areainfo` VALUES ('140110', '晋源区', '140100');
INSERT INTO `users_areainfo` VALUES ('140121', '清徐县', '140100');
INSERT INTO `users_areainfo` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `users_areainfo` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `users_areainfo` VALUES ('140181', '古交市', '140100');
INSERT INTO `users_areainfo` VALUES ('140182', '其它区', '140100');
INSERT INTO `users_areainfo` VALUES ('140200', '大同', '140000');
INSERT INTO `users_areainfo` VALUES ('140202', '城区', '140200');
INSERT INTO `users_areainfo` VALUES ('140203', '矿区', '140200');
INSERT INTO `users_areainfo` VALUES ('140211', '南郊区', '140200');
INSERT INTO `users_areainfo` VALUES ('140212', '新荣区', '140200');
INSERT INTO `users_areainfo` VALUES ('140221', '阳高县', '140200');
INSERT INTO `users_areainfo` VALUES ('140222', '天镇县', '140200');
INSERT INTO `users_areainfo` VALUES ('140223', '广灵县', '140200');
INSERT INTO `users_areainfo` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `users_areainfo` VALUES ('140225', '浑源县', '140200');
INSERT INTO `users_areainfo` VALUES ('140226', '左云县', '140200');
INSERT INTO `users_areainfo` VALUES ('140227', '大同县', '140200');
INSERT INTO `users_areainfo` VALUES ('140228', '其它区', '140200');
INSERT INTO `users_areainfo` VALUES ('140300', '阳泉', '140000');
INSERT INTO `users_areainfo` VALUES ('140302', '城区', '140300');
INSERT INTO `users_areainfo` VALUES ('140303', '矿区', '140300');
INSERT INTO `users_areainfo` VALUES ('140311', '郊区', '140300');
INSERT INTO `users_areainfo` VALUES ('140321', '平定县', '140300');
INSERT INTO `users_areainfo` VALUES ('140322', '盂县', '140300');
INSERT INTO `users_areainfo` VALUES ('140323', '其它区', '140300');
INSERT INTO `users_areainfo` VALUES ('140400', '长治', '140000');
INSERT INTO `users_areainfo` VALUES ('140421', '长治县', '140400');
INSERT INTO `users_areainfo` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `users_areainfo` VALUES ('140424', '屯留县', '140400');
INSERT INTO `users_areainfo` VALUES ('140425', '平顺县', '140400');
INSERT INTO `users_areainfo` VALUES ('140426', '黎城县', '140400');
INSERT INTO `users_areainfo` VALUES ('140427', '壶关县', '140400');
INSERT INTO `users_areainfo` VALUES ('140428', '长子县', '140400');
INSERT INTO `users_areainfo` VALUES ('140429', '武乡县', '140400');
INSERT INTO `users_areainfo` VALUES ('140430', '沁县', '140400');
INSERT INTO `users_areainfo` VALUES ('140431', '沁源县', '140400');
INSERT INTO `users_areainfo` VALUES ('140481', '潞城市', '140400');
INSERT INTO `users_areainfo` VALUES ('140482', '城区', '140400');
INSERT INTO `users_areainfo` VALUES ('140483', '郊区', '140400');
INSERT INTO `users_areainfo` VALUES ('140484', '高新区', '140400');
INSERT INTO `users_areainfo` VALUES ('140485', '其它区', '140400');
INSERT INTO `users_areainfo` VALUES ('140500', '晋城', '140000');
INSERT INTO `users_areainfo` VALUES ('140502', '城区', '140500');
INSERT INTO `users_areainfo` VALUES ('140521', '沁水县', '140500');
INSERT INTO `users_areainfo` VALUES ('140522', '阳城县', '140500');
INSERT INTO `users_areainfo` VALUES ('140524', '陵川县', '140500');
INSERT INTO `users_areainfo` VALUES ('140525', '泽州县', '140500');
INSERT INTO `users_areainfo` VALUES ('140581', '高平市', '140500');
INSERT INTO `users_areainfo` VALUES ('140582', '其它区', '140500');
INSERT INTO `users_areainfo` VALUES ('140600', '朔州', '140000');
INSERT INTO `users_areainfo` VALUES ('140602', '朔城区', '140600');
INSERT INTO `users_areainfo` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `users_areainfo` VALUES ('140621', '山阴县', '140600');
INSERT INTO `users_areainfo` VALUES ('140622', '应县', '140600');
INSERT INTO `users_areainfo` VALUES ('140623', '右玉县', '140600');
INSERT INTO `users_areainfo` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `users_areainfo` VALUES ('140625', '其它区', '140600');
INSERT INTO `users_areainfo` VALUES ('140700', '晋中', '140000');
INSERT INTO `users_areainfo` VALUES ('140702', '榆次区', '140700');
INSERT INTO `users_areainfo` VALUES ('140721', '榆社县', '140700');
INSERT INTO `users_areainfo` VALUES ('140722', '左权县', '140700');
INSERT INTO `users_areainfo` VALUES ('140723', '和顺县', '140700');
INSERT INTO `users_areainfo` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `users_areainfo` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `users_areainfo` VALUES ('140726', '太谷县', '140700');
INSERT INTO `users_areainfo` VALUES ('140727', '祁县', '140700');
INSERT INTO `users_areainfo` VALUES ('140728', '平遥县', '140700');
INSERT INTO `users_areainfo` VALUES ('140729', '灵石县', '140700');
INSERT INTO `users_areainfo` VALUES ('140781', '介休市', '140700');
INSERT INTO `users_areainfo` VALUES ('140782', '其它区', '140700');
INSERT INTO `users_areainfo` VALUES ('140800', '运城', '140000');
INSERT INTO `users_areainfo` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `users_areainfo` VALUES ('140821', '临猗县', '140800');
INSERT INTO `users_areainfo` VALUES ('140822', '万荣县', '140800');
INSERT INTO `users_areainfo` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `users_areainfo` VALUES ('140824', '稷山县', '140800');
INSERT INTO `users_areainfo` VALUES ('140825', '新绛县', '140800');
INSERT INTO `users_areainfo` VALUES ('140826', '绛县', '140800');
INSERT INTO `users_areainfo` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `users_areainfo` VALUES ('140828', '夏县', '140800');
INSERT INTO `users_areainfo` VALUES ('140829', '平陆县', '140800');
INSERT INTO `users_areainfo` VALUES ('140830', '芮城县', '140800');
INSERT INTO `users_areainfo` VALUES ('140881', '永济市', '140800');
INSERT INTO `users_areainfo` VALUES ('140882', '河津市', '140800');
INSERT INTO `users_areainfo` VALUES ('140883', '其它区', '140800');
INSERT INTO `users_areainfo` VALUES ('140900', '忻州', '140000');
INSERT INTO `users_areainfo` VALUES ('140902', '忻府区', '140900');
INSERT INTO `users_areainfo` VALUES ('140921', '定襄县', '140900');
INSERT INTO `users_areainfo` VALUES ('140922', '五台县', '140900');
INSERT INTO `users_areainfo` VALUES ('140923', '代县', '140900');
INSERT INTO `users_areainfo` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `users_areainfo` VALUES ('140925', '宁武县', '140900');
INSERT INTO `users_areainfo` VALUES ('140926', '静乐县', '140900');
INSERT INTO `users_areainfo` VALUES ('140927', '神池县', '140900');
INSERT INTO `users_areainfo` VALUES ('140928', '五寨县', '140900');
INSERT INTO `users_areainfo` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `users_areainfo` VALUES ('140930', '河曲县', '140900');
INSERT INTO `users_areainfo` VALUES ('140931', '保德县', '140900');
INSERT INTO `users_areainfo` VALUES ('140932', '偏关县', '140900');
INSERT INTO `users_areainfo` VALUES ('140981', '原平市', '140900');
INSERT INTO `users_areainfo` VALUES ('140982', '其它区', '140900');
INSERT INTO `users_areainfo` VALUES ('141000', '临汾', '140000');
INSERT INTO `users_areainfo` VALUES ('141002', '尧都区', '141000');
INSERT INTO `users_areainfo` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `users_areainfo` VALUES ('141022', '翼城县', '141000');
INSERT INTO `users_areainfo` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `users_areainfo` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `users_areainfo` VALUES ('141025', '古县', '141000');
INSERT INTO `users_areainfo` VALUES ('141026', '安泽县', '141000');
INSERT INTO `users_areainfo` VALUES ('141027', '浮山县', '141000');
INSERT INTO `users_areainfo` VALUES ('141028', '吉县', '141000');
INSERT INTO `users_areainfo` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `users_areainfo` VALUES ('141030', '大宁县', '141000');
INSERT INTO `users_areainfo` VALUES ('141031', '隰县', '141000');
INSERT INTO `users_areainfo` VALUES ('141032', '永和县', '141000');
INSERT INTO `users_areainfo` VALUES ('141033', '蒲县', '141000');
INSERT INTO `users_areainfo` VALUES ('141034', '汾西县', '141000');
INSERT INTO `users_areainfo` VALUES ('141081', '侯马市', '141000');
INSERT INTO `users_areainfo` VALUES ('141082', '霍州市', '141000');
INSERT INTO `users_areainfo` VALUES ('141083', '其它区', '141000');
INSERT INTO `users_areainfo` VALUES ('141100', '吕梁', '140000');
INSERT INTO `users_areainfo` VALUES ('141102', '离石区', '141100');
INSERT INTO `users_areainfo` VALUES ('141121', '文水县', '141100');
INSERT INTO `users_areainfo` VALUES ('141122', '交城县', '141100');
INSERT INTO `users_areainfo` VALUES ('141123', '兴县', '141100');
INSERT INTO `users_areainfo` VALUES ('141124', '临县', '141100');
INSERT INTO `users_areainfo` VALUES ('141125', '柳林县', '141100');
INSERT INTO `users_areainfo` VALUES ('141126', '石楼县', '141100');
INSERT INTO `users_areainfo` VALUES ('141127', '岚县', '141100');
INSERT INTO `users_areainfo` VALUES ('141128', '方山县', '141100');
INSERT INTO `users_areainfo` VALUES ('141129', '中阳县', '141100');
INSERT INTO `users_areainfo` VALUES ('141130', '交口县', '141100');
INSERT INTO `users_areainfo` VALUES ('141181', '孝义市', '141100');
INSERT INTO `users_areainfo` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `users_areainfo` VALUES ('141183', '其它区', '141100');
INSERT INTO `users_areainfo` VALUES ('150000', '内蒙', '0');
INSERT INTO `users_areainfo` VALUES ('150100', '呼和浩特', '150000');
INSERT INTO `users_areainfo` VALUES ('150102', '新城区', '150100');
INSERT INTO `users_areainfo` VALUES ('150103', '回民区', '150100');
INSERT INTO `users_areainfo` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `users_areainfo` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `users_areainfo` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `users_areainfo` VALUES ('150122', '托克托县', '150100');
INSERT INTO `users_areainfo` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `users_areainfo` VALUES ('150124', '清水河县', '150100');
INSERT INTO `users_areainfo` VALUES ('150125', '武川县', '150100');
INSERT INTO `users_areainfo` VALUES ('150126', '其它区', '150100');
INSERT INTO `users_areainfo` VALUES ('150200', '包头', '150000');
INSERT INTO `users_areainfo` VALUES ('150202', '东河区', '150200');
INSERT INTO `users_areainfo` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `users_areainfo` VALUES ('150204', '青山区', '150200');
INSERT INTO `users_areainfo` VALUES ('150205', '石拐区', '150200');
INSERT INTO `users_areainfo` VALUES ('150206', '白云矿区', '150200');
INSERT INTO `users_areainfo` VALUES ('150207', '九原区', '150200');
INSERT INTO `users_areainfo` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `users_areainfo` VALUES ('150222', '固阳县', '150200');
INSERT INTO `users_areainfo` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `users_areainfo` VALUES ('150224', '其它区', '150200');
INSERT INTO `users_areainfo` VALUES ('150300', '乌海', '150000');
INSERT INTO `users_areainfo` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `users_areainfo` VALUES ('150303', '海南区', '150300');
INSERT INTO `users_areainfo` VALUES ('150304', '乌达区', '150300');
INSERT INTO `users_areainfo` VALUES ('150305', '其它区', '150300');
INSERT INTO `users_areainfo` VALUES ('150400', '赤峰', '150000');
INSERT INTO `users_areainfo` VALUES ('150402', '红山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150404', '松山区', '150400');
INSERT INTO `users_areainfo` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150424', '林西县', '150400');
INSERT INTO `users_areainfo` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150429', '宁城县', '150400');
INSERT INTO `users_areainfo` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `users_areainfo` VALUES ('150431', '其它区', '150400');
INSERT INTO `users_areainfo` VALUES ('150500', '通辽', '150000');
INSERT INTO `users_areainfo` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `users_areainfo` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `users_areainfo` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `users_areainfo` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `users_areainfo` VALUES ('150582', '其它区', '150500');
INSERT INTO `users_areainfo` VALUES ('150600', '鄂尔多斯', '150000');
INSERT INTO `users_areainfo` VALUES ('150602', '东胜区', '150600');
INSERT INTO `users_areainfo` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `users_areainfo` VALUES ('150628', '其它区', '150600');
INSERT INTO `users_areainfo` VALUES ('150700', '呼伦贝尔', '150000');
INSERT INTO `users_areainfo` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `users_areainfo` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `users_areainfo` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `users_areainfo` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `users_areainfo` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `users_areainfo` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `users_areainfo` VALUES ('150785', '根河市', '150700');
INSERT INTO `users_areainfo` VALUES ('150786', '其它区', '150700');
INSERT INTO `users_areainfo` VALUES ('150800', '巴彦淖尔', '150000');
INSERT INTO `users_areainfo` VALUES ('150802', '临河区', '150800');
INSERT INTO `users_areainfo` VALUES ('150821', '五原县', '150800');
INSERT INTO `users_areainfo` VALUES ('150822', '磴口县', '150800');
INSERT INTO `users_areainfo` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `users_areainfo` VALUES ('150827', '其它区', '150800');
INSERT INTO `users_areainfo` VALUES ('150900', '乌兰察布', '150000');
INSERT INTO `users_areainfo` VALUES ('150902', '集宁区', '150900');
INSERT INTO `users_areainfo` VALUES ('150921', '卓资县', '150900');
INSERT INTO `users_areainfo` VALUES ('150922', '化德县', '150900');
INSERT INTO `users_areainfo` VALUES ('150923', '商都县', '150900');
INSERT INTO `users_areainfo` VALUES ('150924', '兴和县', '150900');
INSERT INTO `users_areainfo` VALUES ('150925', '凉城县', '150900');
INSERT INTO `users_areainfo` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `users_areainfo` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `users_areainfo` VALUES ('150982', '其它区', '150900');
INSERT INTO `users_areainfo` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `users_areainfo` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `users_areainfo` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `users_areainfo` VALUES ('152224', '突泉县', '152200');
INSERT INTO `users_areainfo` VALUES ('152225', '其它区', '152200');
INSERT INTO `users_areainfo` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `users_areainfo` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `users_areainfo` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `users_areainfo` VALUES ('152531', '多伦县', '152500');
INSERT INTO `users_areainfo` VALUES ('152532', '其它区', '152500');
INSERT INTO `users_areainfo` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `users_areainfo` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `users_areainfo` VALUES ('152924', '其它区', '152900');
INSERT INTO `users_areainfo` VALUES ('210000', '辽宁', '0');
INSERT INTO `users_areainfo` VALUES ('210100', '沈阳', '210000');
INSERT INTO `users_areainfo` VALUES ('210102', '和平区', '210100');
INSERT INTO `users_areainfo` VALUES ('210103', '沈河区', '210100');
INSERT INTO `users_areainfo` VALUES ('210104', '大东区', '210100');
INSERT INTO `users_areainfo` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `users_areainfo` VALUES ('210106', '铁西区', '210100');
INSERT INTO `users_areainfo` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `users_areainfo` VALUES ('210112', '东陵区', '210100');
INSERT INTO `users_areainfo` VALUES ('210113', '新城子区', '210100');
INSERT INTO `users_areainfo` VALUES ('210114', '于洪区', '210100');
INSERT INTO `users_areainfo` VALUES ('210122', '辽中县', '210100');
INSERT INTO `users_areainfo` VALUES ('210123', '康平县', '210100');
INSERT INTO `users_areainfo` VALUES ('210124', '法库县', '210100');
INSERT INTO `users_areainfo` VALUES ('210181', '新民市', '210100');
INSERT INTO `users_areainfo` VALUES ('210182', '浑南新区', '210100');
INSERT INTO `users_areainfo` VALUES ('210183', '张士开发区', '210100');
INSERT INTO `users_areainfo` VALUES ('210184', '沈北新区', '210100');
INSERT INTO `users_areainfo` VALUES ('210185', '其它区', '210100');
INSERT INTO `users_areainfo` VALUES ('210200', '大连', '210000');
INSERT INTO `users_areainfo` VALUES ('210202', '中山区', '210200');
INSERT INTO `users_areainfo` VALUES ('210203', '西岗区', '210200');
INSERT INTO `users_areainfo` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `users_areainfo` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `users_areainfo` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `users_areainfo` VALUES ('210213', '金州区', '210200');
INSERT INTO `users_areainfo` VALUES ('210224', '长海县', '210200');
INSERT INTO `users_areainfo` VALUES ('210251', '开发区', '210200');
INSERT INTO `users_areainfo` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `users_areainfo` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `users_areainfo` VALUES ('210283', '庄河市', '210200');
INSERT INTO `users_areainfo` VALUES ('210297', '岭前区', '210200');
INSERT INTO `users_areainfo` VALUES ('210298', '其它区', '210200');
INSERT INTO `users_areainfo` VALUES ('210300', '鞍山', '210000');
INSERT INTO `users_areainfo` VALUES ('210302', '铁东区', '210300');
INSERT INTO `users_areainfo` VALUES ('210303', '铁西区', '210300');
INSERT INTO `users_areainfo` VALUES ('210304', '立山区', '210300');
INSERT INTO `users_areainfo` VALUES ('210311', '千山区', '210300');
INSERT INTO `users_areainfo` VALUES ('210321', '台安县', '210300');
INSERT INTO `users_areainfo` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `users_areainfo` VALUES ('210351', '高新区', '210300');
INSERT INTO `users_areainfo` VALUES ('210381', '海城市', '210300');
INSERT INTO `users_areainfo` VALUES ('210382', '其它区', '210300');
INSERT INTO `users_areainfo` VALUES ('210400', '抚顺', '210000');
INSERT INTO `users_areainfo` VALUES ('210402', '新抚区', '210400');
INSERT INTO `users_areainfo` VALUES ('210403', '东洲区', '210400');
INSERT INTO `users_areainfo` VALUES ('210404', '望花区', '210400');
INSERT INTO `users_areainfo` VALUES ('210411', '顺城区', '210400');
INSERT INTO `users_areainfo` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `users_areainfo` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `users_areainfo` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `users_areainfo` VALUES ('210424', '其它区', '210400');
INSERT INTO `users_areainfo` VALUES ('210500', '本溪', '210000');
INSERT INTO `users_areainfo` VALUES ('210502', '平山区', '210500');
INSERT INTO `users_areainfo` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `users_areainfo` VALUES ('210504', '明山区', '210500');
INSERT INTO `users_areainfo` VALUES ('210505', '南芬区', '210500');
INSERT INTO `users_areainfo` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `users_areainfo` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `users_areainfo` VALUES ('210523', '其它区', '210500');
INSERT INTO `users_areainfo` VALUES ('210600', '丹东', '210000');
INSERT INTO `users_areainfo` VALUES ('210602', '元宝区', '210600');
INSERT INTO `users_areainfo` VALUES ('210603', '振兴区', '210600');
INSERT INTO `users_areainfo` VALUES ('210604', '振安区', '210600');
INSERT INTO `users_areainfo` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `users_areainfo` VALUES ('210681', '东港市', '210600');
INSERT INTO `users_areainfo` VALUES ('210682', '凤城市', '210600');
INSERT INTO `users_areainfo` VALUES ('210683', '其它区', '210600');
INSERT INTO `users_areainfo` VALUES ('210700', '锦州', '210000');
INSERT INTO `users_areainfo` VALUES ('210702', '古塔区', '210700');
INSERT INTO `users_areainfo` VALUES ('210703', '凌河区', '210700');
INSERT INTO `users_areainfo` VALUES ('210711', '太和区', '210700');
INSERT INTO `users_areainfo` VALUES ('210726', '黑山县', '210700');
INSERT INTO `users_areainfo` VALUES ('210727', '义县', '210700');
INSERT INTO `users_areainfo` VALUES ('210781', '凌海市', '210700');
INSERT INTO `users_areainfo` VALUES ('210782', '北镇市', '210700');
INSERT INTO `users_areainfo` VALUES ('210783', '其它区', '210700');
INSERT INTO `users_areainfo` VALUES ('210800', '营口', '210000');
INSERT INTO `users_areainfo` VALUES ('210802', '站前区', '210800');
INSERT INTO `users_areainfo` VALUES ('210803', '西市区', '210800');
INSERT INTO `users_areainfo` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `users_areainfo` VALUES ('210811', '老边区', '210800');
INSERT INTO `users_areainfo` VALUES ('210881', '盖州市', '210800');
INSERT INTO `users_areainfo` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `users_areainfo` VALUES ('210883', '其它区', '210800');
INSERT INTO `users_areainfo` VALUES ('210900', '阜新', '210000');
INSERT INTO `users_areainfo` VALUES ('210902', '海州区', '210900');
INSERT INTO `users_areainfo` VALUES ('210903', '新邱区', '210900');
INSERT INTO `users_areainfo` VALUES ('210904', '太平区', '210900');
INSERT INTO `users_areainfo` VALUES ('210905', '清河门区', '210900');
INSERT INTO `users_areainfo` VALUES ('210911', '细河区', '210900');
INSERT INTO `users_areainfo` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `users_areainfo` VALUES ('210922', '彰武县', '210900');
INSERT INTO `users_areainfo` VALUES ('210923', '其它区', '210900');
INSERT INTO `users_areainfo` VALUES ('211000', '辽阳', '210000');
INSERT INTO `users_areainfo` VALUES ('211002', '白塔区', '211000');
INSERT INTO `users_areainfo` VALUES ('211003', '文圣区', '211000');
INSERT INTO `users_areainfo` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `users_areainfo` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `users_areainfo` VALUES ('211011', '太子河区', '211000');
INSERT INTO `users_areainfo` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `users_areainfo` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `users_areainfo` VALUES ('211082', '其它区', '211000');
INSERT INTO `users_areainfo` VALUES ('211100', '盘锦', '210000');
INSERT INTO `users_areainfo` VALUES ('211102', '双台子区', '211100');
INSERT INTO `users_areainfo` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `users_areainfo` VALUES ('211121', '大洼县', '211100');
INSERT INTO `users_areainfo` VALUES ('211122', '盘山县', '211100');
INSERT INTO `users_areainfo` VALUES ('211123', '其它区', '211100');
INSERT INTO `users_areainfo` VALUES ('211200', '铁岭', '210000');
INSERT INTO `users_areainfo` VALUES ('211202', '银州区', '211200');
INSERT INTO `users_areainfo` VALUES ('211204', '清河区', '211200');
INSERT INTO `users_areainfo` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `users_areainfo` VALUES ('211223', '西丰县', '211200');
INSERT INTO `users_areainfo` VALUES ('211224', '昌图县', '211200');
INSERT INTO `users_areainfo` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `users_areainfo` VALUES ('211282', '开原市', '211200');
INSERT INTO `users_areainfo` VALUES ('211283', '其它区', '211200');
INSERT INTO `users_areainfo` VALUES ('211300', '朝阳', '210000');
INSERT INTO `users_areainfo` VALUES ('211302', '双塔区', '211300');
INSERT INTO `users_areainfo` VALUES ('211303', '龙城区', '211300');
INSERT INTO `users_areainfo` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `users_areainfo` VALUES ('211322', '建平县', '211300');
INSERT INTO `users_areainfo` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `users_areainfo` VALUES ('211381', '北票市', '211300');
INSERT INTO `users_areainfo` VALUES ('211382', '凌源市', '211300');
INSERT INTO `users_areainfo` VALUES ('211383', '其它区', '211300');
INSERT INTO `users_areainfo` VALUES ('211400', '葫芦岛', '210000');
INSERT INTO `users_areainfo` VALUES ('211402', '连山区', '211400');
INSERT INTO `users_areainfo` VALUES ('211403', '龙港区', '211400');
INSERT INTO `users_areainfo` VALUES ('211404', '南票区', '211400');
INSERT INTO `users_areainfo` VALUES ('211421', '绥中县', '211400');
INSERT INTO `users_areainfo` VALUES ('211422', '建昌县', '211400');
INSERT INTO `users_areainfo` VALUES ('211481', '兴城市', '211400');
INSERT INTO `users_areainfo` VALUES ('211482', '其它区', '211400');
INSERT INTO `users_areainfo` VALUES ('220000', '吉林', '0');
INSERT INTO `users_areainfo` VALUES ('220100', '长春', '220000');
INSERT INTO `users_areainfo` VALUES ('220102', '南关区', '220100');
INSERT INTO `users_areainfo` VALUES ('220103', '宽城区', '220100');
INSERT INTO `users_areainfo` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `users_areainfo` VALUES ('220105', '二道区', '220100');
INSERT INTO `users_areainfo` VALUES ('220106', '绿园区', '220100');
INSERT INTO `users_areainfo` VALUES ('220112', '双阳区', '220100');
INSERT INTO `users_areainfo` VALUES ('220122', '农安县', '220100');
INSERT INTO `users_areainfo` VALUES ('220181', '九台市', '220100');
INSERT INTO `users_areainfo` VALUES ('220182', '榆树市', '220100');
INSERT INTO `users_areainfo` VALUES ('220183', '德惠市', '220100');
INSERT INTO `users_areainfo` VALUES ('220184', '高新技术产业开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220185', '汽车产业开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220186', '经济技术开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220187', '净月旅游开发区', '220100');
INSERT INTO `users_areainfo` VALUES ('220188', '其它区', '220100');
INSERT INTO `users_areainfo` VALUES ('220200', '吉林', '220000');
INSERT INTO `users_areainfo` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `users_areainfo` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `users_areainfo` VALUES ('220204', '船营区', '220200');
INSERT INTO `users_areainfo` VALUES ('220211', '丰满区', '220200');
INSERT INTO `users_areainfo` VALUES ('220221', '永吉县', '220200');
INSERT INTO `users_areainfo` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `users_areainfo` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `users_areainfo` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `users_areainfo` VALUES ('220284', '磐石市', '220200');
INSERT INTO `users_areainfo` VALUES ('220285', '其它区', '220200');
INSERT INTO `users_areainfo` VALUES ('220300', '四平', '220000');
INSERT INTO `users_areainfo` VALUES ('220302', '铁西区', '220300');
INSERT INTO `users_areainfo` VALUES ('220303', '铁东区', '220300');
INSERT INTO `users_areainfo` VALUES ('220322', '梨树县', '220300');
INSERT INTO `users_areainfo` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `users_areainfo` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `users_areainfo` VALUES ('220382', '双辽市', '220300');
INSERT INTO `users_areainfo` VALUES ('220383', '其它区', '220300');
INSERT INTO `users_areainfo` VALUES ('220400', '辽源', '220000');
INSERT INTO `users_areainfo` VALUES ('220402', '龙山区', '220400');
INSERT INTO `users_areainfo` VALUES ('220403', '西安区', '220400');
INSERT INTO `users_areainfo` VALUES ('220421', '东丰县', '220400');
INSERT INTO `users_areainfo` VALUES ('220422', '东辽县', '220400');
INSERT INTO `users_areainfo` VALUES ('220423', '其它区', '220400');
INSERT INTO `users_areainfo` VALUES ('220500', '通化', '220000');
INSERT INTO `users_areainfo` VALUES ('220502', '东昌区', '220500');
INSERT INTO `users_areainfo` VALUES ('220503', '二道江区', '220500');
INSERT INTO `users_areainfo` VALUES ('220521', '通化县', '220500');
INSERT INTO `users_areainfo` VALUES ('220523', '辉南县', '220500');
INSERT INTO `users_areainfo` VALUES ('220524', '柳河县', '220500');
INSERT INTO `users_areainfo` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `users_areainfo` VALUES ('220582', '集安市', '220500');
INSERT INTO `users_areainfo` VALUES ('220583', '其它区', '220500');
INSERT INTO `users_areainfo` VALUES ('220600', '白山', '220000');
INSERT INTO `users_areainfo` VALUES ('220602', '八道江区', '220600');
INSERT INTO `users_areainfo` VALUES ('220621', '抚松县', '220600');
INSERT INTO `users_areainfo` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `users_areainfo` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `users_areainfo` VALUES ('220625', '江源县', '220600');
INSERT INTO `users_areainfo` VALUES ('220681', '临江市', '220600');
INSERT INTO `users_areainfo` VALUES ('220682', '其它区', '220600');
INSERT INTO `users_areainfo` VALUES ('220700', '松原', '220000');
INSERT INTO `users_areainfo` VALUES ('220702', '宁江区', '220700');
INSERT INTO `users_areainfo` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `users_areainfo` VALUES ('220722', '长岭县', '220700');
INSERT INTO `users_areainfo` VALUES ('220723', '乾安县', '220700');
INSERT INTO `users_areainfo` VALUES ('220724', '扶余县', '220700');
INSERT INTO `users_areainfo` VALUES ('220725', '其它区', '220700');
INSERT INTO `users_areainfo` VALUES ('220800', '白城', '220000');
INSERT INTO `users_areainfo` VALUES ('220802', '洮北区', '220800');
INSERT INTO `users_areainfo` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `users_areainfo` VALUES ('220822', '通榆县', '220800');
INSERT INTO `users_areainfo` VALUES ('220881', '洮南市', '220800');
INSERT INTO `users_areainfo` VALUES ('220882', '大安市', '220800');
INSERT INTO `users_areainfo` VALUES ('220883', '其它区', '220800');
INSERT INTO `users_areainfo` VALUES ('222400', '延边', '220000');
INSERT INTO `users_areainfo` VALUES ('222401', '延吉市', '222400');
INSERT INTO `users_areainfo` VALUES ('222402', '图们市', '222400');
INSERT INTO `users_areainfo` VALUES ('222403', '敦化市', '222400');
INSERT INTO `users_areainfo` VALUES ('222404', '珲春市', '222400');
INSERT INTO `users_areainfo` VALUES ('222405', '龙井市', '222400');
INSERT INTO `users_areainfo` VALUES ('222406', '和龙市', '222400');
INSERT INTO `users_areainfo` VALUES ('222424', '汪清县', '222400');
INSERT INTO `users_areainfo` VALUES ('222426', '安图县', '222400');
INSERT INTO `users_areainfo` VALUES ('222427', '其它区', '222400');
INSERT INTO `users_areainfo` VALUES ('230000', '黑龙江', '0');
INSERT INTO `users_areainfo` VALUES ('230100', '哈尔滨', '230000');
INSERT INTO `users_areainfo` VALUES ('230102', '道里区', '230100');
INSERT INTO `users_areainfo` VALUES ('230103', '南岗区', '230100');
INSERT INTO `users_areainfo` VALUES ('230104', '道外区', '230100');
INSERT INTO `users_areainfo` VALUES ('230106', '香坊区', '230100');
INSERT INTO `users_areainfo` VALUES ('230107', '动力区', '230100');
INSERT INTO `users_areainfo` VALUES ('230108', '平房区', '230100');
INSERT INTO `users_areainfo` VALUES ('230109', '松北区', '230100');
INSERT INTO `users_areainfo` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `users_areainfo` VALUES ('230123', '依兰县', '230100');
INSERT INTO `users_areainfo` VALUES ('230124', '方正县', '230100');
INSERT INTO `users_areainfo` VALUES ('230125', '宾县', '230100');
INSERT INTO `users_areainfo` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `users_areainfo` VALUES ('230127', '木兰县', '230100');
INSERT INTO `users_areainfo` VALUES ('230128', '通河县', '230100');
INSERT INTO `users_areainfo` VALUES ('230129', '延寿县', '230100');
INSERT INTO `users_areainfo` VALUES ('230181', '阿城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230182', '双城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230183', '尚志市', '230100');
INSERT INTO `users_areainfo` VALUES ('230184', '五常市', '230100');
INSERT INTO `users_areainfo` VALUES ('230185', '阿城市', '230100');
INSERT INTO `users_areainfo` VALUES ('230186', '其它区', '230100');
INSERT INTO `users_areainfo` VALUES ('230200', '齐齐哈尔', '230000');
INSERT INTO `users_areainfo` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `users_areainfo` VALUES ('230203', '建华区', '230200');
INSERT INTO `users_areainfo` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `users_areainfo` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `users_areainfo` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `users_areainfo` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `users_areainfo` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `users_areainfo` VALUES ('230221', '龙江县', '230200');
INSERT INTO `users_areainfo` VALUES ('230223', '依安县', '230200');
INSERT INTO `users_areainfo` VALUES ('230224', '泰来县', '230200');
INSERT INTO `users_areainfo` VALUES ('230225', '甘南县', '230200');
INSERT INTO `users_areainfo` VALUES ('230227', '富裕县', '230200');
INSERT INTO `users_areainfo` VALUES ('230229', '克山县', '230200');
INSERT INTO `users_areainfo` VALUES ('230230', '克东县', '230200');
INSERT INTO `users_areainfo` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `users_areainfo` VALUES ('230281', '讷河市', '230200');
INSERT INTO `users_areainfo` VALUES ('230282', '其它区', '230200');
INSERT INTO `users_areainfo` VALUES ('230300', '鸡西', '230000');
INSERT INTO `users_areainfo` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `users_areainfo` VALUES ('230303', '恒山区', '230300');
INSERT INTO `users_areainfo` VALUES ('230304', '滴道区', '230300');
INSERT INTO `users_areainfo` VALUES ('230305', '梨树区', '230300');
INSERT INTO `users_areainfo` VALUES ('230306', '城子河区', '230300');
INSERT INTO `users_areainfo` VALUES ('230307', '麻山区', '230300');
INSERT INTO `users_areainfo` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `users_areainfo` VALUES ('230381', '虎林市', '230300');
INSERT INTO `users_areainfo` VALUES ('230382', '密山市', '230300');
INSERT INTO `users_areainfo` VALUES ('230383', '其它区', '230300');
INSERT INTO `users_areainfo` VALUES ('230400', '鹤岗', '230000');
INSERT INTO `users_areainfo` VALUES ('230402', '向阳区', '230400');
INSERT INTO `users_areainfo` VALUES ('230403', '工农区', '230400');
INSERT INTO `users_areainfo` VALUES ('230404', '南山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230405', '兴安区', '230400');
INSERT INTO `users_areainfo` VALUES ('230406', '东山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230407', '兴山区', '230400');
INSERT INTO `users_areainfo` VALUES ('230421', '萝北县', '230400');
INSERT INTO `users_areainfo` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `users_areainfo` VALUES ('230423', '其它区', '230400');
INSERT INTO `users_areainfo` VALUES ('230500', '双鸭山', '230000');
INSERT INTO `users_areainfo` VALUES ('230502', '尖山区', '230500');
INSERT INTO `users_areainfo` VALUES ('230503', '岭东区', '230500');
INSERT INTO `users_areainfo` VALUES ('230505', '四方台区', '230500');
INSERT INTO `users_areainfo` VALUES ('230506', '宝山区', '230500');
INSERT INTO `users_areainfo` VALUES ('230521', '集贤县', '230500');
INSERT INTO `users_areainfo` VALUES ('230522', '友谊县', '230500');
INSERT INTO `users_areainfo` VALUES ('230523', '宝清县', '230500');
INSERT INTO `users_areainfo` VALUES ('230524', '饶河县', '230500');
INSERT INTO `users_areainfo` VALUES ('230525', '其它区', '230500');
INSERT INTO `users_areainfo` VALUES ('230600', '大庆', '230000');
INSERT INTO `users_areainfo` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `users_areainfo` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `users_areainfo` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `users_areainfo` VALUES ('230605', '红岗区', '230600');
INSERT INTO `users_areainfo` VALUES ('230606', '大同区', '230600');
INSERT INTO `users_areainfo` VALUES ('230621', '肇州县', '230600');
INSERT INTO `users_areainfo` VALUES ('230622', '肇源县', '230600');
INSERT INTO `users_areainfo` VALUES ('230623', '林甸县', '230600');
INSERT INTO `users_areainfo` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `users_areainfo` VALUES ('230625', '其它区', '230600');
INSERT INTO `users_areainfo` VALUES ('230700', '伊春', '230000');
INSERT INTO `users_areainfo` VALUES ('230702', '伊春区', '230700');
INSERT INTO `users_areainfo` VALUES ('230703', '南岔区', '230700');
INSERT INTO `users_areainfo` VALUES ('230704', '友好区', '230700');
INSERT INTO `users_areainfo` VALUES ('230705', '西林区', '230700');
INSERT INTO `users_areainfo` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `users_areainfo` VALUES ('230707', '新青区', '230700');
INSERT INTO `users_areainfo` VALUES ('230708', '美溪区', '230700');
INSERT INTO `users_areainfo` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `users_areainfo` VALUES ('230710', '五营区', '230700');
INSERT INTO `users_areainfo` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `users_areainfo` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `users_areainfo` VALUES ('230713', '带岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230715', '红星区', '230700');
INSERT INTO `users_areainfo` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `users_areainfo` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `users_areainfo` VALUES ('230781', '铁力市', '230700');
INSERT INTO `users_areainfo` VALUES ('230782', '其它区', '230700');
INSERT INTO `users_areainfo` VALUES ('230800', '佳木斯', '230000');
INSERT INTO `users_areainfo` VALUES ('230802', '永红区', '230800');
INSERT INTO `users_areainfo` VALUES ('230803', '向阳区', '230800');
INSERT INTO `users_areainfo` VALUES ('230804', '前进区', '230800');
INSERT INTO `users_areainfo` VALUES ('230805', '东风区', '230800');
INSERT INTO `users_areainfo` VALUES ('230811', '郊区', '230800');
INSERT INTO `users_areainfo` VALUES ('230822', '桦南县', '230800');
INSERT INTO `users_areainfo` VALUES ('230826', '桦川县', '230800');
INSERT INTO `users_areainfo` VALUES ('230828', '汤原县', '230800');
INSERT INTO `users_areainfo` VALUES ('230833', '抚远县', '230800');
INSERT INTO `users_areainfo` VALUES ('230881', '同江市', '230800');
INSERT INTO `users_areainfo` VALUES ('230882', '富锦市', '230800');
INSERT INTO `users_areainfo` VALUES ('230883', '其它区', '230800');
INSERT INTO `users_areainfo` VALUES ('230900', '七台河', '230000');
INSERT INTO `users_areainfo` VALUES ('230902', '新兴区', '230900');
INSERT INTO `users_areainfo` VALUES ('230903', '桃山区', '230900');
INSERT INTO `users_areainfo` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `users_areainfo` VALUES ('230921', '勃利县', '230900');
INSERT INTO `users_areainfo` VALUES ('230922', '其它区', '230900');
INSERT INTO `users_areainfo` VALUES ('231000', '牡丹江', '230000');
INSERT INTO `users_areainfo` VALUES ('231002', '东安区', '231000');
INSERT INTO `users_areainfo` VALUES ('231003', '阳明区', '231000');
INSERT INTO `users_areainfo` VALUES ('231004', '爱民区', '231000');
INSERT INTO `users_areainfo` VALUES ('231005', '西安区', '231000');
INSERT INTO `users_areainfo` VALUES ('231024', '东宁县', '231000');
INSERT INTO `users_areainfo` VALUES ('231025', '林口县', '231000');
INSERT INTO `users_areainfo` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `users_areainfo` VALUES ('231083', '海林市', '231000');
INSERT INTO `users_areainfo` VALUES ('231084', '宁安市', '231000');
INSERT INTO `users_areainfo` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `users_areainfo` VALUES ('231086', '其它区', '231000');
INSERT INTO `users_areainfo` VALUES ('231100', '黑河', '230000');
INSERT INTO `users_areainfo` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `users_areainfo` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `users_areainfo` VALUES ('231123', '逊克县', '231100');
INSERT INTO `users_areainfo` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `users_areainfo` VALUES ('231181', '北安市', '231100');
INSERT INTO `users_areainfo` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `users_areainfo` VALUES ('231183', '其它区', '231100');
INSERT INTO `users_areainfo` VALUES ('231200', '绥化', '230000');
INSERT INTO `users_areainfo` VALUES ('231202', '北林区', '231200');
INSERT INTO `users_areainfo` VALUES ('231221', '望奎县', '231200');
INSERT INTO `users_areainfo` VALUES ('231222', '兰西县', '231200');
INSERT INTO `users_areainfo` VALUES ('231223', '青冈县', '231200');
INSERT INTO `users_areainfo` VALUES ('231224', '庆安县', '231200');
INSERT INTO `users_areainfo` VALUES ('231225', '明水县', '231200');
INSERT INTO `users_areainfo` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `users_areainfo` VALUES ('231281', '安达市', '231200');
INSERT INTO `users_areainfo` VALUES ('231282', '肇东市', '231200');
INSERT INTO `users_areainfo` VALUES ('231283', '海伦市', '231200');
INSERT INTO `users_areainfo` VALUES ('231284', '其它区', '231200');
INSERT INTO `users_areainfo` VALUES ('232700', '大兴安岭', '230000');
INSERT INTO `users_areainfo` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `users_areainfo` VALUES ('232722', '塔河县', '232700');
INSERT INTO `users_areainfo` VALUES ('232723', '漠河县', '232700');
INSERT INTO `users_areainfo` VALUES ('232724', '加格达奇区', '232700');
INSERT INTO `users_areainfo` VALUES ('232725', '其它区', '232700');
INSERT INTO `users_areainfo` VALUES ('310000', '上海', '0');
INSERT INTO `users_areainfo` VALUES ('310100', '上海市', '310000');
INSERT INTO `users_areainfo` VALUES ('310101', '黄浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310103', '卢湾', '310100');
INSERT INTO `users_areainfo` VALUES ('310104', '徐汇', '310100');
INSERT INTO `users_areainfo` VALUES ('310105', '长宁', '310100');
INSERT INTO `users_areainfo` VALUES ('310106', '静安', '310100');
INSERT INTO `users_areainfo` VALUES ('310107', '普陀', '310100');
INSERT INTO `users_areainfo` VALUES ('310108', '闸北', '310100');
INSERT INTO `users_areainfo` VALUES ('310109', '虹口', '310100');
INSERT INTO `users_areainfo` VALUES ('310110', '杨浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310112', '闵行', '310100');
INSERT INTO `users_areainfo` VALUES ('310113', '宝山', '310100');
INSERT INTO `users_areainfo` VALUES ('310114', '嘉定', '310100');
INSERT INTO `users_areainfo` VALUES ('310115', '浦东新', '310100');
INSERT INTO `users_areainfo` VALUES ('310116', '金山', '310100');
INSERT INTO `users_areainfo` VALUES ('310117', '松江', '310100');
INSERT INTO `users_areainfo` VALUES ('310118', '青浦', '310100');
INSERT INTO `users_areainfo` VALUES ('310119', '南汇', '310100');
INSERT INTO `users_areainfo` VALUES ('310120', '奉贤', '310100');
INSERT INTO `users_areainfo` VALUES ('310152', '川沙', '310100');
INSERT INTO `users_areainfo` VALUES ('310230', '崇明', '310100');
INSERT INTO `users_areainfo` VALUES ('310231', '其它', '310100');
INSERT INTO `users_areainfo` VALUES ('320000', '江苏', '0');
INSERT INTO `users_areainfo` VALUES ('320100', '南京', '320000');
INSERT INTO `users_areainfo` VALUES ('320102', '玄武区', '320100');
INSERT INTO `users_areainfo` VALUES ('320103', '白下区', '320100');
INSERT INTO `users_areainfo` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `users_areainfo` VALUES ('320105', '建邺区', '320100');
INSERT INTO `users_areainfo` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `users_areainfo` VALUES ('320107', '下关区', '320100');
INSERT INTO `users_areainfo` VALUES ('320111', '浦口区', '320100');
INSERT INTO `users_areainfo` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `users_areainfo` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `users_areainfo` VALUES ('320115', '江宁区', '320100');
INSERT INTO `users_areainfo` VALUES ('320116', '六合区', '320100');
INSERT INTO `users_areainfo` VALUES ('320124', '溧水县', '320100');
INSERT INTO `users_areainfo` VALUES ('320125', '高淳县', '320100');
INSERT INTO `users_areainfo` VALUES ('320126', '其它区', '320100');
INSERT INTO `users_areainfo` VALUES ('320200', '无锡', '320000');
INSERT INTO `users_areainfo` VALUES ('320202', '崇安区', '320200');
INSERT INTO `users_areainfo` VALUES ('320203', '南长区', '320200');
INSERT INTO `users_areainfo` VALUES ('320204', '北塘区', '320200');
INSERT INTO `users_areainfo` VALUES ('320205', '锡山区', '320200');
INSERT INTO `users_areainfo` VALUES ('320206', '惠山区', '320200');
INSERT INTO `users_areainfo` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `users_areainfo` VALUES ('320281', '江阴市', '320200');
INSERT INTO `users_areainfo` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `users_areainfo` VALUES ('320296', '新区', '320200');
INSERT INTO `users_areainfo` VALUES ('320297', '其它区', '320200');
INSERT INTO `users_areainfo` VALUES ('320300', '徐州', '320000');
INSERT INTO `users_areainfo` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `users_areainfo` VALUES ('320303', '云龙区', '320300');
INSERT INTO `users_areainfo` VALUES ('320304', '九里区', '320300');
INSERT INTO `users_areainfo` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `users_areainfo` VALUES ('320311', '泉山区', '320300');
INSERT INTO `users_areainfo` VALUES ('320321', '丰县', '320300');
INSERT INTO `users_areainfo` VALUES ('320322', '沛县', '320300');
INSERT INTO `users_areainfo` VALUES ('320323', '铜山县', '320300');
INSERT INTO `users_areainfo` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `users_areainfo` VALUES ('320381', '新沂市', '320300');
INSERT INTO `users_areainfo` VALUES ('320382', '邳州市', '320300');
INSERT INTO `users_areainfo` VALUES ('320383', '其它区', '320300');
INSERT INTO `users_areainfo` VALUES ('320400', '常州', '320000');
INSERT INTO `users_areainfo` VALUES ('320402', '天宁区', '320400');
INSERT INTO `users_areainfo` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `users_areainfo` VALUES ('320405', '戚墅堰区', '320400');
INSERT INTO `users_areainfo` VALUES ('320411', '新北区', '320400');
INSERT INTO `users_areainfo` VALUES ('320412', '武进区', '320400');
INSERT INTO `users_areainfo` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `users_areainfo` VALUES ('320482', '金坛市', '320400');
INSERT INTO `users_areainfo` VALUES ('320483', '其它区', '320400');
INSERT INTO `users_areainfo` VALUES ('320500', '苏州', '320000');
INSERT INTO `users_areainfo` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `users_areainfo` VALUES ('320503', '平江区', '320500');
INSERT INTO `users_areainfo` VALUES ('320504', '金阊区', '320500');
INSERT INTO `users_areainfo` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `users_areainfo` VALUES ('320506', '吴中区', '320500');
INSERT INTO `users_areainfo` VALUES ('320507', '相城区', '320500');
INSERT INTO `users_areainfo` VALUES ('320581', '常熟市', '320500');
INSERT INTO `users_areainfo` VALUES ('320582', '张家港市', '320500');
INSERT INTO `users_areainfo` VALUES ('320583', '昆山市', '320500');
INSERT INTO `users_areainfo` VALUES ('320584', '吴江市', '320500');
INSERT INTO `users_areainfo` VALUES ('320585', '太仓市', '320500');
INSERT INTO `users_areainfo` VALUES ('320594', '新区', '320500');
INSERT INTO `users_areainfo` VALUES ('320595', '园区', '320500');
INSERT INTO `users_areainfo` VALUES ('320596', '其它区', '320500');
INSERT INTO `users_areainfo` VALUES ('320600', '南通', '320000');
INSERT INTO `users_areainfo` VALUES ('320602', '崇川区', '320600');
INSERT INTO `users_areainfo` VALUES ('320611', '港闸区', '320600');
INSERT INTO `users_areainfo` VALUES ('320621', '海安县', '320600');
INSERT INTO `users_areainfo` VALUES ('320623', '如东县', '320600');
INSERT INTO `users_areainfo` VALUES ('320681', '启东市', '320600');
INSERT INTO `users_areainfo` VALUES ('320682', '如皋市', '320600');
INSERT INTO `users_areainfo` VALUES ('320683', '通州市', '320600');
INSERT INTO `users_areainfo` VALUES ('320684', '海门市', '320600');
INSERT INTO `users_areainfo` VALUES ('320693', '开发区', '320600');
INSERT INTO `users_areainfo` VALUES ('320694', '其它区', '320600');
INSERT INTO `users_areainfo` VALUES ('320700', '连云港', '320000');
INSERT INTO `users_areainfo` VALUES ('320703', '连云区', '320700');
INSERT INTO `users_areainfo` VALUES ('320705', '新浦区', '320700');
INSERT INTO `users_areainfo` VALUES ('320706', '海州区', '320700');
INSERT INTO `users_areainfo` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `users_areainfo` VALUES ('320722', '东海县', '320700');
INSERT INTO `users_areainfo` VALUES ('320723', '灌云县', '320700');
INSERT INTO `users_areainfo` VALUES ('320724', '灌南县', '320700');
INSERT INTO `users_areainfo` VALUES ('320725', '其它区', '320700');
INSERT INTO `users_areainfo` VALUES ('320800', '淮安', '320000');
INSERT INTO `users_areainfo` VALUES ('320802', '清河区', '320800');
INSERT INTO `users_areainfo` VALUES ('320803', '楚州区', '320800');
INSERT INTO `users_areainfo` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `users_areainfo` VALUES ('320811', '清浦区', '320800');
INSERT INTO `users_areainfo` VALUES ('320826', '涟水县', '320800');
INSERT INTO `users_areainfo` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `users_areainfo` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `users_areainfo` VALUES ('320831', '金湖县', '320800');
INSERT INTO `users_areainfo` VALUES ('320832', '其它区', '320800');
INSERT INTO `users_areainfo` VALUES ('320900', '盐城', '320000');
INSERT INTO `users_areainfo` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `users_areainfo` VALUES ('320903', '盐都区', '320900');
INSERT INTO `users_areainfo` VALUES ('320921', '响水县', '320900');
INSERT INTO `users_areainfo` VALUES ('320922', '滨海县', '320900');
INSERT INTO `users_areainfo` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `users_areainfo` VALUES ('320924', '射阳县', '320900');
INSERT INTO `users_areainfo` VALUES ('320925', '建湖县', '320900');
INSERT INTO `users_areainfo` VALUES ('320981', '东台市', '320900');
INSERT INTO `users_areainfo` VALUES ('320982', '大丰市', '320900');
INSERT INTO `users_areainfo` VALUES ('320983', '其它区', '320900');
INSERT INTO `users_areainfo` VALUES ('321000', '扬州', '320000');
INSERT INTO `users_areainfo` VALUES ('321002', '广陵区', '321000');
INSERT INTO `users_areainfo` VALUES ('321003', '邗江区', '321000');
INSERT INTO `users_areainfo` VALUES ('321011', '维扬区', '321000');
INSERT INTO `users_areainfo` VALUES ('321023', '宝应县', '321000');
INSERT INTO `users_areainfo` VALUES ('321081', '仪征市', '321000');
INSERT INTO `users_areainfo` VALUES ('321084', '高邮市', '321000');
INSERT INTO `users_areainfo` VALUES ('321088', '江都市', '321000');
INSERT INTO `users_areainfo` VALUES ('321092', '经济开发区', '321000');
INSERT INTO `users_areainfo` VALUES ('321093', '其它区', '321000');
INSERT INTO `users_areainfo` VALUES ('321100', '镇江', '320000');
INSERT INTO `users_areainfo` VALUES ('321102', '京口区', '321100');
INSERT INTO `users_areainfo` VALUES ('321111', '润州区', '321100');
INSERT INTO `users_areainfo` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `users_areainfo` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `users_areainfo` VALUES ('321182', '扬中市', '321100');
INSERT INTO `users_areainfo` VALUES ('321183', '句容市', '321100');
INSERT INTO `users_areainfo` VALUES ('321184', '其它区', '321100');
INSERT INTO `users_areainfo` VALUES ('321200', '泰州', '320000');
INSERT INTO `users_areainfo` VALUES ('321202', '海陵区', '321200');
INSERT INTO `users_areainfo` VALUES ('321203', '高港区', '321200');
INSERT INTO `users_areainfo` VALUES ('321281', '兴化市', '321200');
INSERT INTO `users_areainfo` VALUES ('321282', '靖江市', '321200');
INSERT INTO `users_areainfo` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `users_areainfo` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `users_areainfo` VALUES ('321285', '其它区', '321200');
INSERT INTO `users_areainfo` VALUES ('321300', '宿迁', '320000');
INSERT INTO `users_areainfo` VALUES ('321302', '宿城区', '321300');
INSERT INTO `users_areainfo` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `users_areainfo` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `users_areainfo` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `users_areainfo` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `users_areainfo` VALUES ('321325', '其它区', '321300');
INSERT INTO `users_areainfo` VALUES ('330000', '浙江', '0');
INSERT INTO `users_areainfo` VALUES ('330100', '杭州', '330000');
INSERT INTO `users_areainfo` VALUES ('330102', '上城区', '330100');
INSERT INTO `users_areainfo` VALUES ('330103', '下城区', '330100');
INSERT INTO `users_areainfo` VALUES ('330104', '江干区', '330100');
INSERT INTO `users_areainfo` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `users_areainfo` VALUES ('330106', '西湖区', '330100');
INSERT INTO `users_areainfo` VALUES ('330108', '滨江区', '330100');
INSERT INTO `users_areainfo` VALUES ('330109', '萧山区', '330100');
INSERT INTO `users_areainfo` VALUES ('330110', '余杭区', '330100');
INSERT INTO `users_areainfo` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `users_areainfo` VALUES ('330127', '淳安县', '330100');
INSERT INTO `users_areainfo` VALUES ('330182', '建德市', '330100');
INSERT INTO `users_areainfo` VALUES ('330183', '富阳市', '330100');
INSERT INTO `users_areainfo` VALUES ('330185', '临安市', '330100');
INSERT INTO `users_areainfo` VALUES ('330186', '其它区', '330100');
INSERT INTO `users_areainfo` VALUES ('330200', '宁波', '330000');
INSERT INTO `users_areainfo` VALUES ('330203', '海曙区', '330200');
INSERT INTO `users_areainfo` VALUES ('330204', '江东区', '330200');
INSERT INTO `users_areainfo` VALUES ('330205', '江北区', '330200');
INSERT INTO `users_areainfo` VALUES ('330206', '北仑区', '330200');
INSERT INTO `users_areainfo` VALUES ('330211', '镇海区', '330200');
INSERT INTO `users_areainfo` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `users_areainfo` VALUES ('330225', '象山县', '330200');
INSERT INTO `users_areainfo` VALUES ('330226', '宁海县', '330200');
INSERT INTO `users_areainfo` VALUES ('330281', '余姚市', '330200');
INSERT INTO `users_areainfo` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `users_areainfo` VALUES ('330283', '奉化市', '330200');
INSERT INTO `users_areainfo` VALUES ('330284', '其它区', '330200');
INSERT INTO `users_areainfo` VALUES ('330300', '温州', '330000');
INSERT INTO `users_areainfo` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `users_areainfo` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `users_areainfo` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `users_areainfo` VALUES ('330322', '洞头县', '330300');
INSERT INTO `users_areainfo` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `users_areainfo` VALUES ('330326', '平阳县', '330300');
INSERT INTO `users_areainfo` VALUES ('330327', '苍南县', '330300');
INSERT INTO `users_areainfo` VALUES ('330328', '文成县', '330300');
INSERT INTO `users_areainfo` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `users_areainfo` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `users_areainfo` VALUES ('330382', '乐清市', '330300');
INSERT INTO `users_areainfo` VALUES ('330383', '其它区', '330300');
INSERT INTO `users_areainfo` VALUES ('330400', '嘉兴', '330000');
INSERT INTO `users_areainfo` VALUES ('330402', '南湖区', '330400');
INSERT INTO `users_areainfo` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `users_areainfo` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `users_areainfo` VALUES ('330424', '海盐县', '330400');
INSERT INTO `users_areainfo` VALUES ('330481', '海宁市', '330400');
INSERT INTO `users_areainfo` VALUES ('330482', '平湖市', '330400');
INSERT INTO `users_areainfo` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `users_areainfo` VALUES ('330484', '其它区', '330400');
INSERT INTO `users_areainfo` VALUES ('330500', '湖州', '330000');
INSERT INTO `users_areainfo` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `users_areainfo` VALUES ('330503', '南浔区', '330500');
INSERT INTO `users_areainfo` VALUES ('330521', '德清县', '330500');
INSERT INTO `users_areainfo` VALUES ('330522', '长兴县', '330500');
INSERT INTO `users_areainfo` VALUES ('330523', '安吉县', '330500');
INSERT INTO `users_areainfo` VALUES ('330524', '其它区', '330500');
INSERT INTO `users_areainfo` VALUES ('330600', '绍兴', '330000');
INSERT INTO `users_areainfo` VALUES ('330602', '越城区', '330600');
INSERT INTO `users_areainfo` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `users_areainfo` VALUES ('330624', '新昌县', '330600');
INSERT INTO `users_areainfo` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `users_areainfo` VALUES ('330682', '上虞市', '330600');
INSERT INTO `users_areainfo` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `users_areainfo` VALUES ('330684', '其它区', '330600');
INSERT INTO `users_areainfo` VALUES ('330700', '金华', '330000');
INSERT INTO `users_areainfo` VALUES ('330702', '婺城区', '330700');
INSERT INTO `users_areainfo` VALUES ('330703', '金东区', '330700');
INSERT INTO `users_areainfo` VALUES ('330723', '武义县', '330700');
INSERT INTO `users_areainfo` VALUES ('330726', '浦江县', '330700');
INSERT INTO `users_areainfo` VALUES ('330727', '磐安县', '330700');
INSERT INTO `users_areainfo` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `users_areainfo` VALUES ('330782', '义乌市', '330700');
INSERT INTO `users_areainfo` VALUES ('330783', '东阳市', '330700');
INSERT INTO `users_areainfo` VALUES ('330784', '永康市', '330700');
INSERT INTO `users_areainfo` VALUES ('330785', '其它区', '330700');
INSERT INTO `users_areainfo` VALUES ('330800', '衢州', '330000');
INSERT INTO `users_areainfo` VALUES ('330802', '柯城区', '330800');
INSERT INTO `users_areainfo` VALUES ('330803', '衢江区', '330800');
INSERT INTO `users_areainfo` VALUES ('330822', '常山县', '330800');
INSERT INTO `users_areainfo` VALUES ('330824', '开化县', '330800');
INSERT INTO `users_areainfo` VALUES ('330825', '龙游县', '330800');
INSERT INTO `users_areainfo` VALUES ('330881', '江山市', '330800');
INSERT INTO `users_areainfo` VALUES ('330882', '其它区', '330800');
INSERT INTO `users_areainfo` VALUES ('330900', '舟山', '330000');
INSERT INTO `users_areainfo` VALUES ('330902', '定海区', '330900');
INSERT INTO `users_areainfo` VALUES ('330903', '普陀区', '330900');
INSERT INTO `users_areainfo` VALUES ('330921', '岱山县', '330900');
INSERT INTO `users_areainfo` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `users_areainfo` VALUES ('330923', '其它区', '330900');
INSERT INTO `users_areainfo` VALUES ('331000', '台州', '330000');
INSERT INTO `users_areainfo` VALUES ('331002', '椒江区', '331000');
INSERT INTO `users_areainfo` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `users_areainfo` VALUES ('331004', '路桥区', '331000');
INSERT INTO `users_areainfo` VALUES ('331021', '玉环县', '331000');
INSERT INTO `users_areainfo` VALUES ('331022', '三门县', '331000');
INSERT INTO `users_areainfo` VALUES ('331023', '天台县', '331000');
INSERT INTO `users_areainfo` VALUES ('331024', '仙居县', '331000');
INSERT INTO `users_areainfo` VALUES ('331081', '温岭市', '331000');
INSERT INTO `users_areainfo` VALUES ('331082', '临海市', '331000');
INSERT INTO `users_areainfo` VALUES ('331083', '其它区', '331000');
INSERT INTO `users_areainfo` VALUES ('331100', '丽水', '330000');
INSERT INTO `users_areainfo` VALUES ('331102', '莲都区', '331100');
INSERT INTO `users_areainfo` VALUES ('331121', '青田县', '331100');
INSERT INTO `users_areainfo` VALUES ('331122', '缙云县', '331100');
INSERT INTO `users_areainfo` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `users_areainfo` VALUES ('331124', '松阳县', '331100');
INSERT INTO `users_areainfo` VALUES ('331125', '云和县', '331100');
INSERT INTO `users_areainfo` VALUES ('331126', '庆元县', '331100');
INSERT INTO `users_areainfo` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `users_areainfo` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `users_areainfo` VALUES ('331182', '其它区', '331100');
INSERT INTO `users_areainfo` VALUES ('340000', '安徽', '0');
INSERT INTO `users_areainfo` VALUES ('340100', '合肥', '340000');
INSERT INTO `users_areainfo` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `users_areainfo` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `users_areainfo` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `users_areainfo` VALUES ('340111', '包河区', '340100');
INSERT INTO `users_areainfo` VALUES ('340121', '长丰县', '340100');
INSERT INTO `users_areainfo` VALUES ('340122', '肥东县', '340100');
INSERT INTO `users_areainfo` VALUES ('340123', '肥西县', '340100');
INSERT INTO `users_areainfo` VALUES ('340151', '高新区', '340100');
INSERT INTO `users_areainfo` VALUES ('340191', '中区', '340100');
INSERT INTO `users_areainfo` VALUES ('340192', '其它区', '340100');
INSERT INTO `users_areainfo` VALUES ('340200', '芜湖', '340000');
INSERT INTO `users_areainfo` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `users_areainfo` VALUES ('340203', '弋江区', '340200');
INSERT INTO `users_areainfo` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `users_areainfo` VALUES ('340208', '三山区', '340200');
INSERT INTO `users_areainfo` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `users_areainfo` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `users_areainfo` VALUES ('340223', '南陵县', '340200');
INSERT INTO `users_areainfo` VALUES ('340224', '其它区', '340200');
INSERT INTO `users_areainfo` VALUES ('340300', '蚌埠', '340000');
INSERT INTO `users_areainfo` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `users_areainfo` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `users_areainfo` VALUES ('340304', '禹会区', '340300');
INSERT INTO `users_areainfo` VALUES ('340311', '淮上区', '340300');
INSERT INTO `users_areainfo` VALUES ('340321', '怀远县', '340300');
INSERT INTO `users_areainfo` VALUES ('340322', '五河县', '340300');
INSERT INTO `users_areainfo` VALUES ('340323', '固镇县', '340300');
INSERT INTO `users_areainfo` VALUES ('340324', '其它区', '340300');
INSERT INTO `users_areainfo` VALUES ('340400', '淮南', '340000');
INSERT INTO `users_areainfo` VALUES ('340402', '大通区', '340400');
INSERT INTO `users_areainfo` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `users_areainfo` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `users_areainfo` VALUES ('340405', '八公山区', '340400');
INSERT INTO `users_areainfo` VALUES ('340406', '潘集区', '340400');
INSERT INTO `users_areainfo` VALUES ('340421', '凤台县', '340400');
INSERT INTO `users_areainfo` VALUES ('340422', '其它区', '340400');
INSERT INTO `users_areainfo` VALUES ('340500', '马鞍山', '340000');
INSERT INTO `users_areainfo` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `users_areainfo` VALUES ('340503', '花山区', '340500');
INSERT INTO `users_areainfo` VALUES ('340504', '雨山区', '340500');
INSERT INTO `users_areainfo` VALUES ('340521', '当涂县', '340500');
INSERT INTO `users_areainfo` VALUES ('340522', '其它区', '340500');
INSERT INTO `users_areainfo` VALUES ('340600', '淮北', '340000');
INSERT INTO `users_areainfo` VALUES ('340602', '杜集区', '340600');
INSERT INTO `users_areainfo` VALUES ('340603', '相山区', '340600');
INSERT INTO `users_areainfo` VALUES ('340604', '烈山区', '340600');
INSERT INTO `users_areainfo` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `users_areainfo` VALUES ('340622', '其它区', '340600');
INSERT INTO `users_areainfo` VALUES ('340700', '铜陵', '340000');
INSERT INTO `users_areainfo` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `users_areainfo` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `users_areainfo` VALUES ('340711', '郊区', '340700');
INSERT INTO `users_areainfo` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `users_areainfo` VALUES ('340722', '其它区', '340700');
INSERT INTO `users_areainfo` VALUES ('340800', '安庆', '340000');
INSERT INTO `users_areainfo` VALUES ('340802', '迎江区', '340800');
INSERT INTO `users_areainfo` VALUES ('340803', '大观区', '340800');
INSERT INTO `users_areainfo` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `users_areainfo` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `users_areainfo` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `users_areainfo` VALUES ('340824', '潜山县', '340800');
INSERT INTO `users_areainfo` VALUES ('340825', '太湖县', '340800');
INSERT INTO `users_areainfo` VALUES ('340826', '宿松县', '340800');
INSERT INTO `users_areainfo` VALUES ('340827', '望江县', '340800');
INSERT INTO `users_areainfo` VALUES ('340828', '岳西县', '340800');
INSERT INTO `users_areainfo` VALUES ('340881', '桐城市', '340800');
INSERT INTO `users_areainfo` VALUES ('340882', '其它区', '340800');
INSERT INTO `users_areainfo` VALUES ('341000', '黄山', '340000');
INSERT INTO `users_areainfo` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `users_areainfo` VALUES ('341003', '黄山区', '341000');
INSERT INTO `users_areainfo` VALUES ('341004', '徽州区', '341000');
INSERT INTO `users_areainfo` VALUES ('341021', '歙县', '341000');
INSERT INTO `users_areainfo` VALUES ('341022', '休宁县', '341000');
INSERT INTO `users_areainfo` VALUES ('341023', '黟县', '341000');
INSERT INTO `users_areainfo` VALUES ('341024', '祁门县', '341000');
INSERT INTO `users_areainfo` VALUES ('341025', '其它区', '341000');
INSERT INTO `users_areainfo` VALUES ('341100', '滁州', '340000');
INSERT INTO `users_areainfo` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `users_areainfo` VALUES ('341103', '南谯区', '341100');
INSERT INTO `users_areainfo` VALUES ('341122', '来安县', '341100');
INSERT INTO `users_areainfo` VALUES ('341124', '全椒县', '341100');
INSERT INTO `users_areainfo` VALUES ('341125', '定远县', '341100');
INSERT INTO `users_areainfo` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `users_areainfo` VALUES ('341181', '天长市', '341100');
INSERT INTO `users_areainfo` VALUES ('341182', '明光市', '341100');
INSERT INTO `users_areainfo` VALUES ('341183', '其它区', '341100');
INSERT INTO `users_areainfo` VALUES ('341200', '阜阳', '340000');
INSERT INTO `users_areainfo` VALUES ('341202', '颍州区', '341200');
INSERT INTO `users_areainfo` VALUES ('341203', '颍东区', '341200');
INSERT INTO `users_areainfo` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `users_areainfo` VALUES ('341221', '临泉县', '341200');
INSERT INTO `users_areainfo` VALUES ('341222', '太和县', '341200');
INSERT INTO `users_areainfo` VALUES ('341225', '阜南县', '341200');
INSERT INTO `users_areainfo` VALUES ('341226', '颍上县', '341200');
INSERT INTO `users_areainfo` VALUES ('341282', '界首市', '341200');
INSERT INTO `users_areainfo` VALUES ('341283', '其它区', '341200');
INSERT INTO `users_areainfo` VALUES ('341300', '宿州', '340000');
INSERT INTO `users_areainfo` VALUES ('341302', '埇桥区', '341300');
INSERT INTO `users_areainfo` VALUES ('341321', '砀山县', '341300');
INSERT INTO `users_areainfo` VALUES ('341322', '萧县', '341300');
INSERT INTO `users_areainfo` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `users_areainfo` VALUES ('341324', '泗县', '341300');
INSERT INTO `users_areainfo` VALUES ('341325', '其它区', '341300');
INSERT INTO `users_areainfo` VALUES ('341400', '巢湖', '340000');
INSERT INTO `users_areainfo` VALUES ('341402', '居巢区', '341400');
INSERT INTO `users_areainfo` VALUES ('341421', '庐江县', '341400');
INSERT INTO `users_areainfo` VALUES ('341422', '无为县', '341400');
INSERT INTO `users_areainfo` VALUES ('341423', '含山县', '341400');
INSERT INTO `users_areainfo` VALUES ('341424', '和县', '341400');
INSERT INTO `users_areainfo` VALUES ('341425', '其它区', '341400');
INSERT INTO `users_areainfo` VALUES ('341500', '六安', '340000');
INSERT INTO `users_areainfo` VALUES ('341502', '金安区', '341500');
INSERT INTO `users_areainfo` VALUES ('341503', '裕安区', '341500');
INSERT INTO `users_areainfo` VALUES ('341521', '寿县', '341500');
INSERT INTO `users_areainfo` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `users_areainfo` VALUES ('341523', '舒城县', '341500');
INSERT INTO `users_areainfo` VALUES ('341524', '金寨县', '341500');
INSERT INTO `users_areainfo` VALUES ('341525', '霍山县', '341500');
INSERT INTO `users_areainfo` VALUES ('341526', '其它区', '341500');
INSERT INTO `users_areainfo` VALUES ('341600', '亳州', '340000');
INSERT INTO `users_areainfo` VALUES ('341602', '谯城区', '341600');
INSERT INTO `users_areainfo` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `users_areainfo` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `users_areainfo` VALUES ('341623', '利辛县', '341600');
INSERT INTO `users_areainfo` VALUES ('341624', '其它区', '341600');
INSERT INTO `users_areainfo` VALUES ('341700', '池州', '340000');
INSERT INTO `users_areainfo` VALUES ('341702', '贵池区', '341700');
INSERT INTO `users_areainfo` VALUES ('341721', '东至县', '341700');
INSERT INTO `users_areainfo` VALUES ('341722', '石台县', '341700');
INSERT INTO `users_areainfo` VALUES ('341723', '青阳县', '341700');
INSERT INTO `users_areainfo` VALUES ('341724', '其它区', '341700');
INSERT INTO `users_areainfo` VALUES ('341800', '宣城', '340000');
INSERT INTO `users_areainfo` VALUES ('341802', '宣州区', '341800');
INSERT INTO `users_areainfo` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `users_areainfo` VALUES ('341822', '广德县', '341800');
INSERT INTO `users_areainfo` VALUES ('341823', '泾县', '341800');
INSERT INTO `users_areainfo` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `users_areainfo` VALUES ('341825', '旌德县', '341800');
INSERT INTO `users_areainfo` VALUES ('341881', '宁国市', '341800');
INSERT INTO `users_areainfo` VALUES ('341882', '其它区', '341800');
INSERT INTO `users_areainfo` VALUES ('350000', '福建', '0');
INSERT INTO `users_areainfo` VALUES ('350100', '福州', '350000');
INSERT INTO `users_areainfo` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `users_areainfo` VALUES ('350103', '台江区', '350100');
INSERT INTO `users_areainfo` VALUES ('350104', '仓山区', '350100');
INSERT INTO `users_areainfo` VALUES ('350105', '马尾区', '350100');
INSERT INTO `users_areainfo` VALUES ('350111', '晋安区', '350100');
INSERT INTO `users_areainfo` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `users_areainfo` VALUES ('350122', '连江县', '350100');
INSERT INTO `users_areainfo` VALUES ('350123', '罗源县', '350100');
INSERT INTO `users_areainfo` VALUES ('350124', '闽清县', '350100');
INSERT INTO `users_areainfo` VALUES ('350125', '永泰县', '350100');
INSERT INTO `users_areainfo` VALUES ('350128', '平潭县', '350100');
INSERT INTO `users_areainfo` VALUES ('350181', '福清市', '350100');
INSERT INTO `users_areainfo` VALUES ('350182', '长乐市', '350100');
INSERT INTO `users_areainfo` VALUES ('350183', '其它区', '350100');
INSERT INTO `users_areainfo` VALUES ('350200', '厦门', '350000');
INSERT INTO `users_areainfo` VALUES ('350203', '思明区', '350200');
INSERT INTO `users_areainfo` VALUES ('350205', '海沧区', '350200');
INSERT INTO `users_areainfo` VALUES ('350206', '湖里区', '350200');
INSERT INTO `users_areainfo` VALUES ('350211', '集美区', '350200');
INSERT INTO `users_areainfo` VALUES ('350212', '同安区', '350200');
INSERT INTO `users_areainfo` VALUES ('350213', '翔安区', '350200');
INSERT INTO `users_areainfo` VALUES ('350214', '其它区', '350200');
INSERT INTO `users_areainfo` VALUES ('350300', '莆田', '350000');
INSERT INTO `users_areainfo` VALUES ('350302', '城厢区', '350300');
INSERT INTO `users_areainfo` VALUES ('350303', '涵江区', '350300');
INSERT INTO `users_areainfo` VALUES ('350304', '荔城区', '350300');
INSERT INTO `users_areainfo` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `users_areainfo` VALUES ('350322', '仙游县', '350300');
INSERT INTO `users_areainfo` VALUES ('350323', '其它区', '350300');
INSERT INTO `users_areainfo` VALUES ('350400', '三明', '350000');
INSERT INTO `users_areainfo` VALUES ('350402', '梅列区', '350400');
INSERT INTO `users_areainfo` VALUES ('350403', '三元区', '350400');
INSERT INTO `users_areainfo` VALUES ('350421', '明溪县', '350400');
INSERT INTO `users_areainfo` VALUES ('350423', '清流县', '350400');
INSERT INTO `users_areainfo` VALUES ('350424', '宁化县', '350400');
INSERT INTO `users_areainfo` VALUES ('350425', '大田县', '350400');
INSERT INTO `users_areainfo` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `users_areainfo` VALUES ('350427', '沙县', '350400');
INSERT INTO `users_areainfo` VALUES ('350428', '将乐县', '350400');
INSERT INTO `users_areainfo` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `users_areainfo` VALUES ('350430', '建宁县', '350400');
INSERT INTO `users_areainfo` VALUES ('350481', '永安市', '350400');
INSERT INTO `users_areainfo` VALUES ('350482', '其它区', '350400');
INSERT INTO `users_areainfo` VALUES ('350500', '泉州', '350000');
INSERT INTO `users_areainfo` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `users_areainfo` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `users_areainfo` VALUES ('350504', '洛江区', '350500');
INSERT INTO `users_areainfo` VALUES ('350505', '泉港区', '350500');
INSERT INTO `users_areainfo` VALUES ('350521', '惠安县', '350500');
INSERT INTO `users_areainfo` VALUES ('350524', '安溪县', '350500');
INSERT INTO `users_areainfo` VALUES ('350525', '永春县', '350500');
INSERT INTO `users_areainfo` VALUES ('350526', '德化县', '350500');
INSERT INTO `users_areainfo` VALUES ('350527', '金门县', '350500');
INSERT INTO `users_areainfo` VALUES ('350581', '石狮市', '350500');
INSERT INTO `users_areainfo` VALUES ('350582', '晋江市', '350500');
INSERT INTO `users_areainfo` VALUES ('350583', '南安市', '350500');
INSERT INTO `users_areainfo` VALUES ('350584', '其它区', '350500');
INSERT INTO `users_areainfo` VALUES ('350600', '漳州', '350000');
INSERT INTO `users_areainfo` VALUES ('350602', '芗城区', '350600');
INSERT INTO `users_areainfo` VALUES ('350603', '龙文区', '350600');
INSERT INTO `users_areainfo` VALUES ('350622', '云霄县', '350600');
INSERT INTO `users_areainfo` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `users_areainfo` VALUES ('350624', '诏安县', '350600');
INSERT INTO `users_areainfo` VALUES ('350625', '长泰县', '350600');
INSERT INTO `users_areainfo` VALUES ('350626', '东山县', '350600');
INSERT INTO `users_areainfo` VALUES ('350627', '南靖县', '350600');
INSERT INTO `users_areainfo` VALUES ('350628', '平和县', '350600');
INSERT INTO `users_areainfo` VALUES ('350629', '华安县', '350600');
INSERT INTO `users_areainfo` VALUES ('350681', '龙海市', '350600');
INSERT INTO `users_areainfo` VALUES ('350682', '其它区', '350600');
INSERT INTO `users_areainfo` VALUES ('350700', '南平', '350000');
INSERT INTO `users_areainfo` VALUES ('350702', '延平区', '350700');
INSERT INTO `users_areainfo` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `users_areainfo` VALUES ('350722', '浦城县', '350700');
INSERT INTO `users_areainfo` VALUES ('350723', '光泽县', '350700');
INSERT INTO `users_areainfo` VALUES ('350724', '松溪县', '350700');
INSERT INTO `users_areainfo` VALUES ('350725', '政和县', '350700');
INSERT INTO `users_areainfo` VALUES ('350781', '邵武市', '350700');
INSERT INTO `users_areainfo` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `users_areainfo` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `users_areainfo` VALUES ('350784', '建阳市', '350700');
INSERT INTO `users_areainfo` VALUES ('350785', '其它区', '350700');
INSERT INTO `users_areainfo` VALUES ('350800', '龙岩', '350000');
INSERT INTO `users_areainfo` VALUES ('350802', '新罗区', '350800');
INSERT INTO `users_areainfo` VALUES ('350821', '长汀县', '350800');
INSERT INTO `users_areainfo` VALUES ('350822', '永定县', '350800');
INSERT INTO `users_areainfo` VALUES ('350823', '上杭县', '350800');
INSERT INTO `users_areainfo` VALUES ('350824', '武平县', '350800');
INSERT INTO `users_areainfo` VALUES ('350825', '连城县', '350800');
INSERT INTO `users_areainfo` VALUES ('350881', '漳平市', '350800');
INSERT INTO `users_areainfo` VALUES ('350882', '其它区', '350800');
INSERT INTO `users_areainfo` VALUES ('350900', '宁德', '350000');
INSERT INTO `users_areainfo` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `users_areainfo` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `users_areainfo` VALUES ('350922', '古田县', '350900');
INSERT INTO `users_areainfo` VALUES ('350923', '屏南县', '350900');
INSERT INTO `users_areainfo` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `users_areainfo` VALUES ('350925', '周宁县', '350900');
INSERT INTO `users_areainfo` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `users_areainfo` VALUES ('350981', '福安市', '350900');
INSERT INTO `users_areainfo` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `users_areainfo` VALUES ('350983', '其它区', '350900');
INSERT INTO `users_areainfo` VALUES ('360000', '江西', '0');
INSERT INTO `users_areainfo` VALUES ('360100', '南昌', '360000');
INSERT INTO `users_areainfo` VALUES ('360102', '东湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360103', '西湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `users_areainfo` VALUES ('360105', '湾里区', '360100');
INSERT INTO `users_areainfo` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `users_areainfo` VALUES ('360121', '南昌县', '360100');
INSERT INTO `users_areainfo` VALUES ('360122', '新建县', '360100');
INSERT INTO `users_areainfo` VALUES ('360123', '安义县', '360100');
INSERT INTO `users_areainfo` VALUES ('360124', '进贤县', '360100');
INSERT INTO `users_areainfo` VALUES ('360125', '红谷滩新区', '360100');
INSERT INTO `users_areainfo` VALUES ('360126', '经济技术开发区', '360100');
INSERT INTO `users_areainfo` VALUES ('360127', '昌北区', '360100');
INSERT INTO `users_areainfo` VALUES ('360128', '其它区', '360100');
INSERT INTO `users_areainfo` VALUES ('360200', '景德镇', '360000');
INSERT INTO `users_areainfo` VALUES ('360202', '昌江区', '360200');
INSERT INTO `users_areainfo` VALUES ('360203', '珠山区', '360200');
INSERT INTO `users_areainfo` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `users_areainfo` VALUES ('360281', '乐平市', '360200');
INSERT INTO `users_areainfo` VALUES ('360282', '其它区', '360200');
INSERT INTO `users_areainfo` VALUES ('360300', '萍乡', '360000');
INSERT INTO `users_areainfo` VALUES ('360302', '安源区', '360300');
INSERT INTO `users_areainfo` VALUES ('360313', '湘东区', '360300');
INSERT INTO `users_areainfo` VALUES ('360321', '莲花县', '360300');
INSERT INTO `users_areainfo` VALUES ('360322', '上栗县', '360300');
INSERT INTO `users_areainfo` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `users_areainfo` VALUES ('360324', '其它区', '360300');
INSERT INTO `users_areainfo` VALUES ('360400', '九江', '360000');
INSERT INTO `users_areainfo` VALUES ('360402', '庐山区', '360400');
INSERT INTO `users_areainfo` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `users_areainfo` VALUES ('360421', '九江县', '360400');
INSERT INTO `users_areainfo` VALUES ('360423', '武宁县', '360400');
INSERT INTO `users_areainfo` VALUES ('360424', '修水县', '360400');
INSERT INTO `users_areainfo` VALUES ('360425', '永修县', '360400');
INSERT INTO `users_areainfo` VALUES ('360426', '德安县', '360400');
INSERT INTO `users_areainfo` VALUES ('360427', '星子县', '360400');
INSERT INTO `users_areainfo` VALUES ('360428', '都昌县', '360400');
INSERT INTO `users_areainfo` VALUES ('360429', '湖口县', '360400');
INSERT INTO `users_areainfo` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `users_areainfo` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `users_areainfo` VALUES ('360482', '其它区', '360400');
INSERT INTO `users_areainfo` VALUES ('360500', '新余', '360000');
INSERT INTO `users_areainfo` VALUES ('360502', '渝水区', '360500');
INSERT INTO `users_areainfo` VALUES ('360521', '分宜县', '360500');
INSERT INTO `users_areainfo` VALUES ('360522', '其它区', '360500');
INSERT INTO `users_areainfo` VALUES ('360600', '鹰潭', '360000');
INSERT INTO `users_areainfo` VALUES ('360602', '月湖区', '360600');
INSERT INTO `users_areainfo` VALUES ('360622', '余江县', '360600');
INSERT INTO `users_areainfo` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `users_areainfo` VALUES ('360682', '其它区', '360600');
INSERT INTO `users_areainfo` VALUES ('360700', '赣州', '360000');
INSERT INTO `users_areainfo` VALUES ('360702', '章贡区', '360700');
INSERT INTO `users_areainfo` VALUES ('360721', '赣县', '360700');
INSERT INTO `users_areainfo` VALUES ('360722', '信丰县', '360700');
INSERT INTO `users_areainfo` VALUES ('360723', '大余县', '360700');
INSERT INTO `users_areainfo` VALUES ('360724', '上犹县', '360700');
INSERT INTO `users_areainfo` VALUES ('360725', '崇义县', '360700');
INSERT INTO `users_areainfo` VALUES ('360726', '安远县', '360700');
INSERT INTO `users_areainfo` VALUES ('360727', '龙南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360728', '定南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360729', '全南县', '360700');
INSERT INTO `users_areainfo` VALUES ('360730', '宁都县', '360700');
INSERT INTO `users_areainfo` VALUES ('360731', '于都县', '360700');
INSERT INTO `users_areainfo` VALUES ('360732', '兴国县', '360700');
INSERT INTO `users_areainfo` VALUES ('360733', '会昌县', '360700');
INSERT INTO `users_areainfo` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `users_areainfo` VALUES ('360735', '石城县', '360700');
INSERT INTO `users_areainfo` VALUES ('360751', '黄金区', '360700');
INSERT INTO `users_areainfo` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `users_areainfo` VALUES ('360782', '南康市', '360700');
INSERT INTO `users_areainfo` VALUES ('360783', '其它区', '360700');
INSERT INTO `users_areainfo` VALUES ('360800', '吉安', '360000');
INSERT INTO `users_areainfo` VALUES ('360802', '吉州区', '360800');
INSERT INTO `users_areainfo` VALUES ('360803', '青原区', '360800');
INSERT INTO `users_areainfo` VALUES ('360821', '吉安县', '360800');
INSERT INTO `users_areainfo` VALUES ('360822', '吉水县', '360800');
INSERT INTO `users_areainfo` VALUES ('360823', '峡江县', '360800');
INSERT INTO `users_areainfo` VALUES ('360824', '新干县', '360800');
INSERT INTO `users_areainfo` VALUES ('360825', '永丰县', '360800');
INSERT INTO `users_areainfo` VALUES ('360826', '泰和县', '360800');
INSERT INTO `users_areainfo` VALUES ('360827', '遂川县', '360800');
INSERT INTO `users_areainfo` VALUES ('360828', '万安县', '360800');
INSERT INTO `users_areainfo` VALUES ('360829', '安福县', '360800');
INSERT INTO `users_areainfo` VALUES ('360830', '永新县', '360800');
INSERT INTO `users_areainfo` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `users_areainfo` VALUES ('360882', '其它区', '360800');
INSERT INTO `users_areainfo` VALUES ('360900', '宜春', '360000');
INSERT INTO `users_areainfo` VALUES ('360902', '袁州区', '360900');
INSERT INTO `users_areainfo` VALUES ('360921', '奉新县', '360900');
INSERT INTO `users_areainfo` VALUES ('360922', '万载县', '360900');
INSERT INTO `users_areainfo` VALUES ('360923', '上高县', '360900');
INSERT INTO `users_areainfo` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `users_areainfo` VALUES ('360925', '靖安县', '360900');
INSERT INTO `users_areainfo` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `users_areainfo` VALUES ('360981', '丰城市', '360900');
INSERT INTO `users_areainfo` VALUES ('360982', '樟树市', '360900');
INSERT INTO `users_areainfo` VALUES ('360983', '高安市', '360900');
INSERT INTO `users_areainfo` VALUES ('360984', '其它区', '360900');
INSERT INTO `users_areainfo` VALUES ('361000', '抚州', '360000');
INSERT INTO `users_areainfo` VALUES ('361002', '临川区', '361000');
INSERT INTO `users_areainfo` VALUES ('361021', '南城县', '361000');
INSERT INTO `users_areainfo` VALUES ('361022', '黎川县', '361000');
INSERT INTO `users_areainfo` VALUES ('361023', '南丰县', '361000');
INSERT INTO `users_areainfo` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `users_areainfo` VALUES ('361025', '乐安县', '361000');
INSERT INTO `users_areainfo` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `users_areainfo` VALUES ('361027', '金溪县', '361000');
INSERT INTO `users_areainfo` VALUES ('361028', '资溪县', '361000');
INSERT INTO `users_areainfo` VALUES ('361029', '东乡县', '361000');
INSERT INTO `users_areainfo` VALUES ('361030', '广昌县', '361000');
INSERT INTO `users_areainfo` VALUES ('361031', '其它区', '361000');
INSERT INTO `users_areainfo` VALUES ('361100', '上饶', '360000');
INSERT INTO `users_areainfo` VALUES ('361102', '信州区', '361100');
INSERT INTO `users_areainfo` VALUES ('361121', '上饶县', '361100');
INSERT INTO `users_areainfo` VALUES ('361122', '广丰县', '361100');
INSERT INTO `users_areainfo` VALUES ('361123', '玉山县', '361100');
INSERT INTO `users_areainfo` VALUES ('361124', '铅山县', '361100');
INSERT INTO `users_areainfo` VALUES ('361125', '横峰县', '361100');
INSERT INTO `users_areainfo` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `users_areainfo` VALUES ('361127', '余干县', '361100');
INSERT INTO `users_areainfo` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `users_areainfo` VALUES ('361129', '万年县', '361100');
INSERT INTO `users_areainfo` VALUES ('361130', '婺源县', '361100');
INSERT INTO `users_areainfo` VALUES ('361181', '德兴市', '361100');
INSERT INTO `users_areainfo` VALUES ('361182', '其它区', '361100');
INSERT INTO `users_areainfo` VALUES ('370000', '山东', '0');
INSERT INTO `users_areainfo` VALUES ('370100', '济南', '370000');
INSERT INTO `users_areainfo` VALUES ('370102', '历下区', '370100');
INSERT INTO `users_areainfo` VALUES ('370103', '市中区', '370100');
INSERT INTO `users_areainfo` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `users_areainfo` VALUES ('370105', '天桥区', '370100');
INSERT INTO `users_areainfo` VALUES ('370112', '历城区', '370100');
INSERT INTO `users_areainfo` VALUES ('370113', '长清区', '370100');
INSERT INTO `users_areainfo` VALUES ('370124', '平阴县', '370100');
INSERT INTO `users_areainfo` VALUES ('370125', '济阳县', '370100');
INSERT INTO `users_areainfo` VALUES ('370126', '商河县', '370100');
INSERT INTO `users_areainfo` VALUES ('370181', '章丘市', '370100');
INSERT INTO `users_areainfo` VALUES ('370182', '其它区', '370100');
INSERT INTO `users_areainfo` VALUES ('370200', '青岛', '370000');
INSERT INTO `users_areainfo` VALUES ('370202', '市南区', '370200');
INSERT INTO `users_areainfo` VALUES ('370203', '市北区', '370200');
INSERT INTO `users_areainfo` VALUES ('370205', '四方区', '370200');
INSERT INTO `users_areainfo` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `users_areainfo` VALUES ('370212', '崂山区', '370200');
INSERT INTO `users_areainfo` VALUES ('370213', '李沧区', '370200');
INSERT INTO `users_areainfo` VALUES ('370214', '城阳区', '370200');
INSERT INTO `users_areainfo` VALUES ('370251', '开发区', '370200');
INSERT INTO `users_areainfo` VALUES ('370281', '胶州市', '370200');
INSERT INTO `users_areainfo` VALUES ('370282', '即墨市', '370200');
INSERT INTO `users_areainfo` VALUES ('370283', '平度市', '370200');
INSERT INTO `users_areainfo` VALUES ('370284', '胶南市', '370200');
INSERT INTO `users_areainfo` VALUES ('370285', '莱西市', '370200');
INSERT INTO `users_areainfo` VALUES ('370286', '其它区', '370200');
INSERT INTO `users_areainfo` VALUES ('370300', '淄博', '370000');
INSERT INTO `users_areainfo` VALUES ('370302', '淄川区', '370300');
INSERT INTO `users_areainfo` VALUES ('370303', '张店区', '370300');
INSERT INTO `users_areainfo` VALUES ('370304', '博山区', '370300');
INSERT INTO `users_areainfo` VALUES ('370305', '临淄区', '370300');
INSERT INTO `users_areainfo` VALUES ('370306', '周村区', '370300');
INSERT INTO `users_areainfo` VALUES ('370321', '桓台县', '370300');
INSERT INTO `users_areainfo` VALUES ('370322', '高青县', '370300');
INSERT INTO `users_areainfo` VALUES ('370323', '沂源县', '370300');
INSERT INTO `users_areainfo` VALUES ('370324', '其它区', '370300');
INSERT INTO `users_areainfo` VALUES ('370400', '枣庄', '370000');
INSERT INTO `users_areainfo` VALUES ('370402', '市中区', '370400');
INSERT INTO `users_areainfo` VALUES ('370403', '薛城区', '370400');
INSERT INTO `users_areainfo` VALUES ('370404', '峄城区', '370400');
INSERT INTO `users_areainfo` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `users_areainfo` VALUES ('370406', '山亭区', '370400');
INSERT INTO `users_areainfo` VALUES ('370481', '滕州市', '370400');
INSERT INTO `users_areainfo` VALUES ('370482', '其它区', '370400');
INSERT INTO `users_areainfo` VALUES ('370500', '东营', '370000');
INSERT INTO `users_areainfo` VALUES ('370502', '东营区', '370500');
INSERT INTO `users_areainfo` VALUES ('370503', '河口区', '370500');
INSERT INTO `users_areainfo` VALUES ('370521', '垦利县', '370500');
INSERT INTO `users_areainfo` VALUES ('370522', '利津县', '370500');
INSERT INTO `users_areainfo` VALUES ('370523', '广饶县', '370500');
INSERT INTO `users_areainfo` VALUES ('370589', '西城区', '370500');
INSERT INTO `users_areainfo` VALUES ('370590', '东城区', '370500');
INSERT INTO `users_areainfo` VALUES ('370591', '其它区', '370500');
INSERT INTO `users_areainfo` VALUES ('370600', '烟台', '370000');
INSERT INTO `users_areainfo` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `users_areainfo` VALUES ('370611', '福山区', '370600');
INSERT INTO `users_areainfo` VALUES ('370612', '牟平区', '370600');
INSERT INTO `users_areainfo` VALUES ('370613', '莱山区', '370600');
INSERT INTO `users_areainfo` VALUES ('370634', '长岛县', '370600');
INSERT INTO `users_areainfo` VALUES ('370681', '龙口市', '370600');
INSERT INTO `users_areainfo` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `users_areainfo` VALUES ('370683', '莱州市', '370600');
INSERT INTO `users_areainfo` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `users_areainfo` VALUES ('370685', '招远市', '370600');
INSERT INTO `users_areainfo` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `users_areainfo` VALUES ('370687', '海阳市', '370600');
INSERT INTO `users_areainfo` VALUES ('370688', '其它区', '370600');
INSERT INTO `users_areainfo` VALUES ('370700', '潍坊', '370000');
INSERT INTO `users_areainfo` VALUES ('370702', '潍城区', '370700');
INSERT INTO `users_areainfo` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `users_areainfo` VALUES ('370704', '坊子区', '370700');
INSERT INTO `users_areainfo` VALUES ('370705', '奎文区', '370700');
INSERT INTO `users_areainfo` VALUES ('370724', '临朐县', '370700');
INSERT INTO `users_areainfo` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `users_areainfo` VALUES ('370751', '开发区', '370700');
INSERT INTO `users_areainfo` VALUES ('370781', '青州市', '370700');
INSERT INTO `users_areainfo` VALUES ('370782', '诸城市', '370700');
INSERT INTO `users_areainfo` VALUES ('370783', '寿光市', '370700');
INSERT INTO `users_areainfo` VALUES ('370784', '安丘市', '370700');
INSERT INTO `users_areainfo` VALUES ('370785', '高密市', '370700');
INSERT INTO `users_areainfo` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `users_areainfo` VALUES ('370787', '其它区', '370700');
INSERT INTO `users_areainfo` VALUES ('370800', '济宁', '370000');
INSERT INTO `users_areainfo` VALUES ('370802', '市中区', '370800');
INSERT INTO `users_areainfo` VALUES ('370811', '任城区', '370800');
INSERT INTO `users_areainfo` VALUES ('370826', '微山县', '370800');
INSERT INTO `users_areainfo` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `users_areainfo` VALUES ('370828', '金乡县', '370800');
INSERT INTO `users_areainfo` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `users_areainfo` VALUES ('370830', '汶上县', '370800');
INSERT INTO `users_areainfo` VALUES ('370831', '泗水县', '370800');
INSERT INTO `users_areainfo` VALUES ('370832', '梁山县', '370800');
INSERT INTO `users_areainfo` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `users_areainfo` VALUES ('370882', '兖州市', '370800');
INSERT INTO `users_areainfo` VALUES ('370883', '邹城市', '370800');
INSERT INTO `users_areainfo` VALUES ('370884', '其它区', '370800');
INSERT INTO `users_areainfo` VALUES ('370900', '泰安', '370000');
INSERT INTO `users_areainfo` VALUES ('370902', '泰山区', '370900');
INSERT INTO `users_areainfo` VALUES ('370903', '岱岳区', '370900');
INSERT INTO `users_areainfo` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `users_areainfo` VALUES ('370923', '东平县', '370900');
INSERT INTO `users_areainfo` VALUES ('370982', '新泰市', '370900');
INSERT INTO `users_areainfo` VALUES ('370983', '肥城市', '370900');
INSERT INTO `users_areainfo` VALUES ('370984', '其它区', '370900');
INSERT INTO `users_areainfo` VALUES ('371000', '威海', '370000');
INSERT INTO `users_areainfo` VALUES ('371002', '环翠区', '371000');
INSERT INTO `users_areainfo` VALUES ('371081', '文登市', '371000');
INSERT INTO `users_areainfo` VALUES ('371082', '荣成市', '371000');
INSERT INTO `users_areainfo` VALUES ('371083', '乳山市', '371000');
INSERT INTO `users_areainfo` VALUES ('371084', '其它区', '371000');
INSERT INTO `users_areainfo` VALUES ('371100', '日照', '370000');
INSERT INTO `users_areainfo` VALUES ('371102', '东港区', '371100');
INSERT INTO `users_areainfo` VALUES ('371103', '岚山区', '371100');
INSERT INTO `users_areainfo` VALUES ('371121', '五莲县', '371100');
INSERT INTO `users_areainfo` VALUES ('371122', '莒县', '371100');
INSERT INTO `users_areainfo` VALUES ('371123', '其它区', '371100');
INSERT INTO `users_areainfo` VALUES ('371200', '莱芜', '370000');
INSERT INTO `users_areainfo` VALUES ('371202', '莱城区', '371200');
INSERT INTO `users_areainfo` VALUES ('371203', '钢城区', '371200');
INSERT INTO `users_areainfo` VALUES ('371204', '其它区', '371200');
INSERT INTO `users_areainfo` VALUES ('371300', '临沂', '370000');
INSERT INTO `users_areainfo` VALUES ('371302', '兰山区', '371300');
INSERT INTO `users_areainfo` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `users_areainfo` VALUES ('371312', '河东区', '371300');
INSERT INTO `users_areainfo` VALUES ('371321', '沂南县', '371300');
INSERT INTO `users_areainfo` VALUES ('371322', '郯城县', '371300');
INSERT INTO `users_areainfo` VALUES ('371323', '沂水县', '371300');
INSERT INTO `users_areainfo` VALUES ('371324', '苍山县', '371300');
INSERT INTO `users_areainfo` VALUES ('371325', '费县', '371300');
INSERT INTO `users_areainfo` VALUES ('371326', '平邑县', '371300');
INSERT INTO `users_areainfo` VALUES ('371327', '莒南县', '371300');
INSERT INTO `users_areainfo` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `users_areainfo` VALUES ('371329', '临沭县', '371300');
INSERT INTO `users_areainfo` VALUES ('371330', '其它区', '371300');
INSERT INTO `users_areainfo` VALUES ('371400', '德州', '370000');
INSERT INTO `users_areainfo` VALUES ('371402', '德城区', '371400');
INSERT INTO `users_areainfo` VALUES ('371421', '陵县', '371400');
INSERT INTO `users_areainfo` VALUES ('371422', '宁津县', '371400');
INSERT INTO `users_areainfo` VALUES ('371423', '庆云县', '371400');
INSERT INTO `users_areainfo` VALUES ('371424', '临邑县', '371400');
INSERT INTO `users_areainfo` VALUES ('371425', '齐河县', '371400');
INSERT INTO `users_areainfo` VALUES ('371426', '平原县', '371400');
INSERT INTO `users_areainfo` VALUES ('371427', '夏津县', '371400');
INSERT INTO `users_areainfo` VALUES ('371428', '武城县', '371400');
INSERT INTO `users_areainfo` VALUES ('371451', '开发区', '371400');
INSERT INTO `users_areainfo` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `users_areainfo` VALUES ('371482', '禹城市', '371400');
INSERT INTO `users_areainfo` VALUES ('371483', '其它区', '371400');
INSERT INTO `users_areainfo` VALUES ('371500', '聊城', '370000');
INSERT INTO `users_areainfo` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `users_areainfo` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `users_areainfo` VALUES ('371522', '莘县', '371500');
INSERT INTO `users_areainfo` VALUES ('371523', '茌平县', '371500');
INSERT INTO `users_areainfo` VALUES ('371524', '东阿县', '371500');
INSERT INTO `users_areainfo` VALUES ('371525', '冠县', '371500');
INSERT INTO `users_areainfo` VALUES ('371526', '高唐县', '371500');
INSERT INTO `users_areainfo` VALUES ('371581', '临清市', '371500');
INSERT INTO `users_areainfo` VALUES ('371582', '其它区', '371500');
INSERT INTO `users_areainfo` VALUES ('371600', '滨州', '370000');
INSERT INTO `users_areainfo` VALUES ('371602', '滨城区', '371600');
INSERT INTO `users_areainfo` VALUES ('371621', '惠民县', '371600');
INSERT INTO `users_areainfo` VALUES ('371622', '阳信县', '371600');
INSERT INTO `users_areainfo` VALUES ('371623', '无棣县', '371600');
INSERT INTO `users_areainfo` VALUES ('371624', '沾化县', '371600');
INSERT INTO `users_areainfo` VALUES ('371625', '博兴县', '371600');
INSERT INTO `users_areainfo` VALUES ('371626', '邹平县', '371600');
INSERT INTO `users_areainfo` VALUES ('371627', '其它区', '371600');
INSERT INTO `users_areainfo` VALUES ('371700', '菏泽', '370000');
INSERT INTO `users_areainfo` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `users_areainfo` VALUES ('371721', '曹县', '371700');
INSERT INTO `users_areainfo` VALUES ('371722', '单县', '371700');
INSERT INTO `users_areainfo` VALUES ('371723', '成武县', '371700');
INSERT INTO `users_areainfo` VALUES ('371724', '巨野县', '371700');
INSERT INTO `users_areainfo` VALUES ('371725', '郓城县', '371700');
INSERT INTO `users_areainfo` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `users_areainfo` VALUES ('371727', '定陶县', '371700');
INSERT INTO `users_areainfo` VALUES ('371728', '东明县', '371700');
INSERT INTO `users_areainfo` VALUES ('371729', '其它区', '371700');
INSERT INTO `users_areainfo` VALUES ('410000', '河南', '0');
INSERT INTO `users_areainfo` VALUES ('410100', '郑州', '410000');
INSERT INTO `users_areainfo` VALUES ('410102', '中原区', '410100');
INSERT INTO `users_areainfo` VALUES ('410103', '二七区', '410100');
INSERT INTO `users_areainfo` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `users_areainfo` VALUES ('410105', '金水区', '410100');
INSERT INTO `users_areainfo` VALUES ('410106', '上街区', '410100');
INSERT INTO `users_areainfo` VALUES ('410108', '惠济区', '410100');
INSERT INTO `users_areainfo` VALUES ('410122', '中牟县', '410100');
INSERT INTO `users_areainfo` VALUES ('410181', '巩义市', '410100');
INSERT INTO `users_areainfo` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `users_areainfo` VALUES ('410183', '新密市', '410100');
INSERT INTO `users_areainfo` VALUES ('410184', '新郑市', '410100');
INSERT INTO `users_areainfo` VALUES ('410185', '登封市', '410100');
INSERT INTO `users_areainfo` VALUES ('410186', '郑东新区', '410100');
INSERT INTO `users_areainfo` VALUES ('410187', '高新区', '410100');
INSERT INTO `users_areainfo` VALUES ('410188', '其它区', '410100');
INSERT INTO `users_areainfo` VALUES ('410200', '开封', '410000');
INSERT INTO `users_areainfo` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `users_areainfo` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `users_areainfo` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `users_areainfo` VALUES ('410205', '禹王台区', '410200');
INSERT INTO `users_areainfo` VALUES ('410211', '金明区', '410200');
INSERT INTO `users_areainfo` VALUES ('410221', '杞县', '410200');
INSERT INTO `users_areainfo` VALUES ('410222', '通许县', '410200');
INSERT INTO `users_areainfo` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `users_areainfo` VALUES ('410224', '开封县', '410200');
INSERT INTO `users_areainfo` VALUES ('410225', '兰考县', '410200');
INSERT INTO `users_areainfo` VALUES ('410226', '其它区', '410200');
INSERT INTO `users_areainfo` VALUES ('410300', '洛阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410302', '老城区', '410300');
INSERT INTO `users_areainfo` VALUES ('410303', '西工区', '410300');
INSERT INTO `users_areainfo` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `users_areainfo` VALUES ('410305', '涧西区', '410300');
INSERT INTO `users_areainfo` VALUES ('410306', '吉利区', '410300');
INSERT INTO `users_areainfo` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `users_areainfo` VALUES ('410322', '孟津县', '410300');
INSERT INTO `users_areainfo` VALUES ('410323', '新安县', '410300');
INSERT INTO `users_areainfo` VALUES ('410324', '栾川县', '410300');
INSERT INTO `users_areainfo` VALUES ('410325', '嵩县', '410300');
INSERT INTO `users_areainfo` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `users_areainfo` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `users_areainfo` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `users_areainfo` VALUES ('410329', '伊川县', '410300');
INSERT INTO `users_areainfo` VALUES ('410381', '偃师市', '410300');
INSERT INTO `users_areainfo` VALUES ('410400', '平顶山', '410000');
INSERT INTO `users_areainfo` VALUES ('410402', '新华区', '410400');
INSERT INTO `users_areainfo` VALUES ('410403', '卫东区', '410400');
INSERT INTO `users_areainfo` VALUES ('410404', '石龙区', '410400');
INSERT INTO `users_areainfo` VALUES ('410411', '湛河区', '410400');
INSERT INTO `users_areainfo` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `users_areainfo` VALUES ('410422', '叶县', '410400');
INSERT INTO `users_areainfo` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `users_areainfo` VALUES ('410425', '郏县', '410400');
INSERT INTO `users_areainfo` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `users_areainfo` VALUES ('410482', '汝州市', '410400');
INSERT INTO `users_areainfo` VALUES ('410483', '其它区', '410400');
INSERT INTO `users_areainfo` VALUES ('410500', '安阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410502', '文峰区', '410500');
INSERT INTO `users_areainfo` VALUES ('410503', '北关区', '410500');
INSERT INTO `users_areainfo` VALUES ('410505', '殷都区', '410500');
INSERT INTO `users_areainfo` VALUES ('410506', '龙安区', '410500');
INSERT INTO `users_areainfo` VALUES ('410522', '安阳县', '410500');
INSERT INTO `users_areainfo` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `users_areainfo` VALUES ('410526', '滑县', '410500');
INSERT INTO `users_areainfo` VALUES ('410527', '内黄县', '410500');
INSERT INTO `users_areainfo` VALUES ('410581', '林州市', '410500');
INSERT INTO `users_areainfo` VALUES ('410582', '其它区', '410500');
INSERT INTO `users_areainfo` VALUES ('410600', '鹤壁', '410000');
INSERT INTO `users_areainfo` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `users_areainfo` VALUES ('410603', '山城区', '410600');
INSERT INTO `users_areainfo` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `users_areainfo` VALUES ('410621', '浚县', '410600');
INSERT INTO `users_areainfo` VALUES ('410622', '淇县', '410600');
INSERT INTO `users_areainfo` VALUES ('410623', '其它区', '410600');
INSERT INTO `users_areainfo` VALUES ('410700', '新乡', '410000');
INSERT INTO `users_areainfo` VALUES ('410702', '红旗区', '410700');
INSERT INTO `users_areainfo` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `users_areainfo` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `users_areainfo` VALUES ('410711', '牧野区', '410700');
INSERT INTO `users_areainfo` VALUES ('410721', '新乡县', '410700');
INSERT INTO `users_areainfo` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `users_areainfo` VALUES ('410725', '原阳县', '410700');
INSERT INTO `users_areainfo` VALUES ('410726', '延津县', '410700');
INSERT INTO `users_areainfo` VALUES ('410727', '封丘县', '410700');
INSERT INTO `users_areainfo` VALUES ('410728', '长垣县', '410700');
INSERT INTO `users_areainfo` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `users_areainfo` VALUES ('410782', '辉县市', '410700');
INSERT INTO `users_areainfo` VALUES ('410783', '其它区', '410700');
INSERT INTO `users_areainfo` VALUES ('410800', '焦作', '410000');
INSERT INTO `users_areainfo` VALUES ('410802', '解放区', '410800');
INSERT INTO `users_areainfo` VALUES ('410803', '中站区', '410800');
INSERT INTO `users_areainfo` VALUES ('410804', '马村区', '410800');
INSERT INTO `users_areainfo` VALUES ('410811', '山阳区', '410800');
INSERT INTO `users_areainfo` VALUES ('410821', '修武县', '410800');
INSERT INTO `users_areainfo` VALUES ('410822', '博爱县', '410800');
INSERT INTO `users_areainfo` VALUES ('410823', '武陟县', '410800');
INSERT INTO `users_areainfo` VALUES ('410825', '温县', '410800');
INSERT INTO `users_areainfo` VALUES ('410881', '济源', '410000');
INSERT INTO `users_areainfo` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `users_areainfo` VALUES ('410883', '孟州市', '410800');
INSERT INTO `users_areainfo` VALUES ('410884', '其它区', '410800');
INSERT INTO `users_areainfo` VALUES ('410900', '濮阳', '410000');
INSERT INTO `users_areainfo` VALUES ('410902', '华龙区', '410900');
INSERT INTO `users_areainfo` VALUES ('410922', '清丰县', '410900');
INSERT INTO `users_areainfo` VALUES ('410923', '南乐县', '410900');
INSERT INTO `users_areainfo` VALUES ('410926', '范县', '410900');
INSERT INTO `users_areainfo` VALUES ('410927', '台前县', '410900');
INSERT INTO `users_areainfo` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `users_areainfo` VALUES ('410929', '其它区', '410900');
INSERT INTO `users_areainfo` VALUES ('411000', '许昌', '410000');
INSERT INTO `users_areainfo` VALUES ('411002', '魏都区', '411000');
INSERT INTO `users_areainfo` VALUES ('411023', '许昌县', '411000');
INSERT INTO `users_areainfo` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `users_areainfo` VALUES ('411025', '襄城县', '411000');
INSERT INTO `users_areainfo` VALUES ('411081', '禹州市', '411000');
INSERT INTO `users_areainfo` VALUES ('411082', '长葛市', '411000');
INSERT INTO `users_areainfo` VALUES ('411083', '其它区', '411000');
INSERT INTO `users_areainfo` VALUES ('411100', '漯河', '410000');
INSERT INTO `users_areainfo` VALUES ('411102', '源汇区', '411100');
INSERT INTO `users_areainfo` VALUES ('411103', '郾城区', '411100');
INSERT INTO `users_areainfo` VALUES ('411104', '召陵区', '411100');
INSERT INTO `users_areainfo` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `users_areainfo` VALUES ('411122', '临颍县', '411100');
INSERT INTO `users_areainfo` VALUES ('411123', '其它区', '411100');
INSERT INTO `users_areainfo` VALUES ('411200', '三门峡', '410000');
INSERT INTO `users_areainfo` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `users_areainfo` VALUES ('411221', '渑池县', '411200');
INSERT INTO `users_areainfo` VALUES ('411222', '陕县', '411200');
INSERT INTO `users_areainfo` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `users_areainfo` VALUES ('411281', '义马市', '411200');
INSERT INTO `users_areainfo` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `users_areainfo` VALUES ('411283', '其它区', '411200');
INSERT INTO `users_areainfo` VALUES ('411300', '南阳', '410000');
INSERT INTO `users_areainfo` VALUES ('411302', '宛城区', '411300');
INSERT INTO `users_areainfo` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `users_areainfo` VALUES ('411321', '南召县', '411300');
INSERT INTO `users_areainfo` VALUES ('411322', '方城县', '411300');
INSERT INTO `users_areainfo` VALUES ('411323', '西峡县', '411300');
INSERT INTO `users_areainfo` VALUES ('411324', '镇平县', '411300');
INSERT INTO `users_areainfo` VALUES ('411325', '内乡县', '411300');
INSERT INTO `users_areainfo` VALUES ('411326', '淅川县', '411300');
INSERT INTO `users_areainfo` VALUES ('411327', '社旗县', '411300');
INSERT INTO `users_areainfo` VALUES ('411328', '唐河县', '411300');
INSERT INTO `users_areainfo` VALUES ('411329', '新野县', '411300');
INSERT INTO `users_areainfo` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `users_areainfo` VALUES ('411381', '邓州市', '411300');
INSERT INTO `users_areainfo` VALUES ('411382', '其它区', '411300');
INSERT INTO `users_areainfo` VALUES ('411400', '商丘', '410000');
INSERT INTO `users_areainfo` VALUES ('411402', '梁园区', '411400');
INSERT INTO `users_areainfo` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `users_areainfo` VALUES ('411421', '民权县', '411400');
INSERT INTO `users_areainfo` VALUES ('411422', '睢县', '411400');
INSERT INTO `users_areainfo` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `users_areainfo` VALUES ('411424', '柘城县', '411400');
INSERT INTO `users_areainfo` VALUES ('411425', '虞城县', '411400');
INSERT INTO `users_areainfo` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `users_areainfo` VALUES ('411481', '永城市', '411400');
INSERT INTO `users_areainfo` VALUES ('411482', '其它区', '411400');
INSERT INTO `users_areainfo` VALUES ('411500', '信阳', '410000');
INSERT INTO `users_areainfo` VALUES ('411502', '浉河区', '411500');
INSERT INTO `users_areainfo` VALUES ('411503', '平桥区', '411500');
INSERT INTO `users_areainfo` VALUES ('411521', '罗山县', '411500');
INSERT INTO `users_areainfo` VALUES ('411522', '光山县', '411500');
INSERT INTO `users_areainfo` VALUES ('411523', '新县', '411500');
INSERT INTO `users_areainfo` VALUES ('411524', '商城县', '411500');
INSERT INTO `users_areainfo` VALUES ('411525', '固始县', '411500');
INSERT INTO `users_areainfo` VALUES ('411526', '潢川县', '411500');
INSERT INTO `users_areainfo` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `users_areainfo` VALUES ('411528', '息县', '411500');
INSERT INTO `users_areainfo` VALUES ('411529', '其它区', '411500');
INSERT INTO `users_areainfo` VALUES ('411600', '周口', '410000');
INSERT INTO `users_areainfo` VALUES ('411602', '川汇区', '411600');
INSERT INTO `users_areainfo` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `users_areainfo` VALUES ('411622', '西华县', '411600');
INSERT INTO `users_areainfo` VALUES ('411623', '商水县', '411600');
INSERT INTO `users_areainfo` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `users_areainfo` VALUES ('411625', '郸城县', '411600');
INSERT INTO `users_areainfo` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `users_areainfo` VALUES ('411627', '太康县', '411600');
INSERT INTO `users_areainfo` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `users_areainfo` VALUES ('411681', '项城市', '411600');
INSERT INTO `users_areainfo` VALUES ('411682', '其它区', '411600');
INSERT INTO `users_areainfo` VALUES ('411700', '驻马店', '410000');
INSERT INTO `users_areainfo` VALUES ('411702', '驿城区', '411700');
INSERT INTO `users_areainfo` VALUES ('411721', '西平县', '411700');
INSERT INTO `users_areainfo` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `users_areainfo` VALUES ('411723', '平舆县', '411700');
INSERT INTO `users_areainfo` VALUES ('411724', '正阳县', '411700');
INSERT INTO `users_areainfo` VALUES ('411725', '确山县', '411700');
INSERT INTO `users_areainfo` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `users_areainfo` VALUES ('411727', '汝南县', '411700');
INSERT INTO `users_areainfo` VALUES ('411728', '遂平县', '411700');
INSERT INTO `users_areainfo` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `users_areainfo` VALUES ('411730', '其它区', '411700');
INSERT INTO `users_areainfo` VALUES ('420000', '湖北', '0');
INSERT INTO `users_areainfo` VALUES ('420100', '武汉', '420000');
INSERT INTO `users_areainfo` VALUES ('420102', '江岸区', '420100');
INSERT INTO `users_areainfo` VALUES ('420103', '江汉区', '420100');
INSERT INTO `users_areainfo` VALUES ('420104', '硚口区', '420100');
INSERT INTO `users_areainfo` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `users_areainfo` VALUES ('420106', '武昌区', '420100');
INSERT INTO `users_areainfo` VALUES ('420107', '青山区', '420100');
INSERT INTO `users_areainfo` VALUES ('420111', '洪山区', '420100');
INSERT INTO `users_areainfo` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `users_areainfo` VALUES ('420113', '汉南区', '420100');
INSERT INTO `users_areainfo` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `users_areainfo` VALUES ('420115', '江夏区', '420100');
INSERT INTO `users_areainfo` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `users_areainfo` VALUES ('420117', '新洲区', '420100');
INSERT INTO `users_areainfo` VALUES ('420118', '其它区', '420100');
INSERT INTO `users_areainfo` VALUES ('420200', '黄石', '420000');
INSERT INTO `users_areainfo` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `users_areainfo` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `users_areainfo` VALUES ('420204', '下陆区', '420200');
INSERT INTO `users_areainfo` VALUES ('420205', '铁山区', '420200');
INSERT INTO `users_areainfo` VALUES ('420222', '阳新县', '420200');
INSERT INTO `users_areainfo` VALUES ('420281', '大冶市', '420200');
INSERT INTO `users_areainfo` VALUES ('420282', '其它区', '420200');
INSERT INTO `users_areainfo` VALUES ('420300', '十堰', '420000');
INSERT INTO `users_areainfo` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `users_areainfo` VALUES ('420303', '张湾区', '420300');
INSERT INTO `users_areainfo` VALUES ('420321', '郧县', '420300');
INSERT INTO `users_areainfo` VALUES ('420322', '郧西县', '420300');
INSERT INTO `users_areainfo` VALUES ('420323', '竹山县', '420300');
INSERT INTO `users_areainfo` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `users_areainfo` VALUES ('420325', '房县', '420300');
INSERT INTO `users_areainfo` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `users_areainfo` VALUES ('420382', '城区', '420300');
INSERT INTO `users_areainfo` VALUES ('420383', '其它区', '420300');
INSERT INTO `users_areainfo` VALUES ('420500', '宜昌', '420000');
INSERT INTO `users_areainfo` VALUES ('420502', '西陵区', '420500');
INSERT INTO `users_areainfo` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `users_areainfo` VALUES ('420504', '点军区', '420500');
INSERT INTO `users_areainfo` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `users_areainfo` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `users_areainfo` VALUES ('420525', '远安县', '420500');
INSERT INTO `users_areainfo` VALUES ('420526', '兴山县', '420500');
INSERT INTO `users_areainfo` VALUES ('420527', '秭归县', '420500');
INSERT INTO `users_areainfo` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `users_areainfo` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `users_areainfo` VALUES ('420551', '葛洲坝区', '420500');
INSERT INTO `users_areainfo` VALUES ('420552', '开发区', '420500');
INSERT INTO `users_areainfo` VALUES ('420581', '宜都市', '420500');
INSERT INTO `users_areainfo` VALUES ('420582', '当阳市', '420500');
INSERT INTO `users_areainfo` VALUES ('420583', '枝江市', '420500');
INSERT INTO `users_areainfo` VALUES ('420584', '其它区', '420500');
INSERT INTO `users_areainfo` VALUES ('420600', '襄樊', '420000');
INSERT INTO `users_areainfo` VALUES ('420602', '襄城区', '420600');
INSERT INTO `users_areainfo` VALUES ('420606', '樊城区', '420600');
INSERT INTO `users_areainfo` VALUES ('420607', '襄阳区', '420600');
INSERT INTO `users_areainfo` VALUES ('420624', '南漳县', '420600');
INSERT INTO `users_areainfo` VALUES ('420625', '谷城县', '420600');
INSERT INTO `users_areainfo` VALUES ('420626', '保康县', '420600');
INSERT INTO `users_areainfo` VALUES ('420682', '老河口市', '420600');
INSERT INTO `users_areainfo` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `users_areainfo` VALUES ('420684', '宜城市', '420600');
INSERT INTO `users_areainfo` VALUES ('420685', '其它区', '420600');
INSERT INTO `users_areainfo` VALUES ('420700', '鄂州', '420000');
INSERT INTO `users_areainfo` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `users_areainfo` VALUES ('420703', '华容区', '420700');
INSERT INTO `users_areainfo` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `users_areainfo` VALUES ('420705', '其它区', '420700');
INSERT INTO `users_areainfo` VALUES ('420800', '荆门', '420000');
INSERT INTO `users_areainfo` VALUES ('420802', '东宝区', '420800');
INSERT INTO `users_areainfo` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `users_areainfo` VALUES ('420821', '京山县', '420800');
INSERT INTO `users_areainfo` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `users_areainfo` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `users_areainfo` VALUES ('420882', '其它区', '420800');
INSERT INTO `users_areainfo` VALUES ('420900', '孝感', '420000');
INSERT INTO `users_areainfo` VALUES ('420902', '孝南区', '420900');
INSERT INTO `users_areainfo` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `users_areainfo` VALUES ('420922', '大悟县', '420900');
INSERT INTO `users_areainfo` VALUES ('420923', '云梦县', '420900');
INSERT INTO `users_areainfo` VALUES ('420981', '应城市', '420900');
INSERT INTO `users_areainfo` VALUES ('420982', '安陆市', '420900');
INSERT INTO `users_areainfo` VALUES ('420984', '汉川市', '420900');
INSERT INTO `users_areainfo` VALUES ('420985', '其它区', '420900');
INSERT INTO `users_areainfo` VALUES ('421000', '荆州', '420000');
INSERT INTO `users_areainfo` VALUES ('421002', '沙市区', '421000');
INSERT INTO `users_areainfo` VALUES ('421003', '荆州区', '421000');
INSERT INTO `users_areainfo` VALUES ('421022', '公安县', '421000');
INSERT INTO `users_areainfo` VALUES ('421023', '监利县', '421000');
INSERT INTO `users_areainfo` VALUES ('421024', '江陵县', '421000');
INSERT INTO `users_areainfo` VALUES ('421081', '石首市', '421000');
INSERT INTO `users_areainfo` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `users_areainfo` VALUES ('421087', '松滋市', '421000');
INSERT INTO `users_areainfo` VALUES ('421088', '其它区', '421000');
INSERT INTO `users_areainfo` VALUES ('421100', '黄冈', '420000');
INSERT INTO `users_areainfo` VALUES ('421102', '黄州区', '421100');
INSERT INTO `users_areainfo` VALUES ('421121', '团风县', '421100');
INSERT INTO `users_areainfo` VALUES ('421122', '红安县', '421100');
INSERT INTO `users_areainfo` VALUES ('421123', '罗田县', '421100');
INSERT INTO `users_areainfo` VALUES ('421124', '英山县', '421100');
INSERT INTO `users_areainfo` VALUES ('421125', '浠水县', '421100');
INSERT INTO `users_areainfo` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `users_areainfo` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `users_areainfo` VALUES ('421181', '麻城市', '421100');
INSERT INTO `users_areainfo` VALUES ('421182', '武穴市', '421100');
INSERT INTO `users_areainfo` VALUES ('421183', '其它区', '421100');
INSERT INTO `users_areainfo` VALUES ('421200', '咸宁', '420000');
INSERT INTO `users_areainfo` VALUES ('421202', '咸安区', '421200');
INSERT INTO `users_areainfo` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `users_areainfo` VALUES ('421222', '通城县', '421200');
INSERT INTO `users_areainfo` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `users_areainfo` VALUES ('421224', '通山县', '421200');
INSERT INTO `users_areainfo` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `users_areainfo` VALUES ('421282', '温泉城区', '421200');
INSERT INTO `users_areainfo` VALUES ('421283', '其它区', '421200');
INSERT INTO `users_areainfo` VALUES ('421300', '随州', '420000');
INSERT INTO `users_areainfo` VALUES ('421302', '曾都区', '421300');
INSERT INTO `users_areainfo` VALUES ('421381', '广水市', '421300');
INSERT INTO `users_areainfo` VALUES ('421382', '其它区', '421300');
INSERT INTO `users_areainfo` VALUES ('422800', '恩施', '420000');
INSERT INTO `users_areainfo` VALUES ('422801', '恩施市', '422800');
INSERT INTO `users_areainfo` VALUES ('422802', '利川市', '422800');
INSERT INTO `users_areainfo` VALUES ('422822', '建始县', '422800');
INSERT INTO `users_areainfo` VALUES ('422823', '巴东县', '422800');
INSERT INTO `users_areainfo` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `users_areainfo` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `users_areainfo` VALUES ('422827', '来凤县', '422800');
INSERT INTO `users_areainfo` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `users_areainfo` VALUES ('422829', '其它区', '422800');
INSERT INTO `users_areainfo` VALUES ('429004', '仙桃', '420000');
INSERT INTO `users_areainfo` VALUES ('429005', '潜江', '420000');
INSERT INTO `users_areainfo` VALUES ('429006', '天门', '420000');
INSERT INTO `users_areainfo` VALUES ('429021', '神农架林区', '420000');
INSERT INTO `users_areainfo` VALUES ('430000', '湖南', '0');
INSERT INTO `users_areainfo` VALUES ('430100', '长沙', '430000');
INSERT INTO `users_areainfo` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `users_areainfo` VALUES ('430103', '天心区', '430100');
INSERT INTO `users_areainfo` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `users_areainfo` VALUES ('430105', '开福区', '430100');
INSERT INTO `users_areainfo` VALUES ('430111', '雨花区', '430100');
INSERT INTO `users_areainfo` VALUES ('430121', '长沙县', '430100');
INSERT INTO `users_areainfo` VALUES ('430122', '望城县', '430100');
INSERT INTO `users_areainfo` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `users_areainfo` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `users_areainfo` VALUES ('430182', '其它区', '430100');
INSERT INTO `users_areainfo` VALUES ('430200', '株洲', '430000');
INSERT INTO `users_areainfo` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `users_areainfo` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `users_areainfo` VALUES ('430204', '石峰区', '430200');
INSERT INTO `users_areainfo` VALUES ('430211', '天元区', '430200');
INSERT INTO `users_areainfo` VALUES ('430221', '株洲县', '430200');
INSERT INTO `users_areainfo` VALUES ('430223', '攸县', '430200');
INSERT INTO `users_areainfo` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `users_areainfo` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `users_areainfo` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `users_areainfo` VALUES ('430282', '其它区', '430200');
INSERT INTO `users_areainfo` VALUES ('430300', '湘潭', '430000');
INSERT INTO `users_areainfo` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `users_areainfo` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `users_areainfo` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `users_areainfo` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `users_areainfo` VALUES ('430382', '韶山市', '430300');
INSERT INTO `users_areainfo` VALUES ('430383', '其它区', '430300');
INSERT INTO `users_areainfo` VALUES ('430400', '衡阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `users_areainfo` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `users_areainfo` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `users_areainfo` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `users_areainfo` VALUES ('430412', '南岳区', '430400');
INSERT INTO `users_areainfo` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `users_areainfo` VALUES ('430422', '衡南县', '430400');
INSERT INTO `users_areainfo` VALUES ('430423', '衡山县', '430400');
INSERT INTO `users_areainfo` VALUES ('430424', '衡东县', '430400');
INSERT INTO `users_areainfo` VALUES ('430426', '祁东县', '430400');
INSERT INTO `users_areainfo` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `users_areainfo` VALUES ('430482', '常宁市', '430400');
INSERT INTO `users_areainfo` VALUES ('430483', '其它区', '430400');
INSERT INTO `users_areainfo` VALUES ('430500', '邵阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430502', '双清区', '430500');
INSERT INTO `users_areainfo` VALUES ('430503', '大祥区', '430500');
INSERT INTO `users_areainfo` VALUES ('430511', '北塔区', '430500');
INSERT INTO `users_areainfo` VALUES ('430521', '邵东县', '430500');
INSERT INTO `users_areainfo` VALUES ('430522', '新邵县', '430500');
INSERT INTO `users_areainfo` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `users_areainfo` VALUES ('430524', '隆回县', '430500');
INSERT INTO `users_areainfo` VALUES ('430525', '洞口县', '430500');
INSERT INTO `users_areainfo` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `users_areainfo` VALUES ('430528', '新宁县', '430500');
INSERT INTO `users_areainfo` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `users_areainfo` VALUES ('430581', '武冈市', '430500');
INSERT INTO `users_areainfo` VALUES ('430582', '其它区', '430500');
INSERT INTO `users_areainfo` VALUES ('430600', '岳阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `users_areainfo` VALUES ('430603', '云溪区', '430600');
INSERT INTO `users_areainfo` VALUES ('430611', '君山区', '430600');
INSERT INTO `users_areainfo` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `users_areainfo` VALUES ('430623', '华容县', '430600');
INSERT INTO `users_areainfo` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `users_areainfo` VALUES ('430626', '平江县', '430600');
INSERT INTO `users_areainfo` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `users_areainfo` VALUES ('430682', '临湘市', '430600');
INSERT INTO `users_areainfo` VALUES ('430683', '其它区', '430600');
INSERT INTO `users_areainfo` VALUES ('430700', '常德', '430000');
INSERT INTO `users_areainfo` VALUES ('430702', '武陵区', '430700');
INSERT INTO `users_areainfo` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `users_areainfo` VALUES ('430721', '安乡县', '430700');
INSERT INTO `users_areainfo` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `users_areainfo` VALUES ('430723', '澧县', '430700');
INSERT INTO `users_areainfo` VALUES ('430724', '临澧县', '430700');
INSERT INTO `users_areainfo` VALUES ('430725', '桃源县', '430700');
INSERT INTO `users_areainfo` VALUES ('430726', '石门县', '430700');
INSERT INTO `users_areainfo` VALUES ('430781', '津市市', '430700');
INSERT INTO `users_areainfo` VALUES ('430782', '其它区', '430700');
INSERT INTO `users_areainfo` VALUES ('430800', '张家界', '430000');
INSERT INTO `users_areainfo` VALUES ('430802', '永定区', '430800');
INSERT INTO `users_areainfo` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `users_areainfo` VALUES ('430821', '慈利县', '430800');
INSERT INTO `users_areainfo` VALUES ('430822', '桑植县', '430800');
INSERT INTO `users_areainfo` VALUES ('430823', '其它区', '430800');
INSERT INTO `users_areainfo` VALUES ('430900', '益阳', '430000');
INSERT INTO `users_areainfo` VALUES ('430902', '资阳区', '430900');
INSERT INTO `users_areainfo` VALUES ('430903', '赫山区', '430900');
INSERT INTO `users_areainfo` VALUES ('430921', '南县', '430900');
INSERT INTO `users_areainfo` VALUES ('430922', '桃江县', '430900');
INSERT INTO `users_areainfo` VALUES ('430923', '安化县', '430900');
INSERT INTO `users_areainfo` VALUES ('430981', '沅江市', '430900');
INSERT INTO `users_areainfo` VALUES ('430982', '其它区', '430900');
INSERT INTO `users_areainfo` VALUES ('431000', '郴州', '430000');
INSERT INTO `users_areainfo` VALUES ('431002', '北湖区', '431000');
INSERT INTO `users_areainfo` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `users_areainfo` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `users_areainfo` VALUES ('431022', '宜章县', '431000');
INSERT INTO `users_areainfo` VALUES ('431023', '永兴县', '431000');
INSERT INTO `users_areainfo` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `users_areainfo` VALUES ('431025', '临武县', '431000');
INSERT INTO `users_areainfo` VALUES ('431026', '汝城县', '431000');
INSERT INTO `users_areainfo` VALUES ('431027', '桂东县', '431000');
INSERT INTO `users_areainfo` VALUES ('431028', '安仁县', '431000');
INSERT INTO `users_areainfo` VALUES ('431081', '资兴市', '431000');
INSERT INTO `users_areainfo` VALUES ('431082', '其它区', '431000');
INSERT INTO `users_areainfo` VALUES ('431100', '永州', '430000');
INSERT INTO `users_areainfo` VALUES ('431102', '零陵区', '431100');
INSERT INTO `users_areainfo` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `users_areainfo` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `users_areainfo` VALUES ('431122', '东安县', '431100');
INSERT INTO `users_areainfo` VALUES ('431123', '双牌县', '431100');
INSERT INTO `users_areainfo` VALUES ('431124', '道县', '431100');
INSERT INTO `users_areainfo` VALUES ('431125', '江永县', '431100');
INSERT INTO `users_areainfo` VALUES ('431126', '宁远县', '431100');
INSERT INTO `users_areainfo` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `users_areainfo` VALUES ('431128', '新田县', '431100');
INSERT INTO `users_areainfo` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `users_areainfo` VALUES ('431130', '其它区', '431100');
INSERT INTO `users_areainfo` VALUES ('431200', '怀化', '430000');
INSERT INTO `users_areainfo` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `users_areainfo` VALUES ('431221', '中方县', '431200');
INSERT INTO `users_areainfo` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `users_areainfo` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `users_areainfo` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `users_areainfo` VALUES ('431225', '会同县', '431200');
INSERT INTO `users_areainfo` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `users_areainfo` VALUES ('431281', '洪江市', '431200');
INSERT INTO `users_areainfo` VALUES ('431282', '其它区', '431200');
INSERT INTO `users_areainfo` VALUES ('431300', '娄底', '430000');
INSERT INTO `users_areainfo` VALUES ('431302', '娄星区', '431300');
INSERT INTO `users_areainfo` VALUES ('431321', '双峰县', '431300');
INSERT INTO `users_areainfo` VALUES ('431322', '新化县', '431300');
INSERT INTO `users_areainfo` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `users_areainfo` VALUES ('431382', '涟源市', '431300');
INSERT INTO `users_areainfo` VALUES ('431383', '其它区', '431300');
INSERT INTO `users_areainfo` VALUES ('433100', '湘西', '430000');
INSERT INTO `users_areainfo` VALUES ('433101', '吉首市', '433100');
INSERT INTO `users_areainfo` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `users_areainfo` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `users_areainfo` VALUES ('433124', '花垣县', '433100');
INSERT INTO `users_areainfo` VALUES ('433125', '保靖县', '433100');
INSERT INTO `users_areainfo` VALUES ('433126', '古丈县', '433100');
INSERT INTO `users_areainfo` VALUES ('433127', '永顺县', '433100');
INSERT INTO `users_areainfo` VALUES ('433130', '龙山县', '433100');
INSERT INTO `users_areainfo` VALUES ('433131', '其它区', '433100');
INSERT INTO `users_areainfo` VALUES ('440000', '广东', '0');
INSERT INTO `users_areainfo` VALUES ('440100', '广州', '440000');
INSERT INTO `users_areainfo` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `users_areainfo` VALUES ('440104', '越秀区', '440100');
INSERT INTO `users_areainfo` VALUES ('440105', '海珠区', '440100');
INSERT INTO `users_areainfo` VALUES ('440106', '天河区', '440100');
INSERT INTO `users_areainfo` VALUES ('440111', '白云区', '440100');
INSERT INTO `users_areainfo` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `users_areainfo` VALUES ('440113', '番禺区', '440100');
INSERT INTO `users_areainfo` VALUES ('440114', '花都区', '440100');
INSERT INTO `users_areainfo` VALUES ('440115', '南沙区', '440100');
INSERT INTO `users_areainfo` VALUES ('440116', '萝岗区', '440100');
INSERT INTO `users_areainfo` VALUES ('440183', '增城市', '440100');
INSERT INTO `users_areainfo` VALUES ('440184', '从化市', '440100');
INSERT INTO `users_areainfo` VALUES ('440188', '东山区', '440100');
INSERT INTO `users_areainfo` VALUES ('440189', '其它区', '440100');
INSERT INTO `users_areainfo` VALUES ('440200', '韶关', '440000');
INSERT INTO `users_areainfo` VALUES ('440203', '武江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440204', '浈江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440205', '曲江区', '440200');
INSERT INTO `users_areainfo` VALUES ('440222', '始兴县', '440200');
INSERT INTO `users_areainfo` VALUES ('440224', '仁化县', '440200');
INSERT INTO `users_areainfo` VALUES ('440229', '翁源县', '440200');
INSERT INTO `users_areainfo` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `users_areainfo` VALUES ('440233', '新丰县', '440200');
INSERT INTO `users_areainfo` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `users_areainfo` VALUES ('440282', '南雄市', '440200');
INSERT INTO `users_areainfo` VALUES ('440283', '其它区', '440200');
INSERT INTO `users_areainfo` VALUES ('440300', '深圳', '440000');
INSERT INTO `users_areainfo` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `users_areainfo` VALUES ('440304', '福田区', '440300');
INSERT INTO `users_areainfo` VALUES ('440305', '南山区', '440300');
INSERT INTO `users_areainfo` VALUES ('440306', '宝安区', '440300');
INSERT INTO `users_areainfo` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `users_areainfo` VALUES ('440308', '盐田区', '440300');
INSERT INTO `users_areainfo` VALUES ('440309', '其它区', '440300');
INSERT INTO `users_areainfo` VALUES ('440400', '珠海', '440000');
INSERT INTO `users_areainfo` VALUES ('440402', '香洲区', '440400');
INSERT INTO `users_areainfo` VALUES ('440403', '斗门区', '440400');
INSERT INTO `users_areainfo` VALUES ('440404', '金湾区', '440400');
INSERT INTO `users_areainfo` VALUES ('440486', '金唐区', '440400');
INSERT INTO `users_areainfo` VALUES ('440487', '南湾区', '440400');
INSERT INTO `users_areainfo` VALUES ('440488', '其它区', '440400');
INSERT INTO `users_areainfo` VALUES ('440500', '汕头', '440000');
INSERT INTO `users_areainfo` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `users_areainfo` VALUES ('440511', '金平区', '440500');
INSERT INTO `users_areainfo` VALUES ('440512', '濠江区', '440500');
INSERT INTO `users_areainfo` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `users_areainfo` VALUES ('440514', '潮南区', '440500');
INSERT INTO `users_areainfo` VALUES ('440515', '澄海区', '440500');
INSERT INTO `users_areainfo` VALUES ('440523', '南澳县', '440500');
INSERT INTO `users_areainfo` VALUES ('440524', '其它区', '440500');
INSERT INTO `users_areainfo` VALUES ('440600', '佛山', '440000');
INSERT INTO `users_areainfo` VALUES ('440604', '禅城区', '440600');
INSERT INTO `users_areainfo` VALUES ('440605', '南海区', '440600');
INSERT INTO `users_areainfo` VALUES ('440606', '顺德区', '440600');
INSERT INTO `users_areainfo` VALUES ('440607', '三水区', '440600');
INSERT INTO `users_areainfo` VALUES ('440608', '高明区', '440600');
INSERT INTO `users_areainfo` VALUES ('440609', '其它区', '440600');
INSERT INTO `users_areainfo` VALUES ('440700', '江门', '440000');
INSERT INTO `users_areainfo` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `users_areainfo` VALUES ('440704', '江海区', '440700');
INSERT INTO `users_areainfo` VALUES ('440705', '新会区', '440700');
INSERT INTO `users_areainfo` VALUES ('440781', '台山市', '440700');
INSERT INTO `users_areainfo` VALUES ('440783', '开平市', '440700');
INSERT INTO `users_areainfo` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `users_areainfo` VALUES ('440785', '恩平市', '440700');
INSERT INTO `users_areainfo` VALUES ('440786', '其它区', '440700');
INSERT INTO `users_areainfo` VALUES ('440800', '湛江', '440000');
INSERT INTO `users_areainfo` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `users_areainfo` VALUES ('440803', '霞山区', '440800');
INSERT INTO `users_areainfo` VALUES ('440804', '坡头区', '440800');
INSERT INTO `users_areainfo` VALUES ('440811', '麻章区', '440800');
INSERT INTO `users_areainfo` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `users_areainfo` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `users_areainfo` VALUES ('440881', '廉江市', '440800');
INSERT INTO `users_areainfo` VALUES ('440882', '雷州市', '440800');
INSERT INTO `users_areainfo` VALUES ('440883', '吴川市', '440800');
INSERT INTO `users_areainfo` VALUES ('440884', '其它区', '440800');
INSERT INTO `users_areainfo` VALUES ('440900', '茂名', '440000');
INSERT INTO `users_areainfo` VALUES ('440902', '茂南区', '440900');
INSERT INTO `users_areainfo` VALUES ('440903', '茂港区', '440900');
INSERT INTO `users_areainfo` VALUES ('440923', '电白县', '440900');
INSERT INTO `users_areainfo` VALUES ('440981', '高州市', '440900');
INSERT INTO `users_areainfo` VALUES ('440982', '化州市', '440900');
INSERT INTO `users_areainfo` VALUES ('440983', '信宜市', '440900');
INSERT INTO `users_areainfo` VALUES ('440984', '其它区', '440900');
INSERT INTO `users_areainfo` VALUES ('441200', '肇庆', '440000');
INSERT INTO `users_areainfo` VALUES ('441202', '端州区', '441200');
INSERT INTO `users_areainfo` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `users_areainfo` VALUES ('441223', '广宁县', '441200');
INSERT INTO `users_areainfo` VALUES ('441224', '怀集县', '441200');
INSERT INTO `users_areainfo` VALUES ('441225', '封开县', '441200');
INSERT INTO `users_areainfo` VALUES ('441226', '德庆县', '441200');
INSERT INTO `users_areainfo` VALUES ('441283', '高要市', '441200');
INSERT INTO `users_areainfo` VALUES ('441284', '四会市', '441200');
INSERT INTO `users_areainfo` VALUES ('441285', '其它区', '441200');
INSERT INTO `users_areainfo` VALUES ('441300', '惠州', '440000');
INSERT INTO `users_areainfo` VALUES ('441302', '惠城区', '441300');
INSERT INTO `users_areainfo` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `users_areainfo` VALUES ('441322', '博罗县', '441300');
INSERT INTO `users_areainfo` VALUES ('441323', '惠东县', '441300');
INSERT INTO `users_areainfo` VALUES ('441324', '龙门县', '441300');
INSERT INTO `users_areainfo` VALUES ('441325', '其它区', '441300');
INSERT INTO `users_areainfo` VALUES ('441400', '梅州', '440000');
INSERT INTO `users_areainfo` VALUES ('441402', '梅江区', '441400');
INSERT INTO `users_areainfo` VALUES ('441421', '梅县', '441400');
INSERT INTO `users_areainfo` VALUES ('441422', '大埔县', '441400');
INSERT INTO `users_areainfo` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `users_areainfo` VALUES ('441424', '五华县', '441400');
INSERT INTO `users_areainfo` VALUES ('441426', '平远县', '441400');
INSERT INTO `users_areainfo` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `users_areainfo` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `users_areainfo` VALUES ('441482', '其它区', '441400');
INSERT INTO `users_areainfo` VALUES ('441500', '汕尾', '440000');
INSERT INTO `users_areainfo` VALUES ('441502', '城区', '441500');
INSERT INTO `users_areainfo` VALUES ('441521', '海丰县', '441500');
INSERT INTO `users_areainfo` VALUES ('441523', '陆河县', '441500');
INSERT INTO `users_areainfo` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `users_areainfo` VALUES ('441582', '其它区', '441500');
INSERT INTO `users_areainfo` VALUES ('441600', '河源', '440000');
INSERT INTO `users_areainfo` VALUES ('441602', '源城区', '441600');
INSERT INTO `users_areainfo` VALUES ('441621', '紫金县', '441600');
INSERT INTO `users_areainfo` VALUES ('441622', '龙川县', '441600');
INSERT INTO `users_areainfo` VALUES ('441623', '连平县', '441600');
INSERT INTO `users_areainfo` VALUES ('441624', '和平县', '441600');
INSERT INTO `users_areainfo` VALUES ('441625', '东源县', '441600');
INSERT INTO `users_areainfo` VALUES ('441626', '其它区', '441600');
INSERT INTO `users_areainfo` VALUES ('441700', '阳江', '440000');
INSERT INTO `users_areainfo` VALUES ('441702', '江城区', '441700');
INSERT INTO `users_areainfo` VALUES ('441721', '阳西县', '441700');
INSERT INTO `users_areainfo` VALUES ('441723', '阳东县', '441700');
INSERT INTO `users_areainfo` VALUES ('441781', '阳春市', '441700');
INSERT INTO `users_areainfo` VALUES ('441782', '其它区', '441700');
INSERT INTO `users_areainfo` VALUES ('441800', '清远', '440000');
INSERT INTO `users_areainfo` VALUES ('441802', '清城区', '441800');
INSERT INTO `users_areainfo` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `users_areainfo` VALUES ('441823', '阳山县', '441800');
INSERT INTO `users_areainfo` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `users_areainfo` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `users_areainfo` VALUES ('441827', '清新县', '441800');
INSERT INTO `users_areainfo` VALUES ('441881', '英德市', '441800');
INSERT INTO `users_areainfo` VALUES ('441882', '连州市', '441800');
INSERT INTO `users_areainfo` VALUES ('441883', '其它区', '441800');
INSERT INTO `users_areainfo` VALUES ('441900', '东莞', '440000');
INSERT INTO `users_areainfo` VALUES ('442000', '中山', '440000');
INSERT INTO `users_areainfo` VALUES ('445100', '潮州', '440000');
INSERT INTO `users_areainfo` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `users_areainfo` VALUES ('445121', '潮安县', '445100');
INSERT INTO `users_areainfo` VALUES ('445122', '饶平县', '445100');
INSERT INTO `users_areainfo` VALUES ('445185', '枫溪区', '445100');
INSERT INTO `users_areainfo` VALUES ('445186', '其它区', '445100');
INSERT INTO `users_areainfo` VALUES ('445200', '揭阳', '440000');
INSERT INTO `users_areainfo` VALUES ('445202', '榕城区', '445200');
INSERT INTO `users_areainfo` VALUES ('445221', '揭东县', '445200');
INSERT INTO `users_areainfo` VALUES ('445222', '揭西县', '445200');
INSERT INTO `users_areainfo` VALUES ('445224', '惠来县', '445200');
INSERT INTO `users_areainfo` VALUES ('445281', '普宁市', '445200');
INSERT INTO `users_areainfo` VALUES ('445284', '东山区', '445200');
INSERT INTO `users_areainfo` VALUES ('445285', '其它区', '445200');
INSERT INTO `users_areainfo` VALUES ('445300', '云浮', '440000');
INSERT INTO `users_areainfo` VALUES ('445302', '云城区', '445300');
INSERT INTO `users_areainfo` VALUES ('445321', '新兴县', '445300');
INSERT INTO `users_areainfo` VALUES ('445322', '郁南县', '445300');
INSERT INTO `users_areainfo` VALUES ('445323', '云安县', '445300');
INSERT INTO `users_areainfo` VALUES ('445381', '罗定市', '445300');
INSERT INTO `users_areainfo` VALUES ('445382', '其它区', '445300');
INSERT INTO `users_areainfo` VALUES ('450000', '广西', '0');
INSERT INTO `users_areainfo` VALUES ('450100', '南宁', '450000');
INSERT INTO `users_areainfo` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `users_areainfo` VALUES ('450103', '青秀区', '450100');
INSERT INTO `users_areainfo` VALUES ('450105', '江南区', '450100');
INSERT INTO `users_areainfo` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `users_areainfo` VALUES ('450108', '良庆区', '450100');
INSERT INTO `users_areainfo` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `users_areainfo` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `users_areainfo` VALUES ('450123', '隆安县', '450100');
INSERT INTO `users_areainfo` VALUES ('450124', '马山县', '450100');
INSERT INTO `users_areainfo` VALUES ('450125', '上林县', '450100');
INSERT INTO `users_areainfo` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `users_areainfo` VALUES ('450127', '横县', '450100');
INSERT INTO `users_areainfo` VALUES ('450128', '其它区', '450100');
INSERT INTO `users_areainfo` VALUES ('450200', '柳州', '450000');
INSERT INTO `users_areainfo` VALUES ('450202', '城中区', '450200');
INSERT INTO `users_areainfo` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `users_areainfo` VALUES ('450204', '柳南区', '450200');
INSERT INTO `users_areainfo` VALUES ('450205', '柳北区', '450200');
INSERT INTO `users_areainfo` VALUES ('450221', '柳江县', '450200');
INSERT INTO `users_areainfo` VALUES ('450222', '柳城县', '450200');
INSERT INTO `users_areainfo` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `users_areainfo` VALUES ('450224', '融安县', '450200');
INSERT INTO `users_areainfo` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `users_areainfo` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `users_areainfo` VALUES ('450227', '其它区', '450200');
INSERT INTO `users_areainfo` VALUES ('450300', '桂林', '450000');
INSERT INTO `users_areainfo` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `users_areainfo` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `users_areainfo` VALUES ('450304', '象山区', '450300');
INSERT INTO `users_areainfo` VALUES ('450305', '七星区', '450300');
INSERT INTO `users_areainfo` VALUES ('450311', '雁山区', '450300');
INSERT INTO `users_areainfo` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `users_areainfo` VALUES ('450322', '临桂县', '450300');
INSERT INTO `users_areainfo` VALUES ('450323', '灵川县', '450300');
INSERT INTO `users_areainfo` VALUES ('450324', '全州县', '450300');
INSERT INTO `users_areainfo` VALUES ('450325', '兴安县', '450300');
INSERT INTO `users_areainfo` VALUES ('450326', '永福县', '450300');
INSERT INTO `users_areainfo` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `users_areainfo` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `users_areainfo` VALUES ('450329', '资源县', '450300');
INSERT INTO `users_areainfo` VALUES ('450330', '平乐县', '450300');
INSERT INTO `users_areainfo` VALUES ('450331', '荔蒲县', '450300');
INSERT INTO `users_areainfo` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `users_areainfo` VALUES ('450333', '其它区', '450300');
INSERT INTO `users_areainfo` VALUES ('450400', '梧州', '450000');
INSERT INTO `users_areainfo` VALUES ('450403', '万秀区', '450400');
INSERT INTO `users_areainfo` VALUES ('450404', '蝶山区', '450400');
INSERT INTO `users_areainfo` VALUES ('450405', '长洲区', '450400');
INSERT INTO `users_areainfo` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `users_areainfo` VALUES ('450422', '藤县', '450400');
INSERT INTO `users_areainfo` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `users_areainfo` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `users_areainfo` VALUES ('450482', '其它区', '450400');
INSERT INTO `users_areainfo` VALUES ('450500', '北海', '450000');
INSERT INTO `users_areainfo` VALUES ('450502', '海城区', '450500');
INSERT INTO `users_areainfo` VALUES ('450503', '银海区', '450500');
INSERT INTO `users_areainfo` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `users_areainfo` VALUES ('450521', '合浦县', '450500');
INSERT INTO `users_areainfo` VALUES ('450522', '其它区', '450500');
INSERT INTO `users_areainfo` VALUES ('450600', '防城港', '450000');
INSERT INTO `users_areainfo` VALUES ('450602', '港口区', '450600');
INSERT INTO `users_areainfo` VALUES ('450603', '防城区', '450600');
INSERT INTO `users_areainfo` VALUES ('450621', '上思县', '450600');
INSERT INTO `users_areainfo` VALUES ('450681', '东兴市', '450600');
INSERT INTO `users_areainfo` VALUES ('450682', '其它区', '450600');
INSERT INTO `users_areainfo` VALUES ('450700', '钦州', '450000');
INSERT INTO `users_areainfo` VALUES ('450702', '钦南区', '450700');
INSERT INTO `users_areainfo` VALUES ('450703', '钦北区', '450700');
INSERT INTO `users_areainfo` VALUES ('450721', '灵山县', '450700');
INSERT INTO `users_areainfo` VALUES ('450722', '浦北县', '450700');
INSERT INTO `users_areainfo` VALUES ('450723', '其它区', '450700');
INSERT INTO `users_areainfo` VALUES ('450800', '贵港', '450000');
INSERT INTO `users_areainfo` VALUES ('450802', '港北区', '450800');
INSERT INTO `users_areainfo` VALUES ('450803', '港南区', '450800');
INSERT INTO `users_areainfo` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `users_areainfo` VALUES ('450821', '平南县', '450800');
INSERT INTO `users_areainfo` VALUES ('450881', '桂平市', '450800');
INSERT INTO `users_areainfo` VALUES ('450882', '其它区', '450800');
INSERT INTO `users_areainfo` VALUES ('450900', '玉林', '450000');
INSERT INTO `users_areainfo` VALUES ('450902', '玉州区', '450900');
INSERT INTO `users_areainfo` VALUES ('450921', '容县', '450900');
INSERT INTO `users_areainfo` VALUES ('450922', '陆川县', '450900');
INSERT INTO `users_areainfo` VALUES ('450923', '博白县', '450900');
INSERT INTO `users_areainfo` VALUES ('450924', '兴业县', '450900');
INSERT INTO `users_areainfo` VALUES ('450981', '北流市', '450900');
INSERT INTO `users_areainfo` VALUES ('450982', '其它区', '450900');
INSERT INTO `users_areainfo` VALUES ('451000', '百色', '450000');
INSERT INTO `users_areainfo` VALUES ('451002', '右江区', '451000');
INSERT INTO `users_areainfo` VALUES ('451021', '田阳县', '451000');
INSERT INTO `users_areainfo` VALUES ('451022', '田东县', '451000');
INSERT INTO `users_areainfo` VALUES ('451023', '平果县', '451000');
INSERT INTO `users_areainfo` VALUES ('451024', '德保县', '451000');
INSERT INTO `users_areainfo` VALUES ('451025', '靖西县', '451000');
INSERT INTO `users_areainfo` VALUES ('451026', '那坡县', '451000');
INSERT INTO `users_areainfo` VALUES ('451027', '凌云县', '451000');
INSERT INTO `users_areainfo` VALUES ('451028', '乐业县', '451000');
INSERT INTO `users_areainfo` VALUES ('451029', '田林县', '451000');
INSERT INTO `users_areainfo` VALUES ('451030', '西林县', '451000');
INSERT INTO `users_areainfo` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `users_areainfo` VALUES ('451032', '其它区', '451000');
INSERT INTO `users_areainfo` VALUES ('451100', '贺州', '450000');
INSERT INTO `users_areainfo` VALUES ('451102', '八步区', '451100');
INSERT INTO `users_areainfo` VALUES ('451121', '昭平县', '451100');
INSERT INTO `users_areainfo` VALUES ('451122', '钟山县', '451100');
INSERT INTO `users_areainfo` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `users_areainfo` VALUES ('451124', '其它区', '451100');
INSERT INTO `users_areainfo` VALUES ('451200', '河池', '450000');
INSERT INTO `users_areainfo` VALUES ('451202', '金城江区', '451200');
INSERT INTO `users_areainfo` VALUES ('451221', '南丹县', '451200');
INSERT INTO `users_areainfo` VALUES ('451222', '天峨县', '451200');
INSERT INTO `users_areainfo` VALUES ('451223', '凤山县', '451200');
INSERT INTO `users_areainfo` VALUES ('451224', '东兰县', '451200');
INSERT INTO `users_areainfo` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `users_areainfo` VALUES ('451281', '宜州市', '451200');
INSERT INTO `users_areainfo` VALUES ('451282', '其它区', '451200');
INSERT INTO `users_areainfo` VALUES ('451300', '来宾', '450000');
INSERT INTO `users_areainfo` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `users_areainfo` VALUES ('451321', '忻城县', '451300');
INSERT INTO `users_areainfo` VALUES ('451322', '象州县', '451300');
INSERT INTO `users_areainfo` VALUES ('451323', '武宣县', '451300');
INSERT INTO `users_areainfo` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `users_areainfo` VALUES ('451381', '合山市', '451300');
INSERT INTO `users_areainfo` VALUES ('451382', '其它区', '451300');
INSERT INTO `users_areainfo` VALUES ('451400', '崇左', '450000');
INSERT INTO `users_areainfo` VALUES ('451402', '江洲区', '451400');
INSERT INTO `users_areainfo` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `users_areainfo` VALUES ('451422', '宁明县', '451400');
INSERT INTO `users_areainfo` VALUES ('451423', '龙州县', '451400');
INSERT INTO `users_areainfo` VALUES ('451424', '大新县', '451400');
INSERT INTO `users_areainfo` VALUES ('451425', '天等县', '451400');
INSERT INTO `users_areainfo` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `users_areainfo` VALUES ('451482', '其它区', '451400');
INSERT INTO `users_areainfo` VALUES ('460000', '海南', '0');
INSERT INTO `users_areainfo` VALUES ('460100', '海口', '460000');
INSERT INTO `users_areainfo` VALUES ('460105', '秀英区', '460100');
INSERT INTO `users_areainfo` VALUES ('460106', '龙华区', '460100');
INSERT INTO `users_areainfo` VALUES ('460107', '琼山区', '460100');
INSERT INTO `users_areainfo` VALUES ('460108', '美兰区', '460100');
INSERT INTO `users_areainfo` VALUES ('460109', '其它区', '460100');
INSERT INTO `users_areainfo` VALUES ('460200', '三亚', '460000');
INSERT INTO `users_areainfo` VALUES ('469001', '五指山', '460000');
INSERT INTO `users_areainfo` VALUES ('469002', '琼海', '460000');
INSERT INTO `users_areainfo` VALUES ('469003', '儋州', '460000');
INSERT INTO `users_areainfo` VALUES ('469005', '文昌', '460000');
INSERT INTO `users_areainfo` VALUES ('469006', '万宁', '460000');
INSERT INTO `users_areainfo` VALUES ('469007', '东方', '460000');
INSERT INTO `users_areainfo` VALUES ('469025', '定安', '460000');
INSERT INTO `users_areainfo` VALUES ('469026', '屯昌', '460000');
INSERT INTO `users_areainfo` VALUES ('469027', '澄迈', '460000');
INSERT INTO `users_areainfo` VALUES ('469028', '临高', '460000');
INSERT INTO `users_areainfo` VALUES ('469030', '白沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469031', '昌江', '460000');
INSERT INTO `users_areainfo` VALUES ('469033', '乐东', '460000');
INSERT INTO `users_areainfo` VALUES ('469034', '陵水', '460000');
INSERT INTO `users_areainfo` VALUES ('469035', '保亭', '460000');
INSERT INTO `users_areainfo` VALUES ('469036', '琼中', '460000');
INSERT INTO `users_areainfo` VALUES ('469037', '西沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469038', '南沙', '460000');
INSERT INTO `users_areainfo` VALUES ('469039', '中沙', '460000');
INSERT INTO `users_areainfo` VALUES ('471004', '高新区', '410300');
INSERT INTO `users_areainfo` VALUES ('471005', '其它区', '410300');
INSERT INTO `users_areainfo` VALUES ('500000', '重庆', '0');
INSERT INTO `users_areainfo` VALUES ('500100', '重庆市', '500100');
INSERT INTO `users_areainfo` VALUES ('500101', '万州', '500100');
INSERT INTO `users_areainfo` VALUES ('500102', '涪陵', '500100');
INSERT INTO `users_areainfo` VALUES ('500103', '渝中', '500100');
INSERT INTO `users_areainfo` VALUES ('500104', '大渡口', '500100');
INSERT INTO `users_areainfo` VALUES ('500105', '江北', '500100');
INSERT INTO `users_areainfo` VALUES ('500106', '沙坪坝', '500100');
INSERT INTO `users_areainfo` VALUES ('500107', '九龙坡', '500100');
INSERT INTO `users_areainfo` VALUES ('500108', '南岸', '500100');
INSERT INTO `users_areainfo` VALUES ('500109', '北碚', '500100');
INSERT INTO `users_areainfo` VALUES ('500110', '万盛', '500100');
INSERT INTO `users_areainfo` VALUES ('500111', '双桥', '500100');
INSERT INTO `users_areainfo` VALUES ('500112', '渝北', '500100');
INSERT INTO `users_areainfo` VALUES ('500113', '巴南', '500100');
INSERT INTO `users_areainfo` VALUES ('500114', '黔江', '500100');
INSERT INTO `users_areainfo` VALUES ('500115', '长寿', '500100');
INSERT INTO `users_areainfo` VALUES ('500222', '綦江', '500100');
INSERT INTO `users_areainfo` VALUES ('500223', '潼南', '500100');
INSERT INTO `users_areainfo` VALUES ('500224', '铜梁', '500100');
INSERT INTO `users_areainfo` VALUES ('500225', '大足', '500100');
INSERT INTO `users_areainfo` VALUES ('500226', '荣昌', '500100');
INSERT INTO `users_areainfo` VALUES ('500227', '璧山', '500100');
INSERT INTO `users_areainfo` VALUES ('500228', '梁平', '500100');
INSERT INTO `users_areainfo` VALUES ('500229', '城口县', '500100');
INSERT INTO `users_areainfo` VALUES ('500230', '丰都县', '500100');
INSERT INTO `users_areainfo` VALUES ('500231', '垫江县', '500100');
INSERT INTO `users_areainfo` VALUES ('500232', '武隆县', '500100');
INSERT INTO `users_areainfo` VALUES ('500233', '忠县', '500100');
INSERT INTO `users_areainfo` VALUES ('500234', '开县', '500100');
INSERT INTO `users_areainfo` VALUES ('500235', '云阳县', '500100');
INSERT INTO `users_areainfo` VALUES ('500236', '奉节县', '500100');
INSERT INTO `users_areainfo` VALUES ('500237', '巫山县', '500100');
INSERT INTO `users_areainfo` VALUES ('500238', '巫溪县', '500100');
INSERT INTO `users_areainfo` VALUES ('500240', '石柱土家族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500241', '秀山土家族苗族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500242', '酉阳土家族苗族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500243', '彭水苗族土家族自治县', '500100');
INSERT INTO `users_areainfo` VALUES ('500381', '江津市', '500100');
INSERT INTO `users_areainfo` VALUES ('500382', '合川区', '500100');
INSERT INTO `users_areainfo` VALUES ('500383', '永川市', '500100');
INSERT INTO `users_areainfo` VALUES ('500384', '南川市', '500100');
INSERT INTO `users_areainfo` VALUES ('500385', '其它区', '500100');
INSERT INTO `users_areainfo` VALUES ('510000', '四川', '0');
INSERT INTO `users_areainfo` VALUES ('510100', '成都', '510000');
INSERT INTO `users_areainfo` VALUES ('510104', '锦江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510105', '青羊区', '510100');
INSERT INTO `users_areainfo` VALUES ('510106', '金牛区', '510100');
INSERT INTO `users_areainfo` VALUES ('510107', '武侯区', '510100');
INSERT INTO `users_areainfo` VALUES ('510108', '成华区', '510100');
INSERT INTO `users_areainfo` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `users_areainfo` VALUES ('510113', '青白江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510114', '新都区', '510100');
INSERT INTO `users_areainfo` VALUES ('510115', '温江区', '510100');
INSERT INTO `users_areainfo` VALUES ('510121', '金堂县', '510100');
INSERT INTO `users_areainfo` VALUES ('510122', '双流县', '510100');
INSERT INTO `users_areainfo` VALUES ('510124', '郫县', '510100');
INSERT INTO `users_areainfo` VALUES ('510129', '大邑县', '510100');
INSERT INTO `users_areainfo` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `users_areainfo` VALUES ('510132', '新津县', '510100');
INSERT INTO `users_areainfo` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `users_areainfo` VALUES ('510182', '彭州市', '510100');
INSERT INTO `users_areainfo` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `users_areainfo` VALUES ('510184', '崇州市', '510100');
INSERT INTO `users_areainfo` VALUES ('510185', '其它区', '510100');
INSERT INTO `users_areainfo` VALUES ('510300', '自贡', '510000');
INSERT INTO `users_areainfo` VALUES ('510302', '自流井区', '510300');
INSERT INTO `users_areainfo` VALUES ('510303', '贡井区', '510300');
INSERT INTO `users_areainfo` VALUES ('510304', '大安区', '510300');
INSERT INTO `users_areainfo` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `users_areainfo` VALUES ('510321', '荣县', '510300');
INSERT INTO `users_areainfo` VALUES ('510322', '富顺县', '510300');
INSERT INTO `users_areainfo` VALUES ('510323', '其它区', '510300');
INSERT INTO `users_areainfo` VALUES ('510400', '攀枝花', '510000');
INSERT INTO `users_areainfo` VALUES ('510402', '东区', '510400');
INSERT INTO `users_areainfo` VALUES ('510403', '西区', '510400');
INSERT INTO `users_areainfo` VALUES ('510411', '仁和区', '510400');
INSERT INTO `users_areainfo` VALUES ('510421', '米易县', '510400');
INSERT INTO `users_areainfo` VALUES ('510422', '盐边县', '510400');
INSERT INTO `users_areainfo` VALUES ('510423', '其它区', '510400');
INSERT INTO `users_areainfo` VALUES ('510500', '泸州', '510000');
INSERT INTO `users_areainfo` VALUES ('510502', '江阳区', '510500');
INSERT INTO `users_areainfo` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `users_areainfo` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `users_areainfo` VALUES ('510521', '泸县', '510500');
INSERT INTO `users_areainfo` VALUES ('510522', '合江县', '510500');
INSERT INTO `users_areainfo` VALUES ('510524', '叙永县', '510500');
INSERT INTO `users_areainfo` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `users_areainfo` VALUES ('510526', '其它区', '510500');
INSERT INTO `users_areainfo` VALUES ('510600', '德阳', '510000');
INSERT INTO `users_areainfo` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `users_areainfo` VALUES ('510623', '中江县', '510600');
INSERT INTO `users_areainfo` VALUES ('510626', '罗江县', '510600');
INSERT INTO `users_areainfo` VALUES ('510681', '广汉市', '510600');
INSERT INTO `users_areainfo` VALUES ('510682', '什邡市', '510600');
INSERT INTO `users_areainfo` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `users_areainfo` VALUES ('510684', '其它区', '510600');
INSERT INTO `users_areainfo` VALUES ('510700', '绵阳', '510000');
INSERT INTO `users_areainfo` VALUES ('510703', '涪城区', '510700');
INSERT INTO `users_areainfo` VALUES ('510704', '游仙区', '510700');
INSERT INTO `users_areainfo` VALUES ('510722', '三台县', '510700');
INSERT INTO `users_areainfo` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `users_areainfo` VALUES ('510724', '安县', '510700');
INSERT INTO `users_areainfo` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `users_areainfo` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `users_areainfo` VALUES ('510727', '平武县', '510700');
INSERT INTO `users_areainfo` VALUES ('510751', '高新区', '510700');
INSERT INTO `users_areainfo` VALUES ('510781', '江油市', '510700');
INSERT INTO `users_areainfo` VALUES ('510782', '其它区', '510700');
INSERT INTO `users_areainfo` VALUES ('510800', '广元', '510000');
INSERT INTO `users_areainfo` VALUES ('510802', '市中区', '510800');
INSERT INTO `users_areainfo` VALUES ('510811', '元坝区', '510800');
INSERT INTO `users_areainfo` VALUES ('510812', '朝天区', '510800');
INSERT INTO `users_areainfo` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `users_areainfo` VALUES ('510822', '青川县', '510800');
INSERT INTO `users_areainfo` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `users_areainfo` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `users_areainfo` VALUES ('510825', '其它区', '510800');
INSERT INTO `users_areainfo` VALUES ('510900', '遂宁', '510000');
INSERT INTO `users_areainfo` VALUES ('510903', '船山区', '510900');
INSERT INTO `users_areainfo` VALUES ('510904', '安居区', '510900');
INSERT INTO `users_areainfo` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `users_areainfo` VALUES ('510922', '射洪县', '510900');
INSERT INTO `users_areainfo` VALUES ('510923', '大英县', '510900');
INSERT INTO `users_areainfo` VALUES ('510924', '其它区', '510900');
INSERT INTO `users_areainfo` VALUES ('511000', '内江', '510000');
INSERT INTO `users_areainfo` VALUES ('511002', '市中区', '511000');
INSERT INTO `users_areainfo` VALUES ('511011', '东兴区', '511000');
INSERT INTO `users_areainfo` VALUES ('511024', '威远县', '511000');
INSERT INTO `users_areainfo` VALUES ('511025', '资中县', '511000');
INSERT INTO `users_areainfo` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `users_areainfo` VALUES ('511029', '其它区', '511000');
INSERT INTO `users_areainfo` VALUES ('511100', '乐山', '510000');
INSERT INTO `users_areainfo` VALUES ('511102', '市中区', '511100');
INSERT INTO `users_areainfo` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `users_areainfo` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `users_areainfo` VALUES ('511113', '金口河区', '511100');
INSERT INTO `users_areainfo` VALUES ('511123', '犍为县', '511100');
INSERT INTO `users_areainfo` VALUES ('511124', '井研县', '511100');
INSERT INTO `users_areainfo` VALUES ('511126', '夹江县', '511100');
INSERT INTO `users_areainfo` VALUES ('511129', '沐川县', '511100');
INSERT INTO `users_areainfo` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `users_areainfo` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `users_areainfo` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `users_areainfo` VALUES ('511182', '其它区', '511100');
INSERT INTO `users_areainfo` VALUES ('511300', '南充', '510000');
INSERT INTO `users_areainfo` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `users_areainfo` VALUES ('511303', '高坪区', '511300');
INSERT INTO `users_areainfo` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `users_areainfo` VALUES ('511321', '南部县', '511300');
INSERT INTO `users_areainfo` VALUES ('511322', '营山县', '511300');
INSERT INTO `users_areainfo` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `users_areainfo` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `users_areainfo` VALUES ('511325', '西充县', '511300');
INSERT INTO `users_areainfo` VALUES ('511381', '阆中市', '511300');
INSERT INTO `users_areainfo` VALUES ('511382', '其它区', '511300');
INSERT INTO `users_areainfo` VALUES ('511400', '眉山', '510000');
INSERT INTO `users_areainfo` VALUES ('511402', '东坡区', '511400');
INSERT INTO `users_areainfo` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `users_areainfo` VALUES ('511422', '彭山县', '511400');
INSERT INTO `users_areainfo` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `users_areainfo` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `users_areainfo` VALUES ('511425', '青神县', '511400');
INSERT INTO `users_areainfo` VALUES ('511426', '其它区', '511400');
INSERT INTO `users_areainfo` VALUES ('511500', '宜宾', '510000');
INSERT INTO `users_areainfo` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `users_areainfo` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `users_areainfo` VALUES ('511522', '南溪县', '511500');
INSERT INTO `users_areainfo` VALUES ('511523', '江安县', '511500');
INSERT INTO `users_areainfo` VALUES ('511524', '长宁县', '511500');
INSERT INTO `users_areainfo` VALUES ('511525', '高县', '511500');
INSERT INTO `users_areainfo` VALUES ('511526', '珙县', '511500');
INSERT INTO `users_areainfo` VALUES ('511527', '筠连县', '511500');
INSERT INTO `users_areainfo` VALUES ('511528', '兴文县', '511500');
INSERT INTO `users_areainfo` VALUES ('511529', '屏山县', '511500');
INSERT INTO `users_areainfo` VALUES ('511530', '其它区', '511500');
INSERT INTO `users_areainfo` VALUES ('511600', '广安', '510000');
INSERT INTO `users_areainfo` VALUES ('511602', '广安区', '511600');
INSERT INTO `users_areainfo` VALUES ('511621', '岳池县', '511600');
INSERT INTO `users_areainfo` VALUES ('511622', '武胜县', '511600');
INSERT INTO `users_areainfo` VALUES ('511623', '邻水县', '511600');
INSERT INTO `users_areainfo` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `users_areainfo` VALUES ('511682', '市辖区', '511600');
INSERT INTO `users_areainfo` VALUES ('511683', '其它区', '511600');
INSERT INTO `users_areainfo` VALUES ('511700', '达州', '510000');
INSERT INTO `users_areainfo` VALUES ('511702', '通川区', '511700');
INSERT INTO `users_areainfo` VALUES ('511721', '达县', '511700');
INSERT INTO `users_areainfo` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `users_areainfo` VALUES ('511723', '开江县', '511700');
INSERT INTO `users_areainfo` VALUES ('511724', '大竹县', '511700');
INSERT INTO `users_areainfo` VALUES ('511725', '渠县', '511700');
INSERT INTO `users_areainfo` VALUES ('511781', '万源市', '511700');
INSERT INTO `users_areainfo` VALUES ('511782', '其它区', '511700');
INSERT INTO `users_areainfo` VALUES ('511800', '雅安', '510000');
INSERT INTO `users_areainfo` VALUES ('511802', '雨城区', '511800');
INSERT INTO `users_areainfo` VALUES ('511821', '名山县', '511800');
INSERT INTO `users_areainfo` VALUES ('511822', '荥经县', '511800');
INSERT INTO `users_areainfo` VALUES ('511823', '汉源县', '511800');
INSERT INTO `users_areainfo` VALUES ('511824', '石棉县', '511800');
INSERT INTO `users_areainfo` VALUES ('511825', '天全县', '511800');
INSERT INTO `users_areainfo` VALUES ('511826', '芦山县', '511800');
INSERT INTO `users_areainfo` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `users_areainfo` VALUES ('511828', '其它区', '511800');
INSERT INTO `users_areainfo` VALUES ('511900', '巴中', '510000');
INSERT INTO `users_areainfo` VALUES ('511902', '巴州区', '511900');
INSERT INTO `users_areainfo` VALUES ('511921', '通江县', '511900');
INSERT INTO `users_areainfo` VALUES ('511922', '南江县', '511900');
INSERT INTO `users_areainfo` VALUES ('511923', '平昌县', '511900');
INSERT INTO `users_areainfo` VALUES ('511924', '其它区', '511900');
INSERT INTO `users_areainfo` VALUES ('512000', '资阳', '510000');
INSERT INTO `users_areainfo` VALUES ('512002', '雁江区', '512000');
INSERT INTO `users_areainfo` VALUES ('512021', '安岳县', '512000');
INSERT INTO `users_areainfo` VALUES ('512022', '乐至县', '512000');
INSERT INTO `users_areainfo` VALUES ('512081', '简阳市', '512000');
INSERT INTO `users_areainfo` VALUES ('512082', '其它区', '512000');
INSERT INTO `users_areainfo` VALUES ('513200', '阿坝', '510000');
INSERT INTO `users_areainfo` VALUES ('513221', '汶川县', '513200');
INSERT INTO `users_areainfo` VALUES ('513222', '理县', '513200');
INSERT INTO `users_areainfo` VALUES ('513223', '茂县', '513200');
INSERT INTO `users_areainfo` VALUES ('513224', '松潘县', '513200');
INSERT INTO `users_areainfo` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `users_areainfo` VALUES ('513226', '金川县', '513200');
INSERT INTO `users_areainfo` VALUES ('513227', '小金县', '513200');
INSERT INTO `users_areainfo` VALUES ('513228', '黑水县', '513200');
INSERT INTO `users_areainfo` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `users_areainfo` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `users_areainfo` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `users_areainfo` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `users_areainfo` VALUES ('513233', '红原县', '513200');
INSERT INTO `users_areainfo` VALUES ('513234', '其它区', '513200');
INSERT INTO `users_areainfo` VALUES ('513300', '甘孜', '510000');
INSERT INTO `users_areainfo` VALUES ('513321', '康定县', '513300');
INSERT INTO `users_areainfo` VALUES ('513322', '泸定县', '513300');
INSERT INTO `users_areainfo` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `users_areainfo` VALUES ('513324', '九龙县', '513300');
INSERT INTO `users_areainfo` VALUES ('513325', '雅江县', '513300');
INSERT INTO `users_areainfo` VALUES ('513326', '道孚县', '513300');
INSERT INTO `users_areainfo` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `users_areainfo` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `users_areainfo` VALUES ('513329', '新龙县', '513300');
INSERT INTO `users_areainfo` VALUES ('513330', '德格县', '513300');
INSERT INTO `users_areainfo` VALUES ('513331', '白玉县', '513300');
INSERT INTO `users_areainfo` VALUES ('513332', '石渠县', '513300');
INSERT INTO `users_areainfo` VALUES ('513333', '色达县', '513300');
INSERT INTO `users_areainfo` VALUES ('513334', '理塘县', '513300');
INSERT INTO `users_areainfo` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `users_areainfo` VALUES ('513336', '乡城县', '513300');
INSERT INTO `users_areainfo` VALUES ('513337', '稻城县', '513300');
INSERT INTO `users_areainfo` VALUES ('513338', '得荣县', '513300');
INSERT INTO `users_areainfo` VALUES ('513339', '其它区', '513300');
INSERT INTO `users_areainfo` VALUES ('513400', '凉山', '510000');
INSERT INTO `users_areainfo` VALUES ('513401', '西昌市', '513400');
INSERT INTO `users_areainfo` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `users_areainfo` VALUES ('513423', '盐源县', '513400');
INSERT INTO `users_areainfo` VALUES ('513424', '德昌县', '513400');
INSERT INTO `users_areainfo` VALUES ('513425', '会理县', '513400');
INSERT INTO `users_areainfo` VALUES ('513426', '会东县', '513400');
INSERT INTO `users_areainfo` VALUES ('513427', '宁南县', '513400');
INSERT INTO `users_areainfo` VALUES ('513428', '普格县', '513400');
INSERT INTO `users_areainfo` VALUES ('513429', '布拖县', '513400');
INSERT INTO `users_areainfo` VALUES ('513430', '金阳县', '513400');
INSERT INTO `users_areainfo` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `users_areainfo` VALUES ('513432', '喜德县', '513400');
INSERT INTO `users_areainfo` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `users_areainfo` VALUES ('513434', '越西县', '513400');
INSERT INTO `users_areainfo` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `users_areainfo` VALUES ('513436', '美姑县', '513400');
INSERT INTO `users_areainfo` VALUES ('513437', '雷波县', '513400');
INSERT INTO `users_areainfo` VALUES ('513438', '其它区', '513400');
INSERT INTO `users_areainfo` VALUES ('520000', '贵州', '0');
INSERT INTO `users_areainfo` VALUES ('520100', '贵阳', '520000');
INSERT INTO `users_areainfo` VALUES ('520102', '南明区', '520100');
INSERT INTO `users_areainfo` VALUES ('520103', '云岩区', '520100');
INSERT INTO `users_areainfo` VALUES ('520111', '花溪区', '520100');
INSERT INTO `users_areainfo` VALUES ('520112', '乌当区', '520100');
INSERT INTO `users_areainfo` VALUES ('520113', '白云区', '520100');
INSERT INTO `users_areainfo` VALUES ('520114', '小河区', '520100');
INSERT INTO `users_areainfo` VALUES ('520121', '开阳县', '520100');
INSERT INTO `users_areainfo` VALUES ('520122', '息烽县', '520100');
INSERT INTO `users_areainfo` VALUES ('520123', '修文县', '520100');
INSERT INTO `users_areainfo` VALUES ('520151', '金阳开发区', '520100');
INSERT INTO `users_areainfo` VALUES ('520181', '清镇市', '520100');
INSERT INTO `users_areainfo` VALUES ('520182', '其它区', '520100');
INSERT INTO `users_areainfo` VALUES ('520200', '六盘水', '520000');
INSERT INTO `users_areainfo` VALUES ('520201', '钟山区', '520200');
INSERT INTO `users_areainfo` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `users_areainfo` VALUES ('520221', '水城县', '520200');
INSERT INTO `users_areainfo` VALUES ('520222', '盘县', '520200');
INSERT INTO `users_areainfo` VALUES ('520223', '其它区', '520200');
INSERT INTO `users_areainfo` VALUES ('520300', '遵义', '520000');
INSERT INTO `users_areainfo` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `users_areainfo` VALUES ('520303', '汇川区', '520300');
INSERT INTO `users_areainfo` VALUES ('520321', '遵义县', '520300');
INSERT INTO `users_areainfo` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `users_areainfo` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `users_areainfo` VALUES ('520324', '正安县', '520300');
INSERT INTO `users_areainfo` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `users_areainfo` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `users_areainfo` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `users_areainfo` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `users_areainfo` VALUES ('520329', '余庆县', '520300');
INSERT INTO `users_areainfo` VALUES ('520330', '习水县', '520300');
INSERT INTO `users_areainfo` VALUES ('520381', '赤水市', '520300');
INSERT INTO `users_areainfo` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `users_areainfo` VALUES ('520383', '其它区', '520300');
INSERT INTO `users_areainfo` VALUES ('520400', '安顺', '520000');
INSERT INTO `users_areainfo` VALUES ('520402', '西秀区', '520400');
INSERT INTO `users_areainfo` VALUES ('520421', '平坝县', '520400');
INSERT INTO `users_areainfo` VALUES ('520422', '普定县', '520400');
INSERT INTO `users_areainfo` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `users_areainfo` VALUES ('520426', '其它区', '520400');
INSERT INTO `users_areainfo` VALUES ('522200', '铜仁', '520000');
INSERT INTO `users_areainfo` VALUES ('522201', '铜仁市', '522200');
INSERT INTO `users_areainfo` VALUES ('522222', '江口县', '522200');
INSERT INTO `users_areainfo` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522224', '石阡县', '522200');
INSERT INTO `users_areainfo` VALUES ('522225', '思南县', '522200');
INSERT INTO `users_areainfo` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522227', '德江县', '522200');
INSERT INTO `users_areainfo` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `users_areainfo` VALUES ('522230', '万山特区', '522200');
INSERT INTO `users_areainfo` VALUES ('522231', '其它区', '522200');
INSERT INTO `users_areainfo` VALUES ('522300', '黔西', '520000');
INSERT INTO `users_areainfo` VALUES ('522301', '兴义市', '522300');
INSERT INTO `users_areainfo` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `users_areainfo` VALUES ('522323', '普安县', '522300');
INSERT INTO `users_areainfo` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `users_areainfo` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `users_areainfo` VALUES ('522326', '望谟县', '522300');
INSERT INTO `users_areainfo` VALUES ('522327', '册亨县', '522300');
INSERT INTO `users_areainfo` VALUES ('522328', '安龙县', '522300');
INSERT INTO `users_areainfo` VALUES ('522329', '其它区', '522300');
INSERT INTO `users_areainfo` VALUES ('522400', '毕节', '520000');
INSERT INTO `users_areainfo` VALUES ('522401', '毕节市', '522400');
INSERT INTO `users_areainfo` VALUES ('522422', '大方县', '522400');
INSERT INTO `users_areainfo` VALUES ('522423', '黔西县', '522400');
INSERT INTO `users_areainfo` VALUES ('522424', '金沙县', '522400');
INSERT INTO `users_areainfo` VALUES ('522425', '织金县', '522400');
INSERT INTO `users_areainfo` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `users_areainfo` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `users_areainfo` VALUES ('522428', '赫章县', '522400');
INSERT INTO `users_areainfo` VALUES ('522429', '其它区', '522400');
INSERT INTO `users_areainfo` VALUES ('522600', '黔东', '520000');
INSERT INTO `users_areainfo` VALUES ('522601', '凯里市', '522600');
INSERT INTO `users_areainfo` VALUES ('522622', '黄平县', '522600');
INSERT INTO `users_areainfo` VALUES ('522623', '施秉县', '522600');
INSERT INTO `users_areainfo` VALUES ('522624', '三穗县', '522600');
INSERT INTO `users_areainfo` VALUES ('522625', '镇远县', '522600');
INSERT INTO `users_areainfo` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `users_areainfo` VALUES ('522627', '天柱县', '522600');
INSERT INTO `users_areainfo` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `users_areainfo` VALUES ('522629', '剑河县', '522600');
INSERT INTO `users_areainfo` VALUES ('522630', '台江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522631', '黎平县', '522600');
INSERT INTO `users_areainfo` VALUES ('522632', '榕江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522633', '从江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522634', '雷山县', '522600');
INSERT INTO `users_areainfo` VALUES ('522635', '麻江县', '522600');
INSERT INTO `users_areainfo` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `users_areainfo` VALUES ('522637', '其它区', '522600');
INSERT INTO `users_areainfo` VALUES ('522700', '黔南', '520000');
INSERT INTO `users_areainfo` VALUES ('522701', '都匀市', '522700');
INSERT INTO `users_areainfo` VALUES ('522702', '福泉市', '522700');
INSERT INTO `users_areainfo` VALUES ('522722', '荔波县', '522700');
INSERT INTO `users_areainfo` VALUES ('522723', '贵定县', '522700');
INSERT INTO `users_areainfo` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `users_areainfo` VALUES ('522726', '独山县', '522700');
INSERT INTO `users_areainfo` VALUES ('522727', '平塘县', '522700');
INSERT INTO `users_areainfo` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `users_areainfo` VALUES ('522729', '长顺县', '522700');
INSERT INTO `users_areainfo` VALUES ('522730', '龙里县', '522700');
INSERT INTO `users_areainfo` VALUES ('522731', '惠水县', '522700');
INSERT INTO `users_areainfo` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `users_areainfo` VALUES ('522733', '其它区', '522700');
INSERT INTO `users_areainfo` VALUES ('530000', '云南', '0');
INSERT INTO `users_areainfo` VALUES ('530100', '昆明', '530000');
INSERT INTO `users_areainfo` VALUES ('530102', '五华区', '530100');
INSERT INTO `users_areainfo` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `users_areainfo` VALUES ('530111', '官渡区', '530100');
INSERT INTO `users_areainfo` VALUES ('530112', '西山区', '530100');
INSERT INTO `users_areainfo` VALUES ('530113', '东川区', '530100');
INSERT INTO `users_areainfo` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `users_areainfo` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `users_areainfo` VALUES ('530124', '富民县', '530100');
INSERT INTO `users_areainfo` VALUES ('530125', '宜良县', '530100');
INSERT INTO `users_areainfo` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `users_areainfo` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `users_areainfo` VALUES ('530181', '安宁市', '530100');
INSERT INTO `users_areainfo` VALUES ('530182', '其它区', '530100');
INSERT INTO `users_areainfo` VALUES ('530300', '曲靖', '530000');
INSERT INTO `users_areainfo` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `users_areainfo` VALUES ('530321', '马龙县', '530300');
INSERT INTO `users_areainfo` VALUES ('530322', '陆良县', '530300');
INSERT INTO `users_areainfo` VALUES ('530323', '师宗县', '530300');
INSERT INTO `users_areainfo` VALUES ('530324', '罗平县', '530300');
INSERT INTO `users_areainfo` VALUES ('530325', '富源县', '530300');
INSERT INTO `users_areainfo` VALUES ('530326', '会泽县', '530300');
INSERT INTO `users_areainfo` VALUES ('530328', '沾益县', '530300');
INSERT INTO `users_areainfo` VALUES ('530381', '宣威市', '530300');
INSERT INTO `users_areainfo` VALUES ('530382', '其它区', '530300');
INSERT INTO `users_areainfo` VALUES ('530400', '玉溪', '530000');
INSERT INTO `users_areainfo` VALUES ('530402', '红塔区', '530400');
INSERT INTO `users_areainfo` VALUES ('530421', '江川县', '530400');
INSERT INTO `users_areainfo` VALUES ('530422', '澄江县', '530400');
INSERT INTO `users_areainfo` VALUES ('530423', '通海县', '530400');
INSERT INTO `users_areainfo` VALUES ('530424', '华宁县', '530400');
INSERT INTO `users_areainfo` VALUES ('530425', '易门县', '530400');
INSERT INTO `users_areainfo` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `users_areainfo` VALUES ('530429', '其它区', '530400');
INSERT INTO `users_areainfo` VALUES ('530500', '保山', '530000');
INSERT INTO `users_areainfo` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `users_areainfo` VALUES ('530521', '施甸县', '530500');
INSERT INTO `users_areainfo` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `users_areainfo` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `users_areainfo` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `users_areainfo` VALUES ('530525', '其它区', '530500');
INSERT INTO `users_areainfo` VALUES ('530600', '昭通', '530000');
INSERT INTO `users_areainfo` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `users_areainfo` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `users_areainfo` VALUES ('530622', '巧家县', '530600');
INSERT INTO `users_areainfo` VALUES ('530623', '盐津县', '530600');
INSERT INTO `users_areainfo` VALUES ('530624', '大关县', '530600');
INSERT INTO `users_areainfo` VALUES ('530625', '永善县', '530600');
INSERT INTO `users_areainfo` VALUES ('530626', '绥江县', '530600');
INSERT INTO `users_areainfo` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `users_areainfo` VALUES ('530628', '彝良县', '530600');
INSERT INTO `users_areainfo` VALUES ('530629', '威信县', '530600');
INSERT INTO `users_areainfo` VALUES ('530630', '水富县', '530600');
INSERT INTO `users_areainfo` VALUES ('530631', '其它区', '530600');
INSERT INTO `users_areainfo` VALUES ('530700', '丽江', '530000');
INSERT INTO `users_areainfo` VALUES ('530702', '古城区', '530700');
INSERT INTO `users_areainfo` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `users_areainfo` VALUES ('530722', '永胜县', '530700');
INSERT INTO `users_areainfo` VALUES ('530723', '华坪县', '530700');
INSERT INTO `users_areainfo` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `users_areainfo` VALUES ('530725', '其它区', '530700');
INSERT INTO `users_areainfo` VALUES ('530800', '思茅', '530000');
INSERT INTO `users_areainfo` VALUES ('530802', '翠云区', '530800');
INSERT INTO `users_areainfo` VALUES ('530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `users_areainfo` VALUES ('530830', '其它区', '530800');
INSERT INTO `users_areainfo` VALUES ('530900', '临沧', '530000');
INSERT INTO `users_areainfo` VALUES ('530902', '临翔区', '530900');
INSERT INTO `users_areainfo` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `users_areainfo` VALUES ('530922', '云县', '530900');
INSERT INTO `users_areainfo` VALUES ('530923', '永德县', '530900');
INSERT INTO `users_areainfo` VALUES ('530924', '镇康县', '530900');
INSERT INTO `users_areainfo` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `users_areainfo` VALUES ('530928', '其它区', '530900');
INSERT INTO `users_areainfo` VALUES ('532300', '楚雄', '530000');
INSERT INTO `users_areainfo` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `users_areainfo` VALUES ('532322', '双柏县', '532300');
INSERT INTO `users_areainfo` VALUES ('532323', '牟定县', '532300');
INSERT INTO `users_areainfo` VALUES ('532324', '南华县', '532300');
INSERT INTO `users_areainfo` VALUES ('532325', '姚安县', '532300');
INSERT INTO `users_areainfo` VALUES ('532326', '大姚县', '532300');
INSERT INTO `users_areainfo` VALUES ('532327', '永仁县', '532300');
INSERT INTO `users_areainfo` VALUES ('532328', '元谋县', '532300');
INSERT INTO `users_areainfo` VALUES ('532329', '武定县', '532300');
INSERT INTO `users_areainfo` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `users_areainfo` VALUES ('532332', '其它区', '532300');
INSERT INTO `users_areainfo` VALUES ('532500', '红河', '530000');
INSERT INTO `users_areainfo` VALUES ('532501', '个旧市', '532500');
INSERT INTO `users_areainfo` VALUES ('532502', '开远市', '532500');
INSERT INTO `users_areainfo` VALUES ('532522', '蒙自县', '532500');
INSERT INTO `users_areainfo` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532524', '建水县', '532500');
INSERT INTO `users_areainfo` VALUES ('532525', '石屏县', '532500');
INSERT INTO `users_areainfo` VALUES ('532526', '弥勒县', '532500');
INSERT INTO `users_areainfo` VALUES ('532527', '泸西县', '532500');
INSERT INTO `users_areainfo` VALUES ('532528', '元阳县', '532500');
INSERT INTO `users_areainfo` VALUES ('532529', '红河县', '532500');
INSERT INTO `users_areainfo` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532531', '绿春县', '532500');
INSERT INTO `users_areainfo` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `users_areainfo` VALUES ('532533', '其它区', '532500');
INSERT INTO `users_areainfo` VALUES ('532600', '文山', '530000');
INSERT INTO `users_areainfo` VALUES ('532621', '文山县', '532600');
INSERT INTO `users_areainfo` VALUES ('532622', '砚山县', '532600');
INSERT INTO `users_areainfo` VALUES ('532623', '西畴县', '532600');
INSERT INTO `users_areainfo` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `users_areainfo` VALUES ('532625', '马关县', '532600');
INSERT INTO `users_areainfo` VALUES ('532626', '丘北县', '532600');
INSERT INTO `users_areainfo` VALUES ('532627', '广南县', '532600');
INSERT INTO `users_areainfo` VALUES ('532628', '富宁县', '532600');
INSERT INTO `users_areainfo` VALUES ('532629', '其它区', '532600');
INSERT INTO `users_areainfo` VALUES ('532800', '西双版纳', '530000');
INSERT INTO `users_areainfo` VALUES ('532801', '景洪市', '532800');
INSERT INTO `users_areainfo` VALUES ('532822', '勐海县', '532800');
INSERT INTO `users_areainfo` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `users_areainfo` VALUES ('532824', '其它区', '532800');
INSERT INTO `users_areainfo` VALUES ('532900', '大理', '530000');
INSERT INTO `users_areainfo` VALUES ('532901', '大理市', '532900');
INSERT INTO `users_areainfo` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532923', '祥云县', '532900');
INSERT INTO `users_areainfo` VALUES ('532924', '宾川县', '532900');
INSERT INTO `users_areainfo` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `users_areainfo` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `users_areainfo` VALUES ('532928', '永平县', '532900');
INSERT INTO `users_areainfo` VALUES ('532929', '云龙县', '532900');
INSERT INTO `users_areainfo` VALUES ('532930', '洱源县', '532900');
INSERT INTO `users_areainfo` VALUES ('532931', '剑川县', '532900');
INSERT INTO `users_areainfo` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `users_areainfo` VALUES ('532933', '其它区', '532900');
INSERT INTO `users_areainfo` VALUES ('533100', '德宏', '530000');
INSERT INTO `users_areainfo` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `users_areainfo` VALUES ('533103', '潞西市', '533100');
INSERT INTO `users_areainfo` VALUES ('533122', '梁河县', '533100');
INSERT INTO `users_areainfo` VALUES ('533123', '盈江县', '533100');
INSERT INTO `users_areainfo` VALUES ('533124', '陇川县', '533100');
INSERT INTO `users_areainfo` VALUES ('533125', '其它区', '533100');
INSERT INTO `users_areainfo` VALUES ('533300', '怒江', '530000');
INSERT INTO `users_areainfo` VALUES ('533321', '泸水县', '533300');
INSERT INTO `users_areainfo` VALUES ('533323', '福贡县', '533300');
INSERT INTO `users_areainfo` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `users_areainfo` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `users_areainfo` VALUES ('533326', '其它区', '533300');
INSERT INTO `users_areainfo` VALUES ('533400', '迪庆', '530000');
INSERT INTO `users_areainfo` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `users_areainfo` VALUES ('533422', '德钦县', '533400');
INSERT INTO `users_areainfo` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `users_areainfo` VALUES ('533424', '其它区', '533400');
INSERT INTO `users_areainfo` VALUES ('540000', '西藏', '0');
INSERT INTO `users_areainfo` VALUES ('540100', '拉萨', '540000');
INSERT INTO `users_areainfo` VALUES ('540102', '城关区', '540100');
INSERT INTO `users_areainfo` VALUES ('540121', '林周县', '540100');
INSERT INTO `users_areainfo` VALUES ('540122', '当雄县', '540100');
INSERT INTO `users_areainfo` VALUES ('540123', '尼木县', '540100');
INSERT INTO `users_areainfo` VALUES ('540124', '曲水县', '540100');
INSERT INTO `users_areainfo` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `users_areainfo` VALUES ('540126', '达孜县', '540100');
INSERT INTO `users_areainfo` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `users_areainfo` VALUES ('540128', '其它区', '540100');
INSERT INTO `users_areainfo` VALUES ('542100', '昌都', '540000');
INSERT INTO `users_areainfo` VALUES ('542121', '昌都县', '542100');
INSERT INTO `users_areainfo` VALUES ('542122', '江达县', '542100');
INSERT INTO `users_areainfo` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `users_areainfo` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `users_areainfo` VALUES ('542125', '丁青县', '542100');
INSERT INTO `users_areainfo` VALUES ('542126', '察雅县', '542100');
INSERT INTO `users_areainfo` VALUES ('542127', '八宿县', '542100');
INSERT INTO `users_areainfo` VALUES ('542128', '左贡县', '542100');
INSERT INTO `users_areainfo` VALUES ('542129', '芒康县', '542100');
INSERT INTO `users_areainfo` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `users_areainfo` VALUES ('542133', '边坝县', '542100');
INSERT INTO `users_areainfo` VALUES ('542134', '其它区', '542100');
INSERT INTO `users_areainfo` VALUES ('542200', '山南', '540000');
INSERT INTO `users_areainfo` VALUES ('542221', '乃东县', '542200');
INSERT INTO `users_areainfo` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `users_areainfo` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `users_areainfo` VALUES ('542224', '桑日县', '542200');
INSERT INTO `users_areainfo` VALUES ('542225', '琼结县', '542200');
INSERT INTO `users_areainfo` VALUES ('542226', '曲松县', '542200');
INSERT INTO `users_areainfo` VALUES ('542227', '措美县', '542200');
INSERT INTO `users_areainfo` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `users_areainfo` VALUES ('542229', '加查县', '542200');
INSERT INTO `users_areainfo` VALUES ('542231', '隆子县', '542200');
INSERT INTO `users_areainfo` VALUES ('542232', '错那县', '542200');
INSERT INTO `users_areainfo` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `users_areainfo` VALUES ('542234', '其它区', '542200');
INSERT INTO `users_areainfo` VALUES ('542300', '日喀则', '540000');
INSERT INTO `users_areainfo` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `users_areainfo` VALUES ('542322', '南木林县', '542300');
INSERT INTO `users_areainfo` VALUES ('542323', '江孜县', '542300');
INSERT INTO `users_areainfo` VALUES ('542324', '定日县', '542300');
INSERT INTO `users_areainfo` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `users_areainfo` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `users_areainfo` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `users_areainfo` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `users_areainfo` VALUES ('542329', '白朗县', '542300');
INSERT INTO `users_areainfo` VALUES ('542330', '仁布县', '542300');
INSERT INTO `users_areainfo` VALUES ('542331', '康马县', '542300');
INSERT INTO `users_areainfo` VALUES ('542332', '定结县', '542300');
INSERT INTO `users_areainfo` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `users_areainfo` VALUES ('542334', '亚东县', '542300');
INSERT INTO `users_areainfo` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `users_areainfo` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `users_areainfo` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `users_areainfo` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `users_areainfo` VALUES ('542339', '其它区', '542300');
INSERT INTO `users_areainfo` VALUES ('542400', '那曲', '540000');
INSERT INTO `users_areainfo` VALUES ('542421', '那曲县', '542400');
INSERT INTO `users_areainfo` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `users_areainfo` VALUES ('542423', '比如县', '542400');
INSERT INTO `users_areainfo` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `users_areainfo` VALUES ('542425', '安多县', '542400');
INSERT INTO `users_areainfo` VALUES ('542426', '申扎县', '542400');
INSERT INTO `users_areainfo` VALUES ('542427', '索县', '542400');
INSERT INTO `users_areainfo` VALUES ('542428', '班戈县', '542400');
INSERT INTO `users_areainfo` VALUES ('542429', '巴青县', '542400');
INSERT INTO `users_areainfo` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `users_areainfo` VALUES ('542431', '其它区', '542400');
INSERT INTO `users_areainfo` VALUES ('542500', '阿里', '540000');
INSERT INTO `users_areainfo` VALUES ('542521', '普兰县', '542500');
INSERT INTO `users_areainfo` VALUES ('542522', '札达县', '542500');
INSERT INTO `users_areainfo` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `users_areainfo` VALUES ('542524', '日土县', '542500');
INSERT INTO `users_areainfo` VALUES ('542525', '革吉县', '542500');
INSERT INTO `users_areainfo` VALUES ('542526', '改则县', '542500');
INSERT INTO `users_areainfo` VALUES ('542527', '措勤县', '542500');
INSERT INTO `users_areainfo` VALUES ('542528', '其它区', '542500');
INSERT INTO `users_areainfo` VALUES ('542600', '林芝', '540000');
INSERT INTO `users_areainfo` VALUES ('542621', '林芝县', '542600');
INSERT INTO `users_areainfo` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `users_areainfo` VALUES ('542623', '米林县', '542600');
INSERT INTO `users_areainfo` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `users_areainfo` VALUES ('542625', '波密县', '542600');
INSERT INTO `users_areainfo` VALUES ('542626', '察隅县', '542600');
INSERT INTO `users_areainfo` VALUES ('542627', '朗县', '542600');
INSERT INTO `users_areainfo` VALUES ('542628', '其它区', '542600');
INSERT INTO `users_areainfo` VALUES ('610000', '陕西', '0');
INSERT INTO `users_areainfo` VALUES ('610100', '西安', '610000');
INSERT INTO `users_areainfo` VALUES ('610102', '新城区', '610100');
INSERT INTO `users_areainfo` VALUES ('610103', '碑林区', '610100');
INSERT INTO `users_areainfo` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `users_areainfo` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `users_areainfo` VALUES ('610112', '未央区', '610100');
INSERT INTO `users_areainfo` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `users_areainfo` VALUES ('610114', '阎良区', '610100');
INSERT INTO `users_areainfo` VALUES ('610115', '临潼区', '610100');
INSERT INTO `users_areainfo` VALUES ('610116', '长安区', '610100');
INSERT INTO `users_areainfo` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `users_areainfo` VALUES ('610124', '周至县', '610100');
INSERT INTO `users_areainfo` VALUES ('610125', '户县', '610100');
INSERT INTO `users_areainfo` VALUES ('610126', '高陵县', '610100');
INSERT INTO `users_areainfo` VALUES ('610127', '其它区', '610100');
INSERT INTO `users_areainfo` VALUES ('610200', '铜川', '610000');
INSERT INTO `users_areainfo` VALUES ('610202', '王益区', '610200');
INSERT INTO `users_areainfo` VALUES ('610203', '印台区', '610200');
INSERT INTO `users_areainfo` VALUES ('610204', '耀州区', '610200');
INSERT INTO `users_areainfo` VALUES ('610222', '宜君县', '610200');
INSERT INTO `users_areainfo` VALUES ('610223', '其它区', '610200');
INSERT INTO `users_areainfo` VALUES ('610300', '宝鸡', '610000');
INSERT INTO `users_areainfo` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `users_areainfo` VALUES ('610303', '金台区', '610300');
INSERT INTO `users_areainfo` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `users_areainfo` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `users_areainfo` VALUES ('610323', '岐山县', '610300');
INSERT INTO `users_areainfo` VALUES ('610324', '扶风县', '610300');
INSERT INTO `users_areainfo` VALUES ('610326', '眉县', '610300');
INSERT INTO `users_areainfo` VALUES ('610327', '陇县', '610300');
INSERT INTO `users_areainfo` VALUES ('610328', '千阳县', '610300');
INSERT INTO `users_areainfo` VALUES ('610329', '麟游县', '610300');
INSERT INTO `users_areainfo` VALUES ('610330', '凤县', '610300');
INSERT INTO `users_areainfo` VALUES ('610331', '太白县', '610300');
INSERT INTO `users_areainfo` VALUES ('610332', '其它区', '610300');
INSERT INTO `users_areainfo` VALUES ('610400', '咸阳', '610000');
INSERT INTO `users_areainfo` VALUES ('610402', '秦都区', '610400');
INSERT INTO `users_areainfo` VALUES ('610403', '杨凌区', '610400');
INSERT INTO `users_areainfo` VALUES ('610404', '渭城区', '610400');
INSERT INTO `users_areainfo` VALUES ('610422', '三原县', '610400');
INSERT INTO `users_areainfo` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `users_areainfo` VALUES ('610424', '乾县', '610400');
INSERT INTO `users_areainfo` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `users_areainfo` VALUES ('610426', '永寿县', '610400');
INSERT INTO `users_areainfo` VALUES ('610427', '彬县', '610400');
INSERT INTO `users_areainfo` VALUES ('610428', '长武县', '610400');
INSERT INTO `users_areainfo` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `users_areainfo` VALUES ('610430', '淳化县', '610400');
INSERT INTO `users_areainfo` VALUES ('610431', '武功县', '610400');
INSERT INTO `users_areainfo` VALUES ('610481', '兴平市', '610400');
INSERT INTO `users_areainfo` VALUES ('610482', '其它区', '610400');
INSERT INTO `users_areainfo` VALUES ('610500', '渭南', '610000');
INSERT INTO `users_areainfo` VALUES ('610502', '临渭区', '610500');
INSERT INTO `users_areainfo` VALUES ('610521', '华县', '610500');
INSERT INTO `users_areainfo` VALUES ('610522', '潼关县', '610500');
INSERT INTO `users_areainfo` VALUES ('610523', '大荔县', '610500');
INSERT INTO `users_areainfo` VALUES ('610524', '合阳县', '610500');
INSERT INTO `users_areainfo` VALUES ('610525', '澄城县', '610500');
INSERT INTO `users_areainfo` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `users_areainfo` VALUES ('610527', '白水县', '610500');
INSERT INTO `users_areainfo` VALUES ('610528', '富平县', '610500');
INSERT INTO `users_areainfo` VALUES ('610581', '韩城市', '610500');
INSERT INTO `users_areainfo` VALUES ('610582', '华阴市', '610500');
INSERT INTO `users_areainfo` VALUES ('610583', '其它区', '610500');
INSERT INTO `users_areainfo` VALUES ('610600', '延安', '610000');
INSERT INTO `users_areainfo` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `users_areainfo` VALUES ('610621', '延长县', '610600');
INSERT INTO `users_areainfo` VALUES ('610622', '延川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610623', '子长县', '610600');
INSERT INTO `users_areainfo` VALUES ('610624', '安塞县', '610600');
INSERT INTO `users_areainfo` VALUES ('610625', '志丹县', '610600');
INSERT INTO `users_areainfo` VALUES ('610626', '吴起县', '610600');
INSERT INTO `users_areainfo` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `users_areainfo` VALUES ('610628', '富县', '610600');
INSERT INTO `users_areainfo` VALUES ('610629', '洛川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610630', '宜川县', '610600');
INSERT INTO `users_areainfo` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `users_areainfo` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `users_areainfo` VALUES ('610633', '其它区', '610600');
INSERT INTO `users_areainfo` VALUES ('610700', '汉中', '610000');
INSERT INTO `users_areainfo` VALUES ('610702', '汉台区', '610700');
INSERT INTO `users_areainfo` VALUES ('610721', '南郑县', '610700');
INSERT INTO `users_areainfo` VALUES ('610722', '城固县', '610700');
INSERT INTO `users_areainfo` VALUES ('610723', '洋县', '610700');
INSERT INTO `users_areainfo` VALUES ('610724', '西乡县', '610700');
INSERT INTO `users_areainfo` VALUES ('610725', '勉县', '610700');
INSERT INTO `users_areainfo` VALUES ('610726', '宁强县', '610700');
INSERT INTO `users_areainfo` VALUES ('610727', '略阳县', '610700');
INSERT INTO `users_areainfo` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `users_areainfo` VALUES ('610729', '留坝县', '610700');
INSERT INTO `users_areainfo` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `users_areainfo` VALUES ('610731', '其它区', '610700');
INSERT INTO `users_areainfo` VALUES ('610800', '榆林', '610000');
INSERT INTO `users_areainfo` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `users_areainfo` VALUES ('610821', '神木县', '610800');
INSERT INTO `users_areainfo` VALUES ('610822', '府谷县', '610800');
INSERT INTO `users_areainfo` VALUES ('610823', '横山县', '610800');
INSERT INTO `users_areainfo` VALUES ('610824', '靖边县', '610800');
INSERT INTO `users_areainfo` VALUES ('610825', '定边县', '610800');
INSERT INTO `users_areainfo` VALUES ('610826', '绥德县', '610800');
INSERT INTO `users_areainfo` VALUES ('610827', '米脂县', '610800');
INSERT INTO `users_areainfo` VALUES ('610828', '佳县', '610800');
INSERT INTO `users_areainfo` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `users_areainfo` VALUES ('610830', '清涧县', '610800');
INSERT INTO `users_areainfo` VALUES ('610831', '子洲县', '610800');
INSERT INTO `users_areainfo` VALUES ('610832', '其它区', '610800');
INSERT INTO `users_areainfo` VALUES ('610900', '安康', '610000');
INSERT INTO `users_areainfo` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `users_areainfo` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `users_areainfo` VALUES ('610922', '石泉县', '610900');
INSERT INTO `users_areainfo` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `users_areainfo` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `users_areainfo` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `users_areainfo` VALUES ('610926', '平利县', '610900');
INSERT INTO `users_areainfo` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `users_areainfo` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `users_areainfo` VALUES ('610929', '白河县', '610900');
INSERT INTO `users_areainfo` VALUES ('610930', '其它区', '610900');
INSERT INTO `users_areainfo` VALUES ('611000', '商洛', '610000');
INSERT INTO `users_areainfo` VALUES ('611002', '商州区', '611000');
INSERT INTO `users_areainfo` VALUES ('611021', '洛南县', '611000');
INSERT INTO `users_areainfo` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `users_areainfo` VALUES ('611023', '商南县', '611000');
INSERT INTO `users_areainfo` VALUES ('611024', '山阳县', '611000');
INSERT INTO `users_areainfo` VALUES ('611025', '镇安县', '611000');
INSERT INTO `users_areainfo` VALUES ('611026', '柞水县', '611000');
INSERT INTO `users_areainfo` VALUES ('611027', '其它区', '611000');
INSERT INTO `users_areainfo` VALUES ('620000', '甘肃', '0');
INSERT INTO `users_areainfo` VALUES ('620100', '兰州', '620000');
INSERT INTO `users_areainfo` VALUES ('620102', '城关区', '620100');
INSERT INTO `users_areainfo` VALUES ('620103', '七里河区', '620100');
INSERT INTO `users_areainfo` VALUES ('620104', '西固区', '620100');
INSERT INTO `users_areainfo` VALUES ('620105', '安宁区', '620100');
INSERT INTO `users_areainfo` VALUES ('620111', '红古区', '620100');
INSERT INTO `users_areainfo` VALUES ('620121', '永登县', '620100');
INSERT INTO `users_areainfo` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `users_areainfo` VALUES ('620123', '榆中县', '620100');
INSERT INTO `users_areainfo` VALUES ('620124', '其它区', '620100');
INSERT INTO `users_areainfo` VALUES ('620200', '嘉峪关', '620000');
INSERT INTO `users_areainfo` VALUES ('620300', '金昌', '620000');
INSERT INTO `users_areainfo` VALUES ('620302', '金川区', '620300');
INSERT INTO `users_areainfo` VALUES ('620321', '永昌县', '620300');
INSERT INTO `users_areainfo` VALUES ('620322', '其它区', '620300');
INSERT INTO `users_areainfo` VALUES ('620400', '白银', '620000');
INSERT INTO `users_areainfo` VALUES ('620402', '白银区', '620400');
INSERT INTO `users_areainfo` VALUES ('620403', '平川区', '620400');
INSERT INTO `users_areainfo` VALUES ('620421', '靖远县', '620400');
INSERT INTO `users_areainfo` VALUES ('620422', '会宁县', '620400');
INSERT INTO `users_areainfo` VALUES ('620423', '景泰县', '620400');
INSERT INTO `users_areainfo` VALUES ('620424', '其它区', '620400');
INSERT INTO `users_areainfo` VALUES ('620500', '天水', '620000');
INSERT INTO `users_areainfo` VALUES ('620502', '秦州区', '620500');
INSERT INTO `users_areainfo` VALUES ('620503', '麦积区', '620500');
INSERT INTO `users_areainfo` VALUES ('620521', '清水县', '620500');
INSERT INTO `users_areainfo` VALUES ('620522', '秦安县', '620500');
INSERT INTO `users_areainfo` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `users_areainfo` VALUES ('620524', '武山县', '620500');
INSERT INTO `users_areainfo` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `users_areainfo` VALUES ('620526', '其它区', '620500');
INSERT INTO `users_areainfo` VALUES ('620600', '武威', '620000');
INSERT INTO `users_areainfo` VALUES ('620602', '凉州区', '620600');
INSERT INTO `users_areainfo` VALUES ('620621', '民勤县', '620600');
INSERT INTO `users_areainfo` VALUES ('620622', '古浪县', '620600');
INSERT INTO `users_areainfo` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `users_areainfo` VALUES ('620624', '其它区', '620600');
INSERT INTO `users_areainfo` VALUES ('620700', '张掖', '620000');
INSERT INTO `users_areainfo` VALUES ('620702', '甘州区', '620700');
INSERT INTO `users_areainfo` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `users_areainfo` VALUES ('620722', '民乐县', '620700');
INSERT INTO `users_areainfo` VALUES ('620723', '临泽县', '620700');
INSERT INTO `users_areainfo` VALUES ('620724', '高台县', '620700');
INSERT INTO `users_areainfo` VALUES ('620725', '山丹县', '620700');
INSERT INTO `users_areainfo` VALUES ('620726', '其它区', '620700');
INSERT INTO `users_areainfo` VALUES ('620800', '平凉', '620000');
INSERT INTO `users_areainfo` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `users_areainfo` VALUES ('620821', '泾川县', '620800');
INSERT INTO `users_areainfo` VALUES ('620822', '灵台县', '620800');
INSERT INTO `users_areainfo` VALUES ('620823', '崇信县', '620800');
INSERT INTO `users_areainfo` VALUES ('620824', '华亭县', '620800');
INSERT INTO `users_areainfo` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `users_areainfo` VALUES ('620826', '静宁县', '620800');
INSERT INTO `users_areainfo` VALUES ('620827', '其它区', '620800');
INSERT INTO `users_areainfo` VALUES ('620900', '酒泉', '620000');
INSERT INTO `users_areainfo` VALUES ('620902', '肃州区', '620900');
INSERT INTO `users_areainfo` VALUES ('620921', '金塔县', '620900');
INSERT INTO `users_areainfo` VALUES ('620922', '安西县', '620900');
INSERT INTO `users_areainfo` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `users_areainfo` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `users_areainfo` VALUES ('620981', '玉门市', '620900');
INSERT INTO `users_areainfo` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `users_areainfo` VALUES ('620983', '其它区', '620900');
INSERT INTO `users_areainfo` VALUES ('621000', '庆阳', '620000');
INSERT INTO `users_areainfo` VALUES ('621002', '西峰区', '621000');
INSERT INTO `users_areainfo` VALUES ('621021', '庆城县', '621000');
INSERT INTO `users_areainfo` VALUES ('621022', '环县', '621000');
INSERT INTO `users_areainfo` VALUES ('621023', '华池县', '621000');
INSERT INTO `users_areainfo` VALUES ('621024', '合水县', '621000');
INSERT INTO `users_areainfo` VALUES ('621025', '正宁县', '621000');
INSERT INTO `users_areainfo` VALUES ('621026', '宁县', '621000');
INSERT INTO `users_areainfo` VALUES ('621027', '镇原县', '621000');
INSERT INTO `users_areainfo` VALUES ('621028', '其它区', '621000');
INSERT INTO `users_areainfo` VALUES ('621100', '定西', '620000');
INSERT INTO `users_areainfo` VALUES ('621102', '安定区', '621100');
INSERT INTO `users_areainfo` VALUES ('621121', '通渭县', '621100');
INSERT INTO `users_areainfo` VALUES ('621122', '陇西县', '621100');
INSERT INTO `users_areainfo` VALUES ('621123', '渭源县', '621100');
INSERT INTO `users_areainfo` VALUES ('621124', '临洮县', '621100');
INSERT INTO `users_areainfo` VALUES ('621125', '漳县', '621100');
INSERT INTO `users_areainfo` VALUES ('621126', '岷县', '621100');
INSERT INTO `users_areainfo` VALUES ('621127', '其它区', '621100');
INSERT INTO `users_areainfo` VALUES ('621200', '陇南', '620000');
INSERT INTO `users_areainfo` VALUES ('621202', '武都区', '621200');
INSERT INTO `users_areainfo` VALUES ('621221', '成县', '621200');
INSERT INTO `users_areainfo` VALUES ('621222', '文县', '621200');
INSERT INTO `users_areainfo` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `users_areainfo` VALUES ('621224', '康县', '621200');
INSERT INTO `users_areainfo` VALUES ('621225', '西和县', '621200');
INSERT INTO `users_areainfo` VALUES ('621226', '礼县', '621200');
INSERT INTO `users_areainfo` VALUES ('621227', '徽县', '621200');
INSERT INTO `users_areainfo` VALUES ('621228', '两当县', '621200');
INSERT INTO `users_areainfo` VALUES ('621229', '其它区', '621200');
INSERT INTO `users_areainfo` VALUES ('622900', '临夏', '620000');
INSERT INTO `users_areainfo` VALUES ('622901', '临夏市', '622900');
INSERT INTO `users_areainfo` VALUES ('622921', '临夏县', '622900');
INSERT INTO `users_areainfo` VALUES ('622922', '康乐县', '622900');
INSERT INTO `users_areainfo` VALUES ('622923', '永靖县', '622900');
INSERT INTO `users_areainfo` VALUES ('622924', '广河县', '622900');
INSERT INTO `users_areainfo` VALUES ('622925', '和政县', '622900');
INSERT INTO `users_areainfo` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `users_areainfo` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `users_areainfo` VALUES ('622928', '其它区', '622900');
INSERT INTO `users_areainfo` VALUES ('623000', '甘南', '620000');
INSERT INTO `users_areainfo` VALUES ('623001', '合作市', '623000');
INSERT INTO `users_areainfo` VALUES ('623021', '临潭县', '623000');
INSERT INTO `users_areainfo` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `users_areainfo` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623024', '迭部县', '623000');
INSERT INTO `users_areainfo` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `users_areainfo` VALUES ('623027', '夏河县', '623000');
INSERT INTO `users_areainfo` VALUES ('623028', '其它区', '623000');
INSERT INTO `users_areainfo` VALUES ('630000', '青海', '0');
INSERT INTO `users_areainfo` VALUES ('630100', '西宁', '630000');
INSERT INTO `users_areainfo` VALUES ('630102', '城东区', '630100');
INSERT INTO `users_areainfo` VALUES ('630103', '城中区', '630100');
INSERT INTO `users_areainfo` VALUES ('630104', '城西区', '630100');
INSERT INTO `users_areainfo` VALUES ('630105', '城北区', '630100');
INSERT INTO `users_areainfo` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `users_areainfo` VALUES ('630122', '湟中县', '630100');
INSERT INTO `users_areainfo` VALUES ('630123', '湟源县', '630100');
INSERT INTO `users_areainfo` VALUES ('630124', '其它区', '630100');
INSERT INTO `users_areainfo` VALUES ('632100', '海东', '630000');
INSERT INTO `users_areainfo` VALUES ('632121', '平安县', '632100');
INSERT INTO `users_areainfo` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632123', '乐都县', '632100');
INSERT INTO `users_areainfo` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `users_areainfo` VALUES ('632129', '其它区', '632100');
INSERT INTO `users_areainfo` VALUES ('632200', '海北', '630000');
INSERT INTO `users_areainfo` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `users_areainfo` VALUES ('632222', '祁连县', '632200');
INSERT INTO `users_areainfo` VALUES ('632223', '海晏县', '632200');
INSERT INTO `users_areainfo` VALUES ('632224', '刚察县', '632200');
INSERT INTO `users_areainfo` VALUES ('632225', '其它区', '632200');
INSERT INTO `users_areainfo` VALUES ('632300', '黄南', '630000');
INSERT INTO `users_areainfo` VALUES ('632321', '同仁县', '632300');
INSERT INTO `users_areainfo` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `users_areainfo` VALUES ('632323', '泽库县', '632300');
INSERT INTO `users_areainfo` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `users_areainfo` VALUES ('632325', '其它区', '632300');
INSERT INTO `users_areainfo` VALUES ('632500', '海南', '630000');
INSERT INTO `users_areainfo` VALUES ('632521', '共和县', '632500');
INSERT INTO `users_areainfo` VALUES ('632522', '同德县', '632500');
INSERT INTO `users_areainfo` VALUES ('632523', '贵德县', '632500');
INSERT INTO `users_areainfo` VALUES ('632524', '兴海县', '632500');
INSERT INTO `users_areainfo` VALUES ('632525', '贵南县', '632500');
INSERT INTO `users_areainfo` VALUES ('632526', '其它区', '632500');
INSERT INTO `users_areainfo` VALUES ('632600', '果洛', '630000');
INSERT INTO `users_areainfo` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `users_areainfo` VALUES ('632622', '班玛县', '632600');
INSERT INTO `users_areainfo` VALUES ('632623', '甘德县', '632600');
INSERT INTO `users_areainfo` VALUES ('632624', '达日县', '632600');
INSERT INTO `users_areainfo` VALUES ('632625', '久治县', '632600');
INSERT INTO `users_areainfo` VALUES ('632626', '玛多县', '632600');
INSERT INTO `users_areainfo` VALUES ('632627', '其它区', '632600');
INSERT INTO `users_areainfo` VALUES ('632700', '玉树', '630000');
INSERT INTO `users_areainfo` VALUES ('632721', '玉树县', '632700');
INSERT INTO `users_areainfo` VALUES ('632722', '杂多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632723', '称多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632724', '治多县', '632700');
INSERT INTO `users_areainfo` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `users_areainfo` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `users_areainfo` VALUES ('632727', '其它区', '632700');
INSERT INTO `users_areainfo` VALUES ('632800', '海西', '630000');
INSERT INTO `users_areainfo` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `users_areainfo` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `users_areainfo` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `users_areainfo` VALUES ('632822', '都兰县', '632800');
INSERT INTO `users_areainfo` VALUES ('632823', '天峻县', '632800');
INSERT INTO `users_areainfo` VALUES ('632824', '其它区', '632800');
INSERT INTO `users_areainfo` VALUES ('640000', '宁夏', '0');
INSERT INTO `users_areainfo` VALUES ('640100', '银川', '640000');
INSERT INTO `users_areainfo` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `users_areainfo` VALUES ('640105', '西夏区', '640100');
INSERT INTO `users_areainfo` VALUES ('640106', '金凤区', '640100');
INSERT INTO `users_areainfo` VALUES ('640121', '永宁县', '640100');
INSERT INTO `users_areainfo` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `users_areainfo` VALUES ('640181', '灵武市', '640100');
INSERT INTO `users_areainfo` VALUES ('640182', '其它区', '640100');
INSERT INTO `users_areainfo` VALUES ('640200', '石嘴山', '640000');
INSERT INTO `users_areainfo` VALUES ('640202', '大武口区', '640200');
INSERT INTO `users_areainfo` VALUES ('640205', '惠农区', '640200');
INSERT INTO `users_areainfo` VALUES ('640221', '平罗县', '640200');
INSERT INTO `users_areainfo` VALUES ('640222', '其它区', '640200');
INSERT INTO `users_areainfo` VALUES ('640300', '吴忠', '640000');
INSERT INTO `users_areainfo` VALUES ('640302', '利通区', '640300');
INSERT INTO `users_areainfo` VALUES ('640323', '盐池县', '640300');
INSERT INTO `users_areainfo` VALUES ('640324', '同心县', '640300');
INSERT INTO `users_areainfo` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `users_areainfo` VALUES ('640382', '其它区', '640300');
INSERT INTO `users_areainfo` VALUES ('640400', '固原', '640000');
INSERT INTO `users_areainfo` VALUES ('640402', '原州区', '640400');
INSERT INTO `users_areainfo` VALUES ('640422', '西吉县', '640400');
INSERT INTO `users_areainfo` VALUES ('640423', '隆德县', '640400');
INSERT INTO `users_areainfo` VALUES ('640424', '泾源县', '640400');
INSERT INTO `users_areainfo` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `users_areainfo` VALUES ('640426', '其它区', '640400');
INSERT INTO `users_areainfo` VALUES ('640500', '中卫', '640000');
INSERT INTO `users_areainfo` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `users_areainfo` VALUES ('640521', '中宁县', '640500');
INSERT INTO `users_areainfo` VALUES ('640522', '海原县', '640500');
INSERT INTO `users_areainfo` VALUES ('640523', '其它区', '640500');
INSERT INTO `users_areainfo` VALUES ('650000', '新疆', '0');
INSERT INTO `users_areainfo` VALUES ('650100', '乌鲁木齐', '650000');
INSERT INTO `users_areainfo` VALUES ('650102', '天山区', '650100');
INSERT INTO `users_areainfo` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `users_areainfo` VALUES ('650104', '新市区', '650100');
INSERT INTO `users_areainfo` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `users_areainfo` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `users_areainfo` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `users_areainfo` VALUES ('650108', '东山区', '650100');
INSERT INTO `users_areainfo` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `users_areainfo` VALUES ('650122', '其它区', '650100');
INSERT INTO `users_areainfo` VALUES ('650200', '克拉玛依', '650000');
INSERT INTO `users_areainfo` VALUES ('650202', '独山子区', '650200');
INSERT INTO `users_areainfo` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `users_areainfo` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `users_areainfo` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `users_areainfo` VALUES ('650206', '其它区', '650200');
INSERT INTO `users_areainfo` VALUES ('652100', '吐鲁番', '650000');
INSERT INTO `users_areainfo` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `users_areainfo` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `users_areainfo` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `users_areainfo` VALUES ('652124', '其它区', '652100');
INSERT INTO `users_areainfo` VALUES ('652200', '哈密', '650000');
INSERT INTO `users_areainfo` VALUES ('652201', '哈密市', '652200');
INSERT INTO `users_areainfo` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `users_areainfo` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `users_areainfo` VALUES ('652224', '其它区', '652200');
INSERT INTO `users_areainfo` VALUES ('652300', '昌吉', '650000');
INSERT INTO `users_areainfo` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `users_areainfo` VALUES ('652302', '阜康市', '652300');
INSERT INTO `users_areainfo` VALUES ('652303', '米泉市', '652300');
INSERT INTO `users_areainfo` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `users_areainfo` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `users_areainfo` VALUES ('652325', '奇台县', '652300');
INSERT INTO `users_areainfo` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `users_areainfo` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `users_areainfo` VALUES ('652329', '其它区', '652300');
INSERT INTO `users_areainfo` VALUES ('652700', '博尔塔拉', '650000');
INSERT INTO `users_areainfo` VALUES ('652701', '博乐市', '652700');
INSERT INTO `users_areainfo` VALUES ('652722', '精河县', '652700');
INSERT INTO `users_areainfo` VALUES ('652723', '温泉县', '652700');
INSERT INTO `users_areainfo` VALUES ('652724', '其它区', '652700');
INSERT INTO `users_areainfo` VALUES ('652800', '巴音郭楞', '650000');
INSERT INTO `users_areainfo` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `users_areainfo` VALUES ('652822', '轮台县', '652800');
INSERT INTO `users_areainfo` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `users_areainfo` VALUES ('652824', '若羌县', '652800');
INSERT INTO `users_areainfo` VALUES ('652825', '且末县', '652800');
INSERT INTO `users_areainfo` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `users_areainfo` VALUES ('652827', '和静县', '652800');
INSERT INTO `users_areainfo` VALUES ('652828', '和硕县', '652800');
INSERT INTO `users_areainfo` VALUES ('652829', '博湖县', '652800');
INSERT INTO `users_areainfo` VALUES ('652830', '其它区', '652800');
INSERT INTO `users_areainfo` VALUES ('652900', '阿克苏', '650000');
INSERT INTO `users_areainfo` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `users_areainfo` VALUES ('652922', '温宿县', '652900');
INSERT INTO `users_areainfo` VALUES ('652923', '库车县', '652900');
INSERT INTO `users_areainfo` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `users_areainfo` VALUES ('652925', '新和县', '652900');
INSERT INTO `users_areainfo` VALUES ('652926', '拜城县', '652900');
INSERT INTO `users_areainfo` VALUES ('652927', '乌什县', '652900');
INSERT INTO `users_areainfo` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `users_areainfo` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `users_areainfo` VALUES ('652930', '其它区', '652900');
INSERT INTO `users_areainfo` VALUES ('653000', '克孜勒苏柯尔克孜', '650000');
INSERT INTO `users_areainfo` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `users_areainfo` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `users_areainfo` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `users_areainfo` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `users_areainfo` VALUES ('653025', '其它区', '653000');
INSERT INTO `users_areainfo` VALUES ('653100', '喀什', '650000');
INSERT INTO `users_areainfo` VALUES ('653101', '喀什市', '653100');
INSERT INTO `users_areainfo` VALUES ('653121', '疏附县', '653100');
INSERT INTO `users_areainfo` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `users_areainfo` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `users_areainfo` VALUES ('653124', '泽普县', '653100');
INSERT INTO `users_areainfo` VALUES ('653125', '莎车县', '653100');
INSERT INTO `users_areainfo` VALUES ('653126', '叶城县', '653100');
INSERT INTO `users_areainfo` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `users_areainfo` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `users_areainfo` VALUES ('653129', '伽师县', '653100');
INSERT INTO `users_areainfo` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `users_areainfo` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `users_areainfo` VALUES ('653132', '其它区', '653100');
INSERT INTO `users_areainfo` VALUES ('653200', '和田', '650000');
INSERT INTO `users_areainfo` VALUES ('653201', '和田市', '653200');
INSERT INTO `users_areainfo` VALUES ('653221', '和田县', '653200');
INSERT INTO `users_areainfo` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `users_areainfo` VALUES ('653223', '皮山县', '653200');
INSERT INTO `users_areainfo` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `users_areainfo` VALUES ('653225', '策勒县', '653200');
INSERT INTO `users_areainfo` VALUES ('653226', '于田县', '653200');
INSERT INTO `users_areainfo` VALUES ('653227', '民丰县', '653200');
INSERT INTO `users_areainfo` VALUES ('653228', '其它区', '653200');
INSERT INTO `users_areainfo` VALUES ('654000', '伊犁', '650000');
INSERT INTO `users_areainfo` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `users_areainfo` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `users_areainfo` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `users_areainfo` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `users_areainfo` VALUES ('654023', '霍城县', '654000');
INSERT INTO `users_areainfo` VALUES ('654024', '巩留县', '654000');
INSERT INTO `users_areainfo` VALUES ('654025', '新源县', '654000');
INSERT INTO `users_areainfo` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `users_areainfo` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `users_areainfo` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `users_areainfo` VALUES ('654029', '其它区', '654000');
INSERT INTO `users_areainfo` VALUES ('654200', '塔城', '650000');
INSERT INTO `users_areainfo` VALUES ('654201', '塔城市', '654200');
INSERT INTO `users_areainfo` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `users_areainfo` VALUES ('654221', '额敏县', '654200');
INSERT INTO `users_areainfo` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `users_areainfo` VALUES ('654224', '托里县', '654200');
INSERT INTO `users_areainfo` VALUES ('654225', '裕民县', '654200');
INSERT INTO `users_areainfo` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `users_areainfo` VALUES ('654227', '其它区', '654200');
INSERT INTO `users_areainfo` VALUES ('654300', '阿勒泰', '650000');
INSERT INTO `users_areainfo` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `users_areainfo` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `users_areainfo` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `users_areainfo` VALUES ('654323', '福海县', '654300');
INSERT INTO `users_areainfo` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `users_areainfo` VALUES ('654325', '青河县', '654300');
INSERT INTO `users_areainfo` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `users_areainfo` VALUES ('654327', '其它区', '654300');
INSERT INTO `users_areainfo` VALUES ('659001', '石河子', '650000');
INSERT INTO `users_areainfo` VALUES ('659002', '阿拉尔', '650000');
INSERT INTO `users_areainfo` VALUES ('659003', '图木舒克', '650000');
INSERT INTO `users_areainfo` VALUES ('659004', '五家渠', '650000');
INSERT INTO `users_areainfo` VALUES ('710000', '台湾', '0');
INSERT INTO `users_areainfo` VALUES ('710100', '台北', '710000');
INSERT INTO `users_areainfo` VALUES ('710101', '中正区', '710100');
INSERT INTO `users_areainfo` VALUES ('710102', '大同区', '710100');
INSERT INTO `users_areainfo` VALUES ('710103', '中山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710104', '松山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710105', '大安区', '710100');
INSERT INTO `users_areainfo` VALUES ('710106', '万华区', '710100');
INSERT INTO `users_areainfo` VALUES ('710107', '信义区', '710100');
INSERT INTO `users_areainfo` VALUES ('710108', '士林区', '710100');
INSERT INTO `users_areainfo` VALUES ('710109', '北投区', '710100');
INSERT INTO `users_areainfo` VALUES ('710110', '内湖区', '710100');
INSERT INTO `users_areainfo` VALUES ('710111', '南港区', '710100');
INSERT INTO `users_areainfo` VALUES ('710112', '文山区', '710100');
INSERT INTO `users_areainfo` VALUES ('710113', '其它区', '710100');
INSERT INTO `users_areainfo` VALUES ('710200', '高雄', '710000');
INSERT INTO `users_areainfo` VALUES ('710201', '新兴区', '710200');
INSERT INTO `users_areainfo` VALUES ('710202', '前金区', '710200');
INSERT INTO `users_areainfo` VALUES ('710203', '芩雅区', '710200');
INSERT INTO `users_areainfo` VALUES ('710204', '盐埕区', '710200');
INSERT INTO `users_areainfo` VALUES ('710205', '鼓山区', '710200');
INSERT INTO `users_areainfo` VALUES ('710206', '旗津区', '710200');
INSERT INTO `users_areainfo` VALUES ('710207', '前镇区', '710200');
INSERT INTO `users_areainfo` VALUES ('710208', '三民区', '710200');
INSERT INTO `users_areainfo` VALUES ('710209', '左营区', '710200');
INSERT INTO `users_areainfo` VALUES ('710210', '楠梓区', '710200');
INSERT INTO `users_areainfo` VALUES ('710211', '小港区', '710200');
INSERT INTO `users_areainfo` VALUES ('710212', '其它区', '710200');
INSERT INTO `users_areainfo` VALUES ('710300', '台南', '710000');
INSERT INTO `users_areainfo` VALUES ('710301', '中西区', '710300');
INSERT INTO `users_areainfo` VALUES ('710302', '东区', '710300');
INSERT INTO `users_areainfo` VALUES ('710303', '南区', '710300');
INSERT INTO `users_areainfo` VALUES ('710304', '北区', '710300');
INSERT INTO `users_areainfo` VALUES ('710305', '安平区', '710300');
INSERT INTO `users_areainfo` VALUES ('710306', '安南区', '710300');
INSERT INTO `users_areainfo` VALUES ('710307', '其它区', '710300');
INSERT INTO `users_areainfo` VALUES ('710400', '台中', '710000');
INSERT INTO `users_areainfo` VALUES ('710401', '中区', '710400');
INSERT INTO `users_areainfo` VALUES ('710402', '东区', '710400');
INSERT INTO `users_areainfo` VALUES ('710403', '南区', '710400');
INSERT INTO `users_areainfo` VALUES ('710404', '西区', '710400');
INSERT INTO `users_areainfo` VALUES ('710405', '北区', '710400');
INSERT INTO `users_areainfo` VALUES ('710406', '北屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710407', '西屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710408', '南屯区', '710400');
INSERT INTO `users_areainfo` VALUES ('710409', '其它区', '710400');
INSERT INTO `users_areainfo` VALUES ('710500', '金门', '710000');
INSERT INTO `users_areainfo` VALUES ('710600', '南投', '710000');
INSERT INTO `users_areainfo` VALUES ('710700', '基隆', '710000');
INSERT INTO `users_areainfo` VALUES ('710701', '仁爱区', '710700');
INSERT INTO `users_areainfo` VALUES ('710702', '信义区', '710700');
INSERT INTO `users_areainfo` VALUES ('710703', '中正区', '710700');
INSERT INTO `users_areainfo` VALUES ('710704', '中山区', '710700');
INSERT INTO `users_areainfo` VALUES ('710705', '安乐区', '710700');
INSERT INTO `users_areainfo` VALUES ('710706', '暖暖区', '710700');
INSERT INTO `users_areainfo` VALUES ('710707', '七堵区', '710700');
INSERT INTO `users_areainfo` VALUES ('710708', '其它区', '710700');
INSERT INTO `users_areainfo` VALUES ('710800', '新竹', '710000');
INSERT INTO `users_areainfo` VALUES ('710801', '东区', '710800');
INSERT INTO `users_areainfo` VALUES ('710802', '北区', '710800');
INSERT INTO `users_areainfo` VALUES ('710803', '香山区', '710800');
INSERT INTO `users_areainfo` VALUES ('710804', '其它区', '710800');
INSERT INTO `users_areainfo` VALUES ('710900', '嘉义', '710000');
INSERT INTO `users_areainfo` VALUES ('710901', '东区', '710900');
INSERT INTO `users_areainfo` VALUES ('710902', '西区', '710900');
INSERT INTO `users_areainfo` VALUES ('710903', '其它区', '710900');
INSERT INTO `users_areainfo` VALUES ('711100', '台北', '710000');
INSERT INTO `users_areainfo` VALUES ('711200', '宜兰', '710000');
INSERT INTO `users_areainfo` VALUES ('711300', '新竹', '710000');
INSERT INTO `users_areainfo` VALUES ('711400', '桃园', '710000');
INSERT INTO `users_areainfo` VALUES ('711500', '苗栗', '710000');
INSERT INTO `users_areainfo` VALUES ('711600', '台中', '710000');
INSERT INTO `users_areainfo` VALUES ('711700', '彰化', '710000');
INSERT INTO `users_areainfo` VALUES ('711900', '嘉义', '710000');
INSERT INTO `users_areainfo` VALUES ('712100', '云林', '710000');
INSERT INTO `users_areainfo` VALUES ('712200', '台南', '710000');
INSERT INTO `users_areainfo` VALUES ('712300', '高雄', '710000');
INSERT INTO `users_areainfo` VALUES ('712400', '屏东', '710000');
INSERT INTO `users_areainfo` VALUES ('712500', '台东', '710000');
INSERT INTO `users_areainfo` VALUES ('712600', '花莲', '710000');
INSERT INTO `users_areainfo` VALUES ('712700', '澎湖', '710000');
INSERT INTO `users_areainfo` VALUES ('810000', '香港', '0');
INSERT INTO `users_areainfo` VALUES ('810100', '香港岛', '810000');
INSERT INTO `users_areainfo` VALUES ('810200', '九龙', '810000');
INSERT INTO `users_areainfo` VALUES ('810300', '新界', '810000');
INSERT INTO `users_areainfo` VALUES ('820000', '澳门', '0');
INSERT INTO `users_areainfo` VALUES ('820100', '澳门', '820000');
INSERT INTO `users_areainfo` VALUES ('820200', '离岛', '820000');
INSERT INTO `users_areainfo` VALUES ('990000', '海外', '0');
INSERT INTO `users_areainfo` VALUES ('990100', '海外', '990000');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '圌山', 'banner/2023/04/tuanshan.jpg', '/scenicspots/scenic_detail/04/', '2023-04-02 13:50:00.000000');
INSERT INTO `users_banner` VALUES ('2', '得撒石磨豆腐村牡丹节', 'banner/2023/04/deisa.png', '/diarys/details/3/', '2023-04-01 13:55:00.000000');
INSERT INTO `users_banner` VALUES ('3', '柚子', 'banner/2023/04/youzi.jpg', '/shop/detail/1/', '2023-04-03 13:56:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'FhKltgTmB0IFpVYe3mq7', '935939006@qq.com', 'register', '2018-10-12 10:58:20.393510');
INSERT INTO `users_emailverifyrecord` VALUES ('3', 'Hbx0u30QZ7hrtCM0MLCR', '935939006@qq.com', 'register', '2018-10-12 11:01:32.911492');
INSERT INTO `users_emailverifyrecord` VALUES ('04', 'R4mYGWKdqQmcdHt84hQ3', '935939006@qq.com', 'register', '2018-10-12 11:02:25.343682');
INSERT INTO `users_emailverifyrecord` VALUES ('5', '11YpSjUjGDtDwE9AonqF', '1@1.com', 'register', '2018-10-12 14:12:48.749721');
INSERT INTO `users_emailverifyrecord` VALUES ('6', 'RXGbtPvMSDNlKPYxlDBC', '2@1.com', 'register', '2018-10-12 14:15:25.970193');
INSERT INTO `users_emailverifyrecord` VALUES ('7', 'yzBoPmX2VtCauCYOCWJQ', '935939006@qq.com', 'register', '2018-10-12 14:31:17.878597');
INSERT INTO `users_emailverifyrecord` VALUES ('8', 'AZoRMJTlZ1rzgKOXdU9g', '1@1.com', 'register', '2018-10-12 14:33:45.703143');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'iFdkJCRUUovbYsuAQ7Y5', '935939006@qq.com', 'find', '2018-10-15 13:36:52.762858');
INSERT INTO `users_emailverifyrecord` VALUES ('10', 'vz08FIcYuCUQBl9TdDE1', '935939006@qq.com', 'find', '2018-10-15 13:37:53.242152');
INSERT INTO `users_emailverifyrecord` VALUES ('11', 'V4ypMWg6xPdV8ZtnHigE', '935939006@qq.com', 'find', '2018-10-15 13:43:54.909407');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'nTHpST6trK0glMOFu65F', '935939006@qq.com', 'find', '2018-10-15 13:46:46.473060');
INSERT INTO `users_emailverifyrecord` VALUES ('13', '2jmJsCpbV1WsrEnqpePz', '2@1.com', 'register', '2018-10-18 16:29:45.154697');

-- ----------------------------
-- Table structure for users_myuser
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser`;
CREATE TABLE `users_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `city_addr` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `signature` varchar(300) NOT NULL,
  `portrait` varchar(100) NOT NULL,
  `integral` int(11) NOT NULL,
  `check_time` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser
-- ----------------------------
INSERT INTO `users_myuser` VALUES ('1', 'pbkdf2_sha256$120000$aMo5HWYzk25u$qjUR55oFXVRl2kqz8NNcQICgZiOt3au5f/7sjtWpNNM=', '2023-04-13 14:32:49.230618', '1', 'zhangsan', '', '', 'zhangsan@qq.com', '1', '1', '2023-04-13 14:32:49.230618', '张三', 'male', '410302', '2000-10-28', '我是张三，谁是李四', 'image/1/zhangsantouxiang.jpg', '6360', '2023-01-01');
INSERT INTO `users_myuser` VALUES ('19', 'pbkdf2_sha256$120000$gcsBQOd1LnMF$7aHzhxpAnYE2tAEcq06cvaeEa7tLnOK/Ehtids7dbIA=', '2023-04-12 14:32:49.230618', '0', 'lltesttest', '', '', 'qwertyuiop@qq.com', '0', '1', '2023-04-12 14:32:49.230618', 'll', 'secret', '410302', '2012-10-28', '', 'image/default.jpg', '0', '2023-01-01');
INSERT INTO `users_myuser` VALUES ('20', 'pbkdf2_sha256$120000$tJs9SKO8ilWd$+F7f7Ulq1DOkDXobZATVA/+Hjur+Me9LUtpD4Y5zxMo=', '2023-04-12 14:32:49.230618', '1', 'lisitest', '', '', 'kkkkk@qq.com', '1', '1', '2023-04-11 14:32:49.230618', '李四', 'female', '410302', '2008-10-28', '李四在这', 'image/default.jpg', '80', '2023-01-01');

-- Table structure for users_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_groups`;
CREATE TABLE `users_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_myuser_groups_myuser_id_group_id_701de95c_uniq` (`myuser_id`,`group_id`),
  KEY `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_myuser_groups_myuser_id_6c79e2c5_fk_users_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_myuser_user_permissions`;
CREATE TABLE `users_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_myuser_user_permis_myuser_id_permission_id_bfff4a24_uniq` (`myuser_id`,`permission_id`),
  KEY `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_myuser_user_pe_myuser_id_7135c2f9_fk_users_myu` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`),
  CONSTRAINT `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_myuser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_thecontact
-- ----------------------------
DROP TABLE IF EXISTS `users_thecontact`;
CREATE TABLE `users_thecontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city_addr` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `zip_code` varchar(6) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_thecontact_user_id_41dc7913_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `users_thecontact_user_id_41dc7913_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_thecontact
-- ----------------------------
INSERT INTO `users_thecontact` VALUES ('1', '鲁迅', '410307', '洛龙区123123', '12345678910', '000000', '1', '20');
INSERT INTO `users_thecontact` VALUES ('4', '李白', '410103', '二七区123', '13345678910', '000000', '0', '20');
INSERT INTO `users_thecontact` VALUES ('5', '黄鹤', '330303', '江南皮革厂', '18888888888', '123456', '0', '20');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2022-10-10 10:42:35.823103', '127.0.0.1', '1', '柳叶蒸饺', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2022-10-10 11:07:15.972568', '127.0.0.1', '2', '洛阳市将沿瀍河建隋唐大运河文化公园', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2022-10-10 11:08:29.798125', '127.0.0.1', '3', '用无声世界见万物！', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2022-10-10 13:32:06.467754', '127.0.0.1', '2', 'zhenjiang chart widget', 'delete', '', '21', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2022-10-11 10:48:23.914436', '127.0.0.1', '4', '江南三月天，镇江访茶不负春', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2022-10-11 11:00:37.924868', '127.0.0.1', '5', '这些耳熟能详的成语，竟然都源自镇江！', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2022-10-11 11:02:02.661968', '127.0.0.1', '6', '想要感受非遗魅力？跟着镇江这3条线路走就对啦!', 'create', '已添加。', '7', '1');

INSERT INTO `xadmin_log` VALUES ('14', '2022-10-16 09:56:03.518954', '127.0.0.1', '1', '金山寺', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2022-10-16 09:59:59.531402', '127.0.0.1', '2', '津渡', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2022-10-16 10:03:37.853497', '127.0.0.1', '3', '南山风景名胜区', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2022-10-16 10:05:52.755536', '127.0.0.1', '4', '镇江醋文化博物馆', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2022-10-16 10:07:06.080483', '127.0.0.1', '2', '江心洲橘江里景区', 'change', '修改 content，image，picture 和 classification', '14', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2022-10-16 10:11:52.041962', '127.0.0.1', '5', '中国国花园', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2022-10-16 14:32:54.486516', '127.0.0.1', '1', '镇江醋文化3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2022-10-16 14:33:55.159881', '127.0.0.1', '2', '镇江醋文化2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2022-10-16 14:34:15.115077', '127.0.0.1', '3', '镇江醋文化1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2022-10-16 14:34:55.054430', '127.0.0.1', '4', '南山5', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2022-10-16 14:35:08.536700', '127.0.0.1', '5', '南山4', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2022-10-16 14:37:24.587301', '127.0.0.1', '6', '南山3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2022-10-16 14:37:42.227205', '127.0.0.1', '7', '南山2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2022-10-16 14:37:54.152295', '127.0.0.1', '8', '南山1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2022-10-16 14:39:12.403774', '127.0.0.1', '9', '西津渡3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2022-10-16 14:39:28.089317', '127.0.0.1', '10', '西津渡2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2022-10-16 14:39:41.139562', '127.0.0.1', '11', '西津渡1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2022-10-16 14:41:17.375594', '127.0.0.1', '12', '江心洲3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2022-10-16 14:41:30.340473', '127.0.0.1', '13', '江心洲2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2022-10-16 14:41:51.657849', '127.0.0.1', '14', '江心洲1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2022-10-16 14:43:59.118645', '127.0.0.1', '15', '金山寺1', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2022-10-16 14:44:07.845410', '127.0.0.1', '16', '金山寺2', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2022-10-16 14:44:16.499789', '127.0.0.1', '17', '金山寺3', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2022-10-16 14:44:25.098913', '127.0.0.1', '18', '金山寺4', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2022-10-16 14:44:33.903883', '127.0.0.1', '19', '金山寺5', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2022-10-16 16:14:30.251302', '127.0.0.1', '5', '金山寺', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2022-10-16 16:15:48.876657', '127.0.0.1', '04', '南山风景名胜区', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2022-10-16 16:16:42.937816', '127.0.0.1', '3', '镇江醋文化博物馆', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2022-10-16 16:18:20.202226', '127.0.0.1', '2', '西津渡', 'change', '修改 image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2022-10-16 16:19:44.533005', '127.0.0.1', '1', '西津渡', 'change', '修改 content，image，picture，x 和 y', '14', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2022-10-16 16:37:05.185580', '127.0.0.1', '5', '江心洲橘江里景区', 'change', '修改 content，image 和 picture', '14', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2022-10-29 14:05:41.290457', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户小组件', null, '1');
INSERT INTO `xadmin_log` VALUES ('46', '2022-11-01 14:19:53.941579', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2022-11-01 14:20:53.163427', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2022-11-01 14:33:57.437645', '127.0.0.1', '1', 'ProPic object (1)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2022-11-01 14:34:10.720440', '127.0.0.1', '2', 'ProPic object (2)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2022-11-01 14:34:22.422460', '127.0.0.1', '3', 'ProPic object (3)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2022-11-01 14:34:30.303034', '127.0.0.1', '04', 'ProPic object (04)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2022-11-01 14:34:44.124106', '127.0.0.1', '5', 'ProPic object (5)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2022-11-01 14:36:16.843383', '127.0.0.1', '6', 'ProPic object (6)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2022-11-01 14:36:24.104535', '127.0.0.1', '7', 'ProPic object (7)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2022-11-01 14:36:28.589285', '127.0.0.1', '8', 'ProPic object (8)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2022-11-01 14:39:04.526280', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2022-11-01 14:39:22.406704', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2022-11-01 14:40:12.015319', '127.0.0.1', '9', 'ProPic object (9)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2022-11-01 14:40:15.797181', '127.0.0.1', '10', 'ProPic object (10)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2022-11-01 14:40:20.244996', '127.0.0.1', '11', 'ProPic object (11)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2022-11-01 14:40:49.722989', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 pro_type', '23', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2022-11-01 14:40:55.974585', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'change', '修改 pro_type 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2022-11-01 14:41:01.198019', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'change', '修改 pro_type 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2022-11-01 14:46:35.120417', '127.0.0.1', '04', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2022-11-01 14:47:27.019271', '127.0.0.1', '12', 'ProPic object (12)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2022-11-01 14:47:31.842376', '127.0.0.1', '13', 'ProPic object (13)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2022-11-01 14:49:38.204423', '127.0.0.1', '5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2022-11-01 14:50:35.260407', '127.0.0.1', '14', 'ProPic object (14)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2022-11-01 14:50:40.252648', '127.0.0.1', '15', 'ProPic object (15)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2022-11-01 14:50:45.123673', '127.0.0.1', '16', 'ProPic object (16)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2022-11-01 14:50:49.454072', '127.0.0.1', '17', 'ProPic object (17)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2022-11-01 14:53:17.453270', '127.0.0.1', '6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2022-11-01 14:53:48.313405', '127.0.0.1', '18', 'ProPic object (18)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2022-11-01 14:53:52.339299', '127.0.0.1', '19', 'ProPic object (19)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2022-11-01 14:55:15.474960', '127.0.0.1', '7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2022-11-01 14:55:45.674437', '127.0.0.1', '20', 'ProPic object (20)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2022-11-01 14:57:13.843137', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力 休', 'create', '已添加。', '23', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2022-11-01 14:58:01.594255', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', 'change', '修改 name 和 details', '23', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2022-11-01 14:59:13.923915', '127.0.0.1', '21', 'ProPic object (21)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2022-11-01 14:59:17.940797', '127.0.0.1', '22', 'ProPic object (22)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2022-11-01 14:59:21.902896', '127.0.0.1', '23', 'ProPic object (23)', 'create', '已添加。', '24', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2022-11-01 15:59:23.511235', '127.0.0.1', '8', '德芙 Dove巧克力分享碗装 丝滑牛奶巧克力 糖果巧克力', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2022-11-01 16:00:06.752761', '127.0.0.1', '7', '木制帆船33cm深蓝色2050 客厅酒柜电视柜摆件家居装饰品', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2022-11-01 16:00:53.593375', '127.0.0.1', '6', '纯铜梅花鹿摆件新中式家居客厅装饰品玄关茶几电视柜创意艺术工艺', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2022-11-01 16:01:30.828847', '127.0.0.1', '5', '黄豆江西农家非转基因自种 5斤打豆浆生豆芽专用散装小黄豆', 'change', '修改 details 和 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2022-11-01 16:01:59.984094', '127.0.0.1', '04', '东北大米新米 农家自产长粒香大米5kg精选不抛光散装粳米10', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2022-11-01 16:02:46.976466', '127.0.0.1', '3', '新鲜有机水果大红寒富苹果农场现摘红富士甜脆可口1斤包邮', 'change', '修改 mainimg', '23', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2022-11-01 16:03:43.478598', '127.0.0.1', '2', '无籽青柠檬 皮薄汁多新鲜水果 500g', 'change', '修改 mainimg 和 add_time', '23', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2022-11-01 16:04:43.679259', '127.0.0.1', '1', '红心柚子10斤整箱福建平和管溪蜜柚新鲜水果包邮红肉密柚', 'change', '修改 mainimg 和 add_time', '23', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2022-11-19 11:02:10.604128', '127.0.0.1', '1', '金山、焦山、北固山、西津渡精品二日游', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2022-11-19 11:06:21.945606', '127.0.0.1', '2', '茅山景区“惠民畅游”！', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2022-11-19 11:15:25.527280', '127.0.0.1', '3', '句容茅山景区+南山+西津渡古街等10景点24小时畅游卡', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2022-11-19 14:45:02.192425', '127.0.0.1', '2', '茅山景区“惠民畅游”！', 'change', '修改 introduce 和 image', '12', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2022-11-19 14:45:02.298082', '127.0.0.1', '2', '茅山景区“惠民畅游”！', 'change', '修改 introduce 和 image', '12', '1');


-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
