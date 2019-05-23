use miaosha;
create table miaosha_user(
id bigint(20) not null,
nickname varchar(255) not null,
password varchar(32) not null,
salt varchar(10) default null,
head varchar(128) default null,
register_date datetime default null,
last_login_date datetime default null,
login_count int(11) default '0' ,
primary key(id)
)engine=InnoDB default charset=utf8mb4;

create table goods(
id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
goods_name varchar(16) DEFAULT NULL COMMENT '商品名称',
goods_title varchar(64) default null comment '商品标题',
goods_img varchar(64) default null comment '商品图片',
goods_detail longtext comment '商品详情介绍',
goods_price decimal(10,2) default '0.00' comment '商品价格',
goods_stock int(11) default '0' comment '商品库存，-1表示没有限制',
primary key (id)
) engine=InnoDB auto_increment=3 DEFAULT CHARSET=utf8mb4;

create table miaosha_goods(
id bigint(20) not null auto_increment comment '秒杀商品ID',
goods_id bigint(20) default null comment '商品ID',
miaosha_price decimal(10,2) default '0.00' comment '秒杀价格',
stock_count int(11) default null comment '库存数量',
start_date datetime default null comment '秒杀开始时间',
end_date datetime default null comment '秒杀结束时间',
primary key (id)
)engine=InnoDB auto_increment=3 DEFAULT CHARSET=utf8mb4;

create table order_info(
id bigint(20) not null auto_increment,
user_id bigint(20) default null,
goods_id bigint(20) default null,
delivery_addr_id bigint(20) default null,
goods_name varchar(16) default null,
goods_count int(11) default '0',
goods_price decimal(10,2) default '0.00',
order_channel tinyint(4) default '0',
status tinyint(4) default '0',
create_date datetime default null,
pay_date datetime default null,
primary key (id)
)engine=InnoDB auto_increment=12 default charset=utf8mb4;

create table miaosha_order(
id bigint(20) auto_increment not null,
user_id bigint(20) default null,
order_id bigint(20) default null,
goods_id bigint(20) default null,
primary key (id)
)engine=InnoDB auto_increment=3 default charset=utf8mb4;
