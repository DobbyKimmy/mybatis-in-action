-- 用户表
CREATE TABLE USER (
    ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100) NOT NULL,
    TEL VARCHAR (200) NOT NULL UNIQUE,
    ADDRESS VARCHAR (100),
    CREATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
    UPDATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
);

-- 商品表
CREATE TABLE GOODS(
    ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100) NOT NULL,
    PRICE DECIMAL NOT NULL,
    CREATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
    UPDATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
);

-- 订单表
CREATE TABLE `ORDERS`(
    ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    USER_ID BIGINT,
    GOODS_ID BIGINT,
    GOODS_NUM INT,  -- 下单的商品数量
    GOODS_PRICE DECIMAL NOT NULL, -- 下单时的商品单价
    CREATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
    UPDATED_AT TIMESTAMP NOT NULL DEFAULT NOW(),
);

INSERT INTO USER (ID, NAME, TEL, ADDRESS) VALUES (1, 'zhangsan', 'tel1', 'beijing');
INSERT INTO USER (ID, NAME, TEL, ADDRESS) VALUES (2, 'lisi', 'tel2', 'shanghai');
INSERT INTO USER (ID, NAME, TEL, ADDRESS) VALUES (3, 'wangwu', 'tel3', 'shanghai');
INSERT INTO USER (ID, NAME, TEL, ADDRESS) VALUES (4, 'zhangsan', 'tel4', 'shenzhen');

INSERT INTO GOODS (ID, NAME, PRICE) VALUES (1, 'goods1', 10);
INSERT INTO GOODS (ID, NAME, PRICE) VALUES (2, 'goods2', 20);
INSERT INTO GOODS (ID, NAME, PRICE) VALUES (3, 'goods3', 30);
INSERT INTO GOODS (ID, NAME, PRICE) VALUES (4, 'goods4', 40);
INSERT INTO GOODS (ID, NAME, PRICE) VALUES (5, 'goods5', 50);

INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (1,1, 1, 5, 10);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (2,2, 1, 1, 10);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (3,2, 1, 2, 10);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (4,4, 2, 4, 20);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (5,4, 2, 100, 20);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (6,4, 3, 1, 20);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (7,5, 4, 1, 20);
INSERT INTO `ORDERS` (ID,USER_ID, GOODS_ID, GOODS_NUM, GOODS_PRICE) VALUES (8,5, 6, 1, 60);
