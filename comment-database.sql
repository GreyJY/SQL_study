DROP TABLE IF EXISTS 'user';--判断user这个表是否存在，存在就删除，不存在就跳过
--IF EXISTS 用于避免因为表不存在而报错
--''用于标识表名，与字段名

--创建一个叫做user的表
CREATE TABLE 'user'(
  'id'BIGINT NOT NULL AUTO_INCREMENT,
)ENGINE=InnoDB DEFAULT CHARSET=utf;
