# 날짜 : 2023/06/23
# 이름 : 박한산
# 내용 : SQL 연습문제4

# 실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES;

# 실습 4-2
CREATE TABLE `Customer` (
			`custId` INT AUTO_INCREMENT PRIMARY KEY,
			`name` VARCHAR(10) NOT NULL,
			`address` VARCHAR(20),
			`phone` CHAR(13)
			);

CREATE TABLE `Book` (
			`bookId` INT AUTO_INCREMENT PRIMARY KEY,
			`bookName` VARCHAR(20) NOT NULL,
			`publisher` VARCHAR(20) NOT NULL,
			`price` INT
			);
			
CREATE TABLE `Order` (
			`orderId` INT AUTO_INCREMENT PRIMARY KEY,
			`custId` INT NOT NULL,
			`bookId` INT NOT NULL,
			`salePrice` INT NOT NULL,
			`orderDate` DATE NOT NULL			
			);
			
# 실습 4-3

INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 멘체스타', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES ('박세리', '대한민국 대전');

INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('피겨교본', '굿스포츠', 8000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('역도 단계별 기술', '굿스포츠', 6000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('Olympic Champions', 'Pearson', 13000);

INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (1, 1, 6000, '2014-07-01'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (1, 3, 21000, '2014-07-03'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (2, 5, 8000, '2014-07-03'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (3, 6, 6000, '2014-07-04'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (4, 7, 20000, '2014-07-05'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (1, 2, 12000, '2014-07-07'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (4, 8, 13000, '2014-07-07'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (3, 10, 12000, '2014-07-08'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (2, 10, 7000, '2014-07-09'); 
INSERT INTO `Order` (`custId`, `bookId`, `saleprice`, `orderdate`) VALUES (3, 8, 13000, '2014-07-10'); 

# 실습 4-4
SELECT `custid`, `name`, `address` FROM `Customer`;

# 실습 4-5
SELECT `bookname`, `price` FROM `Book`;

# 실습 4-6
SELECT `price`, `bookname` FROM `Book`;

# 실습 4-7
SELECT * FROM `Book`;

# 실습 4-8
SELECT `publisher` FROM `Book`;

# 실습 4-9
SELECT DISTINCT `publisher` FROM `Book`;

SELECT `publisher` FROM `Book` GROUP BY `publisher`;

# 실습 4-10
SELECT * FROM `Book` WHERE `price` >= 20000;

# 실습 4-11
SELECT * FROM `Book` WHERE `price` < 20000;

# 실습 4-12
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000;

# 실습 4-13
SELECT `bookid`, `bookname`, `price` FROM `Book` WHERE `price` BETWEEN 15000 AND 30000;

SELECT `bookid`, `bookname`, `price` FROM `Book` WHERE `price` >= 15000 AND `price` <= 30000;

# 실습 4-14
SELECT * FROM `Book` WHERE `bookid` IN (2, 3, 5);

SELECT * FROM `Book` WHERE `bookid` = 2 OR `bookid` = 3 OR `bookid` = 5;

# 실습 4-15 ***
SELECT * FROM `Book` WHERE `bookid` % 2 = 0;

SELECT * FROM `Book` WHERE MOD(bookId, 2) = 0;

# 실습 4-16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

# 실습 4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';
SELECT * FROM `Customer` WHERE `address` LIKE '%대한민국%';

# 실습 4-18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL;

# 실습 4-19
SELECT * FROM `Book` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';
SELECT * FROM `Book` WHERE `publisher` IN('굿스포츠', '대한미디어');

# 실습 4-20
SELECT `publisher` FROM `Book` WHERE `bookname` = '축구의 역사';

# 실습 4-21 #%글자%  => 글자 포함 문자열 
SELECT `publisher` FROM `Book` WHERE `bookname` LIKE '%축구%';

# 실습 4-22
SELECT * FROM `Book` WHERE `bookname` LIKE '_구%';

# 실습 4-23
SELECT * FROM `Book` WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

# 실습 4-24 abcd => ㄱㄴㄷㄹ 오름차순임
SELECT * FROM `Book` order BY `bookname`;

# 실습 4-25 order by ``, ``, ``
SELECT * FROM `Book` order BY `price`, `bookname`;

# 실습 4-26
SELECT * FROM `Book` order BY `price` DESC, `publisher`;

# 실습 4-27
SELECT * FROM `Book` order BY `price` DESC LIMIT 3;

# 실습 4-28
SELECT * FROM `Book` order BY `price` LIMIT 3;

# 실습 4-29 AS 붙여도 되고 안 해도 되고
SELECT SUM(`saleprice`) `총판매액` FROM `Order`;

# 실습 4-30
SELECT SUM(`saleprice`) `총판매액`, 
AVG(`saleprice`) `평균값`, 
MIN(`saleprice`) `최저가`, 
MAX(`saleprice`) `최고가` 
FROM `Order`;




# 실습 4-31 PRIMARY KEY 칼럼으로 세는 게 속도 빠름
SELECT COUNT(*) `판매건수` FROM `Order`;
SELECT COUNT(orderId) `판매건수` FROM `Order`;

# 실습 4-32 ***
SELECT
	`bookId`,
	REPLACE(`bookname`, '야구', '농구') AS `bookname`,
	`publisher`,
	`price`
FROM `Book`;		
# 이렇게 하는 거 아님
#UPDATE `Book` SET `bookname` = '농구의 추억' WHERE `bookid` = 7;
#UPDATE `Book` SET `bookname` = '농구를 부탁해' WHERE `bookid` = 8;
#SELECT * FROM `Book`;



# 실습 4-33*** 그룹화했더라도 SELECT로 조회해야 나옴. 그룹화된거 수량 세는거임
SELECT `custid`, COUNT(*) `수량` FROM `Order` WHERE `saleprice` >= 8000 GROUP BY `custid` HAVING `수량` >= 2;

# 실습 4-34
SELECT * FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`;

SELECT * FROM `Customer` AS a
JOIN `Order` AS b USING(`custid`); # UUSING 은 같은 칼럼명 같을 때

SELECT * FROM `Customer` a, `Order` b WHERE a.`custid` = b.`custid`; 

# 실습 4-35
SELECT * FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`
order BY a.`custid`; #그냥 custid가 아니고 a.custid 임! # custid 양쪽테이블에 다 있으므로

# 실습 4-36
SELECT `name`, `saleprice` FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`;

# 실습 4-37
SELECT `name`, SUM(`saleprice`) FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`
GROUP BY a.`custid` # custid 양쪽테이블에 다 있으므로
order BY `name`;

#GROUP BY `name` : GROUP BY는 이름(동명이인 때문에)으로 안 함

# 실습 4-38
SELECT `name`, `bookname` FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`
JOIN `book` AS c
ON b.`bookid` = c.`bookid`;

# 실습 4-39
SELECT `name`, `bookname` FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`
JOIN `book` AS c
ON b.`bookid` = c.`bookid`
WHERE `price` = 20000;

# 실습 4-40
SELECT `name`, `saleprice` FROM `Customer` AS a
LEFT JOIN `Order` AS b
ON a.`custid` = b.`custid`;

# 실습 4-41
SELECT SUM(`saleprice`) `총매출` FROM `Customer` AS a
JOIN `Order` AS b
ON a.`custid` = b.`custid`
WHERE `name` = '김연아';

#SELECT 중첩
SELECT SUM(`saleprice`) `총매출` FROM `Order` WHERE `custid` = (SELECT `custid` FROM `Customer` WHERE `name` = '김연아');

# 실습 4-42
SELECT `bookname` FROM `Book`
order BY `price` DESC
LIMIT 1;

SELECT `bookname` FROM `Book` WHERE `price` = (SELECT MAX(`price`) FROM `Book`);

# 실습 4-43
SELECT `name` FROM `Customer` AS a
LEFT JOIN `Order` AS b
ON a.`custid` = b.`custid`
WHERE `orderid` IS NULL;

SELECT `name` FROM `Customer` WHERE `custid` NOT IN(SELECT DISTINCT `custid` FROM `Order`); #DISTINCT 있거나 없거나 같음

# 실습 4-44 ***
INSERT INTO `Book` SET
							`bookid` = 11,
							`bookname` = '스포츠의학',
							`publisher` = '한솔의학서적';

#데이터삽입인데 뭔 UPDATE 냐
UPDATE `Book` SET `bookname` = '스포츠의학', `publisher` = '한솔의학서적' 

# 실습 4-45
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;

# 실습 4-46
DELETE FROM `Customer` WHERE `custid` = 5;


















