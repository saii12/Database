# 날짜 : 2023/08/
# 이름 : 박한산
# 내용 : 게시판  데이터베이스 설계

CREATE DATABASE `Jboard`;

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

CREATE TABLE `File`(
	`fno`			INT	AUTO_INCREMENT PRIMARY KEY,	
	`ano`			INT	NOT NULL,
	`ofile`	VARCHAR(255)	NOT NULL,
	`sfile`	VARCHAR(255)	NOT NULL,
	`download`	INT	DEFAULT 0,
	`rdate`		DATETIME	NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);

SELECT a.*, b.`nick` FROM `Article` AS a
JOIN `User` AS b ON a.writer = b.uid
ORDER BY `no` DESC
LIMIT 0, 10; /*0번행부터 10개*/ 

# 게시물 채우기
INSERT INTO `Article` (`title`, `content`, `writer`, `regip`, `rdate`)
SELECT `title`, `content`, `writer`, `regip`, `rdate` FROM `Article`;

# 전체 게시물 갯수
SELECT COUNT(*) FROM `Article`;

DELETE FROM `Article`;

# 방금 생성한 글번호 선택
SELECT MAX(`no`) FROM `Article`;

SELECT * FROM `Article` AS a
LEFT JOIN `File` AS b /*이렇게 JOIN 하면 파일이 없는 글은 조회가 안된다*/
ON a.`no` = b.`ano`
WHERE `no`=6;

SELECT COUNT(*) FROM `Article`
WHERE `parent`=0 AND `title` LIKE '%파일%';















