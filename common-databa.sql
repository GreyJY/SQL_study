--索引的不同形式
--PRIMARY KEY (字段名)主键索引
--UNIQUE KEY 索引名 (字段名)唯一索引
--KEY 索引名 (字段名)-->可以把key换成index普通索引

--1.用户表
CREATE TABLE 't_user'(
  'id' BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键', --定义表列id,BIGINT大整数；NOT NULL非空；AUTO_INCREMENT自增；
  --注释主键
  'username' VARCHAR(50)NOT NULL COMMENT '账号',--账号，变长字符串最多50字符，非空
  'password'VARCHAR(255)NOT NULL COMMENT '密码(加密存储)',--密码，最多255字符，存加密哈希后的值
  PRINARY KEY('id'), --主键是id,且唯一非空InnoDB聚族索引
  UNIQUE KEY 'uk_username'('username')COMMENT'账号唯一索引')--在username上建立唯一索引，索引名uk_username,账号不可重复
  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';--表结束，存储引擎 InnoDB，默认字符集 utf8mb4，表注释

--2.签到表
CREATE TABLE `t_user_sign` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` BIGINT NOT NULL COMMENT '用户ID',
  `sign_month` VARCHAR(10) NOT NULL COMMENT '签到月份(如2025-09)',
  `sign_days` VARCHAR(100) NOT NULL COMMENT '当月签到日期集合(如:1,2,3,15)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_month` (`user_id`, `sign_month`) COMMENT '确保一人一月一条记录'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户
