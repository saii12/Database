#erd1
INSERT INTO `Department` VALUES ('101', '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES ('102', '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES ('103', '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES ('104', '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES ('105', '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES ('106', '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES ('107', '인사부', '051-512-1007');

INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a102', '김유신', '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a103', '김춘추', '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a104', '장보고', '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a105', '강감찬', '010-1234-1005', '과장', 102, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a106', '이성계', '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a107', '정철', '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a108', '이순신', '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a109', '허균', '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a110', '정약용', '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a111', '박지원', '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', '2018', '1', 98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2018', '1', 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', '2018', '1', 80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', '2018', '1', 78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', '2018', '1', 93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', '2018', '2', 23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2018', '2', 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', '2018', '2', 18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', '2018', '2', 19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', '2018', '2', 53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', '2019', '1', 24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2019', '1', 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', '2019', '1', 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', '2019', '1', 53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a107', '2019', '1', 24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2019', '2', 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', '2019', '2', 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', '2019', '2', 43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', '2019', '2', 24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', '2019', '2', 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2020', '1', 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', '2020', '1', 63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', '2020', '1', 74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', '2020', '1', 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a107', '2020', '1', 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', '2020', '2', 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', '2020', '2', 93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', '2020', '2', 84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', '2020', '2', 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `price`) VALUES ('a108', '2020', '2', 76000);

#erd2
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 멘체스타', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES ('박세리', '대한민국 대전');

INSERT INTO `Publisher` VALUES ('굿스포츠', '051-153-1234');
INSERT INTO `Publisher` VALUES ('나무수', '051-153-1235');
INSERT INTO `Publisher` VALUES ('대한미디어', '051-153-1236');
INSERT INTO `Publisher` VALUES ('이상미디어', '051-153-1237');
INSERT INTO `Publisher` VALUES ('삼성당', '051-153-1238');
INSERT INTO `Publisher` VALUES ('Pearson', '051-153-1239');

INSERT INTO `Book` VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO `Book` VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` VALUES (5, '피겨교본', '굿스포츠', 8000);
INSERT INTO `Book` VALUES (6, '역도 단계별 기술', '굿스포츠', 6000);
INSERT INTO `Book` VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` VALUES (10, 'Olympic Champions', 'Pearson', 13000);

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

#erd3
INSERT INTO `Student` (`stdNo`, `stdName`, `stdHp`, `stdYear`) VALUES(20201016, '김유신', '010-1234-1001', 3);
INSERT INTO `Student` VALUES (20201126, '김춘추', '010-1234-1002', 3, '경상남도 경주시');
INSERT INTO `Student` VALUES (20210216, '장보고', '010-1234-1003', 2, '전라남도 완도시');
INSERT INTO `Student` VALUES (20210326, '강감찬', '010-1234-1004', 2, '서울시 영등포구');
INSERT INTO `Student` VALUES (20220416, '이순신', '010-1234-1005', 1, '부산시 부산진구');
INSERT INTO `Student` VALUES (20220521, '송상현', '010-1234-1006', 1, '부산시 동래구');

INSERT INTO `Lecture` VALUES (159, '인지행동심리학', 3, 40, '본304');
INSERT INTO `Lecture` VALUES (167, '운영체제론', 3, 25, '본B05');
INSERT INTO `Lecture` VALUES (234, '중급 영문법', 3, 20, '본201');
INSERT INTO `Lecture` VALUES (239, '세법개론', 3, 40, '본204');
INSERT INTO `Lecture` VALUES (248, '빅데이터 개론', 3, 20, '본B01');
INSERT INTO `Lecture` VALUES (253, '컴퓨팅사고와 코딩', 2, 10, '본B02');
INSERT INTO `Lecture` VALUES (349, '사회복지 마케팅', 2, 50, '본301');

INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20201126, 234);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20201016, 248);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20201016, 253);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20201126, 239);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20210216, 349);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20210326, 349);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20201016, 167);
INSERT INTO `Register` (`regStdNo`, `regLecNo`) VALUES (20220416, 349);

UPDATE `Register` SET `regMidScore` = 36, `regFinalScore` = 42 WHERE `regStdNo` = '20201126' AND `regLecNo` = 234; 
UPDATE `Register` SET `regMidScore` = 24, `regFinalScore` = 62 WHERE `regStdNo` = '20201016' AND `regLecNo` = 248; 
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore` = 40 WHERE `regStdNo` = '20201016' AND `regLecNo` = 253; 
UPDATE `Register` SET `regMidScore` = 37, `regFinalScore` = 57 WHERE `regStdNo` = '20201126' AND `regLecNo` = 239; 
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore` = 68 WHERE `regStdNo` = '20210216' AND `regLecNo` = 349; 
UPDATE `Register` SET `regMidScore` = 16, `regFinalScore` = 65 WHERE `regStdNo` = '20210326' AND `regLecNo` = 349; 
UPDATE `Register` SET `regMidScore` = 18, `regFinalScore` = 38 WHERE `regStdNo` = '20201016' AND `regLecNo` = 167; 
UPDATE `Register` SET `regMidScore` = 25, `regFinalScore` = 58 WHERE `regStdNo` = '20220416' AND `regLecNo` = 349;

UPDATE `Register` SET 
						`regTotalScore` = `regMidScore` + `regFinalScore`,
						`regGrade` = 	if(`regTotalScore` >= 90, 'A',
											if(`regTotalScore` >= 80, 'B',
											if(`regTotalScore` >= 70, 'C',
											if(`regTotalScore` >= 60, 'D', 'F'))));
SELECT * FROM `Register`;					

#erd4
