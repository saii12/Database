# 날짜 : 2023/06/27
# 이름 : 박한산
# 내용 : University 모델링 실습


#Departments
INSERT INTO `Departments` VALUES (10, '국어국문학과', '051-510-1010');
INSERT INTO `Departments` VALUES (11, '영어영문학과', '051-510-1011');
INSERT INTO `Departments` VALUES (20, '경영학과', '051-510-1020');
INSERT INTO `Departments` VALUES (21, '경제학과', '051-510-1021');
INSERT INTO `Departments` VALUES (22, '정치외교학과', '051-510-1022');
INSERT INTO `Departments` VALUES (23, '사회복지학과', '051-510-1023');
INSERT INTO `Departments` VALUES (30, '수학과', '051-510-1030');
INSERT INTO `Departments` VALUES (31, '통계학과', '051-510-1031');
INSERT INTO `Departments` VALUES (32, '생명과학과', '051-510-1032');
INSERT INTO `Departments` VALUES (40, '기계공학과', '051-510-1040');
INSERT INTO `Departments` VALUES (41, '전자공학과', '051-510-1041');
INSERT INTO `Departments` VALUES (42, '컴퓨터공학과', '051-510-1042');

#Professors
INSERT INTO `Professors` VALUES ('P10101', 10, '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울');
INSERT INTO `Professors` VALUES ('P10102', 10, '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울');
INSERT INTO `Professors` VALUES ('P11101', 11, '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전');
INSERT INTO `Professors` VALUES ('P11103', 11, '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', '대전');
INSERT INTO `Professors` VALUES ('P11104', 11, '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');
INSERT INTO `Professors` VALUES ('P22110', 22, '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구');
INSERT INTO `Professors` VALUES ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'queen@hg.ac.kr', '대구');
INSERT INTO `Professors` VALUES ('P31101', 31, '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구');
INSERT INTO `Professors` VALUES ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산');
INSERT INTO `Professors` VALUES ('P40101', 40, '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산');
INSERT INTO `Professors` VALUES ('P40102', 40, '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', '광주');
INSERT INTO `Professors` VALUES ('P42103', 42, '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주');

#Lecture
INSERT INTO `Lectures` VALUES (101001, 'P10101', '대학 글쓰기', 2, 10, '본102');
INSERT INTO `Lectures` VALUES (101002, 'P10102', '한국어음운론', 3, 30, '본102');
INSERT INTO `Lectures` VALUES (101003, 'P10102', '한국현대문학사', 3, 30, '본103');
INSERT INTO `Lectures` VALUES (111011, 'P11103', '중세영문학', 3, 25, '본201');
INSERT INTO `Lectures` VALUES (111012, 'P11104', '영미시', 3, 25, '본201');
INSERT INTO `Lectures` VALUES (231110, 'P23102', '사회복지학개론', 1, 8, '별관103');
INSERT INTO `Lectures` VALUES (311002, 'P31101', '통계학의 이해', 2, 16, '별관303');
INSERT INTO `Lectures` VALUES (311003, 'P31104', '기초 통계학', 3, 26, '별관303');
INSERT INTO `Lectures` VALUES (401019, 'P40101', '기계역학', 3, 36, '공학관 102');
INSERT INTO `Lectures` VALUES (421012, 'P42103', '데이터베이스', 3, 32, '공학관 103');



#Students
INSERT INTO `Students` (`stdno`, `depno`, `prono`, `stdname`, `stdjumin`, `stdhp`, `stdaddr`) VALUES (20101001, 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', '서울');
INSERT INTO `Students` (`stdno`, `depno`, `prono`, `stdname`, `stdjumin`, `stdhp`, `stdaddr`) VALUES (20101002, 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', '서울');
INSERT INTO `Students` VALUES (20111011, 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', '대전');
INSERT INTO `Students` VALUES (20111013, 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
INSERT INTO `Students` VALUES (20111014, 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');
INSERT INTO `Students` VALUES (21221010, 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
INSERT INTO `Students` VALUES (21231002, 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', '대구');
INSERT INTO `Students` VALUES (22311011, 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
INSERT INTO `Students` (`stdno`, `depno`, `prono`, `stdname`, `stdjumin`, `stdhp`, `stdaddr`) VALUES (22311014, 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', '부산');
INSERT INTO `Students` (`stdno`, `depno`, `prono`, `stdname`, `stdjumin`, `stdhp`, `stdaddr`) VALUES (22401001, 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', '부산');
INSERT INTO `Students` VALUES (22401002, 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주');
INSERT INTO `Students` VALUES (22421003, 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');

#Register
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (20101001, 101001, 'P10101'); #기본키가 여러 개일 때는 여러개 값이 동시에 같지만 않으면 됨(중복되도 OK)
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (20101001, 101002, 'P10102');
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (20111013, 111011, 'P11103');
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (21231002, 231110, 'P23102');
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (22401001, 401019, 'P40101');
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (22401001, 421012, 'P42103');
INSERT INTO `Register` (`stdno`, `lecno`, `prono`) VALUES (20101001, 101003, 'P10102');
INSERT INTO `Register` SET
					`stdno` = 22421003,
					`lecno` = 311003,
					`prono` = 'P31104'
					;
INSERT INTO `Register` SET
					`stdno` = 22421003,
					`lecno` = 421012,
					`prono` = 'P42103'
					;
INSERT INTO `Register` SET
					`stdno` = 20111013,
					`lecno` = 111012,
					`prono` = 'P11104'
					;				

# 문제1. 모든 학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT `stdNo`, `stdName`, `stdHp`, b.`depNo`, `depName` FROM `Students` AS a # b.`depno` depno 양쪽테이블에 다 있어서 조회할 때 지정해줘야함
JOIN `Departments` AS b
ON a.depNo = b.depNo;

# 문제2. 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT `proNo`, `proName`, `proHp`, b.`depNo`, `depName` FROM `Professors` AS a
JOIN `Departments` AS b
ON a.depNo = b.depNo;

# 문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.
SELECT `lecno`, `lecname`, `proname`, `prohp` FROM `Lectures` AS a
JOIN `Professors` AS b
ON a.proNo = b.proNo;

# 문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT `lecno`, `lecname`, b.`prono`, `proname`, `prohp`, c.`depno`, `depname` FROM `Lectures` AS a
JOIN `Professors` AS b 
ON a.proNo = b.proNo
JOIN `Departments` AS c
ON b.depNo = c.depNo;

# 문제5. 모든 수강신청 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.*** 
SELECT a.`stdno`, b.`stdname`, a.`lecno`, c.`lecname`, a.`prono`, d.`proname` FROM `Register` AS a # a에 있는 건 웬만한건 a.칼럼으로 
JOIN `Students` AS b
ON a.stdNo = b.stdNo
JOIN `Lectures` AS c
ON a.lecNo = c.lecNo
JOIN `Professors` AS d
ON a.proNo = d.proNo;


# 문제6. 수강신청 테이블에 출석점수, 중간고사점수, 기말고사점수를 임의로 입력하시오.(1~100 사이)
UPDATE `Register` SET 
							`regAttenScore` = CEIL(RAND() * 100),
							`regMidScore` = CEIL(RAND() * 100),
							`regFinalScore` = CEIL(RAND() * 100);


#UPDATE `Register` SET `regattenscore` = 95, `regmidscore` = 95, `regfinalscore` = 95; #where절 없으면 칼럼 전체에 데이터 들어감
#UPDATE `Register` SET `regattenscore` = 92, `regmidscore` = 92, `regfinalscore` = 92;

# 문제7. 수강신청 테이블에 입력한 출석점수, 중간고사점수, 기말고사 점수를 모두 합산 후 평균을 구해 총점에 입력하시오.
UPDATE `Register` SET `regTotal` = (`regAttenScore` + `regMidScore` + `regFinalScore`) / 3;

# 문제8. 수강신청 테이블에 총점을 기준으로 A ~ F 등급을 입력하시오.
UPDATE `Register` SET `regGrade` = if(`regTotal` >= 90, 'A', 
												if(`regTotal` >= 80, 'B', 
												if(`regTotal` >= 70, 'C', 
												if(`regTotal` >= 60, 'D', 'F'))));   

# 문제9. 수강신청 테이블에서 총점이 가장 큰 점수를 조회하시오.
SELECT `regTotal` FROM `Register` ORDER BY `regTotal` DESC LIMIT 1;

# 문제10. 수강신청 테이블에서 정우성 학생의 총점의 평균을 조회하시오.
SELECT AVG(`regTotal`) FROM `Register` AS a
JOIN `Students` AS b ON a.stdNo = b.stdNo
WHERE `stdName` = '정우성';








