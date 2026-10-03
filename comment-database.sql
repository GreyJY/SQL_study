DROP TABLE IF EXISTS 'user';--判断user这个表是否存在，存在就删除，不存在就跳过
--IF EXISTS 用于避免因为表不存在而报错
--''用于标识表名，与字段名

--创建一个叫做user的表
CREATE TABLE 'user'(
  'id'BIGINT NOT NULL AUTO_INCREMENT,--id编号，bigint大整数类型，notnull不能为空，后面后缀是插入数据时候，如果不指定id，数据库自动生成编号
  --末尾都好表示后面还有语句
  'user_name'VARCHAR(20)NOT NULL,--可变长度字符串，最多保存20个字符。notnull不会静止空字符串，也不会禁止用户名重复

  'pwd'VARCHAR(32)NOT NULL,--32只是长度限制，不会自动加密和散列密码

'nick_name'VARCHAR(20)NOT NULL,

'avatar'VARCHAR(200),

'gmt_created'datetime NOT NULL,--datetime日期，可以用Java后端插入或者数据库自己的方法

'gmt_modified'datetime  NOT NULL,

PRIMARY KEY('id')--将id设为主键，用于唯一标识每一个用户，主键值不能重复，也不能为null，这是括号最后一项，不需要加逗号

)ENGINE=InnoDB DEFAULT CHARSET=utf;--右括号结束字段和约束的定义，engine=InnoDB:使用

INSERT INTO--向表里插入一条记录，下面则是指定要赋值的字段，以及顺序，后面给出对应字段的值
user(user_name,pwd,nick_name,gmt_created,gmt_modified)VALUES('admin','123','管理员',now(),now())--后面两个now则是当前日期和时间的意思

DROP TABLE IF EXISTS 'comment';

CREATE TABLE 'comment'(
'id'BIGINT NOT NULL AUTO_INCREMENT,
'ref_id'VARCHAR(32)NOT NULL,
'user_id'BIGINT NOT NULL,
'content'VARCHAR(1000)NOT NULL,
'parent_id'BIGINT,
'gmt_created'datetime NOT NULL,
'gmt_modified'datetime NOT NULL,
PRIMARY KEY ('id')
  
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
