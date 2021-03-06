SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '机构名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='机构管理';


-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('17', '轻尘集团', null, '0', 'admin', '2018-09-23 19:35:22', null, null, '0');
INSERT INTO `sys_dept` VALUES ('18', '牧尘集团', null, '1', 'admin', '2018-09-23 19:35:55', null, null, '0');
INSERT INTO `sys_dept` VALUES ('19', '三国集团', null, '2', 'admin', '2018-09-23 19:36:24', null, null, '0');
INSERT INTO `sys_dept` VALUES ('21', '上海分公司', '18', '0', 'admin', '2018-09-23 19:37:03', null, null, '0');
INSERT INTO `sys_dept` VALUES ('22', '北京分公司', '17', '1', 'admin', '2018-09-23 19:37:17', null, null, '0');
INSERT INTO `sys_dept` VALUES ('23', '北京分公司', '18', '1', 'admin', '2018-09-23 19:37:28', null, null, '0');
INSERT INTO `sys_dept` VALUES ('25', '技术部', '22', '0', 'admin', '2018-09-23 19:38:00', null, null, '0');
INSERT INTO `sys_dept` VALUES ('26', '技术部', '21', '0', 'admin', '2018-09-23 19:38:10', null, null, '0');
INSERT INTO `sys_dept` VALUES ('27', '技术部', '23', '0', 'admin', '2018-09-23 19:38:17', null, null, '0');
INSERT INTO `sys_dept` VALUES ('29', '市场部', '22', '0', 'admin', '2018-09-23 19:38:45', null, null, '0');
INSERT INTO `sys_dept` VALUES ('30', '市场部', '23', '0', 'admin', '2018-09-23 19:39:01', null, null, '0');
INSERT INTO `sys_dept` VALUES ('33', '魏国', '19', '0', 'admin', '2018-09-23 19:40:42', null, null, '0');
INSERT INTO `sys_dept` VALUES ('34', '蜀国', '19', '1', 'admin', '2018-09-23 19:40:54', null, null, '0');
INSERT INTO `sys_dept` VALUES ('35', '吴国', '19', '2', 'admin', '2018-09-23 19:41:04', null, null, '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('3', 'male', '男', 'sex', '性别', '0', 'admin', '2018-09-23 19:52:54', null, null, '性别', '0');
INSERT INTO `sys_dict` VALUES ('4', 'female', '女', 'sex', '性别', '1', 'admin', '2018-09-23 19:53:17', null, null, '性别', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1754 DEFAULT CHARSET=utf8 COMMENT='系统日志';


-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1071', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:16', null, null);
INSERT INTO `sys_log` VALUES ('1072', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:17', null, null);
INSERT INTO `sys_log` VALUES ('1073', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '36', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:18', null, null);
INSERT INTO `sys_log` VALUES ('1074', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:20', null, null);
INSERT INTO `sys_log` VALUES ('1075', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:20', null, null);
INSERT INTO `sys_log` VALUES ('1076', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '27', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:21', null, null);
INSERT INTO `sys_log` VALUES ('1077', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:22', null, null);
INSERT INTO `sys_log` VALUES ('1078', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:23', null, null);
INSERT INTO `sys_log` VALUES ('1079', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '5', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:30', null, null);
INSERT INTO `sys_log` VALUES ('1080', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:31', null, null);
INSERT INTO `sys_log` VALUES ('1081', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '30', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:37', null, null);
INSERT INTO `sys_log` VALUES ('1082', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:38', null, null);
INSERT INTO `sys_log` VALUES ('1083', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '37', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:39', null, null);
INSERT INTO `sys_log` VALUES ('1084', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":2,\"pageSize\":8}', '16', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:42', null, null);
INSERT INTO `sys_log` VALUES ('1085', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:54:44', null, null);
INSERT INTO `sys_log` VALUES ('1086', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:55:11', null, null);
INSERT INTO `sys_log` VALUES ('1087', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '4', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:55:13', null, null);
INSERT INTO `sys_log` VALUES ('1088', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '7', '0:0:0:0:0:0:0:1', 'admin', '2018-09-23 19:55:20', null, null);
INSERT INTO `sys_log` VALUES ('1089', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '218.1.24.246', 'admin', '2018-11-02 18:55:56', null, null);
INSERT INTO `sys_log` VALUES ('1090', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '218.1.24.246', 'admin', '2018-11-02 18:55:56', null, null);
INSERT INTO `sys_log` VALUES ('1091', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '0', '115.231.109.46', 'admin', '2018-11-02 19:12:01', null, null);
INSERT INTO `sys_log` VALUES ('1092', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '2', '115.231.109.46', 'admin', '2018-11-02 19:12:22', null, null);
INSERT INTO `sys_log` VALUES ('1093', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '2', '115.231.109.46', 'admin', '2018-11-02 19:12:22', null, null);
INSERT INTO `sys_log` VALUES ('1094', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '31', '115.231.109.46', 'admin', '2018-11-02 19:12:22', null, null);
INSERT INTO `sys_log` VALUES ('1095', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '115.231.109.46', 'admin', '2018-11-02 19:12:22', null, null);
INSERT INTO `sys_log` VALUES ('1096', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '115.231.109.46', 'admin', '2018-11-02 19:12:24', null, null);
INSERT INTO `sys_log` VALUES ('1097', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '112.24.214.181', 'admin', '2018-11-02 19:12:24', null, null);
INSERT INTO `sys_log` VALUES ('1098', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '112.24.214.181', 'admin', '2018-11-02 19:12:40', null, null);
INSERT INTO `sys_log` VALUES ('1099', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '112.24.214.181', 'admin', '2018-11-02 19:12:40', null, null);
INSERT INTO `sys_log` VALUES ('1100', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '13', '112.24.214.181', 'admin', '2018-11-02 19:12:41', null, null);
INSERT INTO `sys_log` VALUES ('1101', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '0', '112.24.214.181', 'admin', '2018-11-02 19:12:41', null, null);
INSERT INTO `sys_log` VALUES ('1102', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '0', '112.24.214.181', 'admin', '2018-11-02 19:12:45', null, null);
INSERT INTO `sys_log` VALUES ('1103', 'admin', null, 'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findById()', '1', '1', '112.24.214.181', 'admin', '2018-11-02 19:12:50', null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL,类型：1.普通页面（如用户管理， /sys/user） 2.嵌套完整外部页面，以http(s)开头的链接 3.嵌套服务器页面，使用iframe:前缀+目标URL(如SQL监控， iframe:/druid/login.html, iframe:前缀会替换成服务器地址)',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='菜单管理';


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', null, null, '0', 'el-icon-setting', '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('2', '用户管理', '1', '/sys/user', null, '1', 'el-icon-service', '1', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('3', '机构管理', '1', '/sys/dept', null, '1', 'el-icon-news', '2', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', '1', '/sys/role', null, '1', 'el-icon-view', '4', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '1', '/sys/menu', null, '1', 'el-icon-menu', '5', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('6', '数据监控', '43', 'http://139.196.87.48:8001/druid/login.html', null, '1', 'el-icon-warning', '0', null, null, 'admin', '2018-12-27 11:03:45', '0');
INSERT INTO `sys_menu` VALUES ('7', '字典管理', '1', '/sys/dict', null, '1', 'el-icon-edit-outline', '7', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('8', '系统日志', '1', '/sys/log', 'sys:log:view', '1', 'el-icon-info', '8', null, null, 'admin', '2018-09-23 19:32:28', '0');
INSERT INTO `sys_menu` VALUES ('9', '查看', '2', null, 'sys:user:view', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('10', '新增', '2', null, 'sys:user:add', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('11', '修改', '2', null, 'sys:user:edit', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('12', '删除', '2', null, 'sys:user:delete', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('13', '查看', '3', null, 'sys:dept:view', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('14', '新增', '3', null, 'sys:dept:add', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('15', '修改', '3', null, 'sys:dept:edit', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('16', '删除', '3', null, 'sys:dept:delete', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('17', '查看', '4', null, 'sys:role:view', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('18', '新增', '4', null, 'sys:role:add', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('19', '修改', '4', null, 'sys:role:edit', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('20', '删除', '4', null, 'sys:role:delete', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('21', '查看', '5', null, 'sys:menu:view', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('22', '新增', '5', null, 'sys:menu:add', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('23', '修改', '5', null, 'sys:menu:edit', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('24', '删除', '5', null, 'sys:menu:delete', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('28', '使用案例', '0', null, null, '0', 'el-icon-picture-outline', '6', null, null, 'admin', '2018-11-15 14:39:43', '0');
INSERT INTO `sys_menu` VALUES ('29', '国际化', '28', '/demo/i18n', null, '1', 'el-icon-edit', '1', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('30', '换皮肤', '28', '/demo/theme', null, '1', 'el-icon-picture', '2', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('31', '查看', '7', null, 'sys:dict:view', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('32', '新增', '7', null, 'sys:dict:add', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('33', '修改', '7', null, 'sys:dict:edit', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('34', '删除', '7', null, 'sys:dict:delete', '2', null, '0', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('35', '接口文档', '0', 'http://139.196.87.48:8001/swagger-ui.html', null, '1', 'el-icon-document', '3', null, null, 'admin', '2018-12-27 11:04:18', '0');
INSERT INTO `sys_menu` VALUES ('38', '服务监控', '43', 'http://139.196.87.48:8000/', '', '1', 'el-icon-view', '1', 'admin', '2018-11-02 20:02:15', 'admin', '2018-12-27 11:03:53', '0');
INSERT INTO `sys_menu` VALUES ('41', '注册中心', '44', 'http://139.196.87.48:8500', '', '1', ' el-icon-view', '0', 'admin', '2018-11-03 11:06:48', 'admin', '2018-12-27 11:08:11', '0');
INSERT INTO `sys_menu` VALUES ('42', '代码生成', '0', '/generator/generator', '', '1', 'el-icon-star-on', '5', 'admin', '2018-11-15 14:39:30', 'admin', '2018-11-15 14:56:18', '0');
INSERT INTO `sys_menu` VALUES ('43', '系统监控', '0', '', '', '0', 'el-icon-info', '1', 'admin', '2018-12-27 10:57:29', 'admin', '2018-12-27 11:02:26', '0');
INSERT INTO `sys_menu` VALUES ('44', '服务治理', '0', '', '', '0', 'el-icon-service', '2', 'admin', '2018-12-27 11:05:48', 'admin', '2018-12-27 11:06:39', '0');


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色管理';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '超级管理员', 'admin', '2018-08-14 11:11:11', 'admin', '2018-09-23 19:07:18', '0');
INSERT INTO `sys_role` VALUES ('2', 'dev', '开发人员', 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', '0');
INSERT INTO `sys_role` VALUES ('3', 'test', '测试人员', 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', '0');
INSERT INTO `sys_role` VALUES ('8', 'mng', '部门经理', 'admin', '2018-09-23 19:09:52', null, null, '0');


-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色机构';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8 COMMENT='角色菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('224', '4', '1', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('225', '4', '2', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('226', '4', '9', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('227', '4', '3', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('228', '4', '13', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('229', '4', '4', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('230', '4', '17', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('231', '4', '5', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('232', '4', '21', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('233', '4', '6', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('234', '4', '7', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('235', '4', '31', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('236', '4', '8', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('237', '4', '25', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('238', '4', '26', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('239', '4', '27', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('240', '4', '28', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('241', '4', '29', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('242', '4', '30', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('243', '4', '35', 'admin', '2018-09-23 16:22:41', null, null);
INSERT INTO `sys_role_menu` VALUES ('388', '2', '1', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('389', '2', '2', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('390', '2', '9', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('391', '2', '3', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('392', '2', '13', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('393', '2', '17', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('394', '2', '5', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('395', '2', '21', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('396', '2', '7', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('397', '2', '31', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('398', '2', '8', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('399', '2', '6', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('400', '2', '35', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('401', '2', '28', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('402', '2', '29', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('403', '2', '30', 'admin', '2018-09-23 19:51:53', null, null);
INSERT INTO `sys_role_menu` VALUES ('404', '3', '1', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('405', '3', '2', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('406', '3', '9', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('407', '3', '3', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('408', '3', '13', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('409', '3', '8', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('410', '3', '6', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('411', '3', '28', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('412', '3', '29', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('413', '3', '30', 'admin', '2018-09-23 19:51:55', null, null);
INSERT INTO `sys_role_menu` VALUES ('431', '8', '1', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('432', '8', '2', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('433', '8', '9', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('434', '8', '3', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('435', '8', '13', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('436', '8', '4', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('437', '8', '17', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('438', '8', '5', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('439', '8', '21', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('440', '8', '7', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('441', '8', '31', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('442', '8', '8', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('443', '8', '6', 'admin', '2018-09-23 19:55:08', null, null);
INSERT INTO `sys_role_menu` VALUES ('444', '8', '35', 'admin', '2018-09-23 19:55:08', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='用户管理';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'bd1718f058d8a02468134432b8656a86', 'YzcmCZNvbXocrsz9dm8e', 'admin@qq.com', '13612345678', '1', '4', 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', '0');
INSERT INTO `sys_user` VALUES ('22', '刘备', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '34', 'admin', '2018-09-23 19:43:00', 'admin', '2018-11-04 10:12:45', '0');
INSERT INTO `sys_user` VALUES ('23', '赵云', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '34', 'admin', '2018-09-23 19:43:44', 'admin', '2018-09-23 19:43:52', '0');
INSERT INTO `sys_user` VALUES ('24', '诸葛亮', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '34', 'admin', '2018-09-23 19:44:23', 'admin', '2018-09-23 19:44:29', '0');
INSERT INTO `sys_user` VALUES ('25', '曹操', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '33', 'admin', '2018-09-23 19:45:32', 'admin', '2018-09-23 19:45:37', '0');
INSERT INTO `sys_user` VALUES ('26', '典韦', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '33', 'admin', '2018-09-23 19:45:48', 'admin', '2018-09-23 19:45:57', '0');
INSERT INTO `sys_user` VALUES ('27', '夏侯惇', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '33', 'admin', '2018-09-23 19:46:09', 'admin', '2018-09-23 19:46:17', '0');
INSERT INTO `sys_user` VALUES ('28', '荀彧', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '33', 'admin', '2018-09-23 19:46:38', 'admin', '2018-11-04 15:33:17', '0');
INSERT INTO `sys_user` VALUES ('29', '孙权', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '35', 'admin', '2018-09-23 19:46:54', 'admin', '2018-09-23 19:47:03', '0');
INSERT INTO `sys_user` VALUES ('30', '周瑜', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '35', 'admin', '2018-09-23 19:47:28', 'admin', '2018-09-23 19:48:04', '0');
INSERT INTO `sys_user` VALUES ('31', '陆逊', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '35', 'admin', '2018-09-23 19:47:44', 'admin', '2018-09-23 19:47:58', '0');
INSERT INTO `sys_user` VALUES ('32', '黄盖', 'fd80ebd493a655608dc893a9f897d845', 'YzcmCZNvbXocrsz9dm8e', 'test@qq.com', '13889700023', '1', '35', 'admin', '2018-09-23 19:48:38', 'admin', '2018-09-23 19:49:02', '0');


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='用户角色';


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('2', '2', '1', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('26', '5', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('33', '6', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('34', '4', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('35', '9', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('36', '10', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('37', '11', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('38', '12', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('39', '15', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('41', '16', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('42', '8', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('43', '7', '4', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('45', '18', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('46', '17', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('47', '3', '4', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('48', '21', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('50', '23', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('51', '24', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('52', '25', '8', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('53', '26', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('54', '27', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('56', '29', '8', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('57', '31', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('58', '30', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('59', '32', '3', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('68', '33', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('69', '22', '8', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('70', '22', '2', null, null, null, null);
INSERT INTO `sys_user_role` VALUES ('71', '28', '2', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', '1', 'ee02ead2c1e3a113f82accafaf878b69', '2018-12-27 23:08:41', null, null, 'admin', '2018-12-27 11:08:41');
INSERT INTO `sys_user_token` VALUES ('2', '17', '3d32077ccddb6eb2c4302feb93765cd0', '2018-09-24 05:11:17', null, null, null, '2018-09-23 17:11:17');
INSERT INTO `sys_user_token` VALUES ('3', '18', 'a939ac41fd309ca785485b4135b8baad', '2018-09-24 05:10:36', null, null, null, '2018-09-23 17:10:36');
INSERT INTO `sys_user_token` VALUES ('4', '33', '605dbcfa2277cbca3b2a124974816080', '2018-11-04 21:42:49', null, null, null, '2018-11-04 09:42:49');