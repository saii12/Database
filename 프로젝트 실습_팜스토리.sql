# 날짜 : 2023/08/16
# 이름 : 박한산
# 내용 : 팜스토리 데이터베이스 설계

# 데이터베이스 생성
CREATE DATABASE `Farmstory`;

# 회원 테이블
CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

# 약관 테이블
CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);

# 게시물 테이블
CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0, /*DEFAULT 0 이니까 NOT NULL임*/
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL, /*글자수 제한 없음*/
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL, /*회원만 작성자 가능하니까 uid 참조할 것*/
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);

# 파일 테이블
CREATE TABLE `File`(
	`fno`			INT	AUTO_INCREMENT PRIMARY KEY,	
	`ano`			INT	NOT NULL,
	`ofile`	VARCHAR(255)	NOT NULL,
	`sfile`	VARCHAR(255)	NOT NULL,
	`download`	INT	DEFAULT 0,
	`rdate`		DATETIME	NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

# 상품 테이블
CREATE TABLE `Product` (
	`pNo`			INT AUTO_INCREMENT PRIMARY KEY, 
	`cate`		TINYINT NOT NULL,
	`pName`		VARCHAR(100) NOT NULL,
	`price`		INT DEFAULT 0,
	`delivery`	INT DEFAULT 0,
	`stoc`		INT DEFAULT 0,
	`sold`		INT DEFAULT 0,
	`thumb1`		VARCHAR(255) NOT NULL,
	`thumb2`		VARCHAR(255) NOT NULL,
	`thumb3`		VARCHAR(255) NOT NULL,
	`seller`		VARCHAR(20) NOT NULL,
	`etc`			VARCHAR(255),
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`seller`) REFERENCES `User`(`uid`)
);

# 주문 테이블
CREATE TABLE `Order` (
	`orderNo`			INT AUTO_INCREMENT PRIMARY KEY,
	`orderProduct`		INT NOT NULL,
	`orderCount`		INT NOT NULL,
	`orderDelivery`	INT NOT NULL,
	`orderPrice`		INT NOT NULL,
	`orderTotal`		INT NOT NULL,
	`orderUser`			VARCHAR(20) NOT NULL,
	`orderDate`			DATETIME NOT NULL,
	FOREIGN KEY(`orderProduct`) REFERENCES `Product`(`pNo`),
	FOREIGN KEY(`orderUser`) REFERENCES `User`(`uid`)
);

# 게시물 채우기
INSERT INTO `Article` (`title`, `content`, `writer`, `regip`, `rdate`)
SELECT `title`, `content`, `writer`, `regip`, `rdate` FROM `Article`;

# 최신글
SELECT `no`, `title`, `rdate` FROM `Article` WHERE `cate`='grow' Order BY  `no` DESC LIMIT 5;

# 상품 채우기
INSERT INTO `Product` (`type`, `pName`, `price`, `delivery`, `stock`, `thumb1`, `thumb2`, `thumb3`, `seller`, `rdate`)
SELECT `type`, `pName`, `price`, `delivery`, `stock`, `thumb1`, `thumb2`, `thumb3`, `seller`, `rdate` FROM `Product`;

SELECT COUNT(*) FROM `Product` WHERE `stock` > 0 AND `type`=3;

SELECT * FROM `Product` WHERE `pNo`=6;

ALTER TABLE `Order` ADD COLUMN `orderEtc` VARCHAR(255) AFTER `orderTotal`;

ALTER TABLE `Order` ADD COLUMN `receiver` VARCHAR(255) AFTER `orderTotal`;
ALTER TABLE `Order` ADD COLUMN `hp` VARCHAR(255) AFTER `receiver`;
ALTER TABLE `Order` ADD COLUMN `zip` VARCHAR(255) AFTER `hp`;
ALTER TABLE `Order` ADD COLUMN `addr1` VARCHAR(255) AFTER `zip`;
ALTER TABLE `Order` ADD COLUMN `addr2` VARCHAR(255) AFTER `addr1`;

SELECT a.*, b.`pName` FROM `Order` AS a
JOIN `Product` AS b
ON a.`orderProduct`=b.`pNo`;

SELECT 
												a.*,
												b.`pName`,
												b.`thumb1` 
												FROM `Order` AS a 
												JOIN `Product` AS b 
												ON a.orderProduct = b.pNo 
												LIMIT 0, 10

