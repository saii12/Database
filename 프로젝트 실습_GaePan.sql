/* 고객문의 글 출력 JOIN할 떈 안나오고 LEFT JOIN 하니까 나오네 */
SELECT a.*, b.cateName, c.typeName FROM gp_board a
LEFT JOIN gp_board_cate b ON a.cate = b.cate
LEFT JOIN gp_board_type c ON a.cate = c.cate AND a.`type` = c.`type` /*cate만 JOIN 하는 것 아님!!!*/
WHERE a.parent = 0 AND a.group = 'qna' AND a.cate = 31
ORDER BY a.bno DESC
        
LIMIT #{offset}, #{limit}

/* 고객문의글 총 개수 */
SELECT COUNT(*) FROM gp_board a
LEFT JOIN gp_board_cate b ON a.cate = b.cate
LEFT JOIN gp_board_type c ON a.cate = c.cate AND a.`type` = c.`type` /*cate만 JOIN 하는 것 아님!!!*/
WHERE a.parent = 0 AND a.group = 'qna' AND a.cate = 31

/* bno로 글 조회 */
SELECT a.*, b.cateName, c.typeName FROM gp_board a
LEFT JOIN gp_board_cate b ON a.cate = b.cate
LEFT JOIN gp_board_type c ON a.cate = c.cate AND a.type = c.type
WHERE a.bno = 147;

/* 문의하기 */
INSERT INTO `gp_board` SET 
								`uid` = 'user10',
								`title` = 'qna write 테스트', 
								`content` = '문의합니다', 
								`group` = 'qna', 
								`cate` = '31', 
								`type` = '31',
								
								`regDate` = '';
								
/* 댓글 등록 */
INSERT INTO `gp_board` SET
						`uid` = 'user',
						`group` = 'qna',
						`cate` = '31',
						`type` = '31',
						`regIP` = '127.0.0.1',
						`regDate` = '2023-11-28',
						`parent` = '',
						`comment` = '댓글테스트1';
						
/*글 삭제*/
DELETE FROM `gp_board` WHERE `bno`=199;

/*글 수정*/
UPDATE `gp_board` SET `title`='수정테스트', `content`='수정테스트임' WHERE `bno`=188;

/*댓글 수정*/
UPDATE `gp_board` SET `comment`='댓글 수정테스트임' WHERE `bno`=200;


SELECT a.*, b.cateName, c.typeName FROM gp_board a
LEFT JOIN gp_board_cate b ON a.cate = b.cate
LEFT JOIN gp_board_type c ON a.cate = c.cate AND a.`type` = c.`type` /*cate만 JOIN 하는 것 아님!!!*/
if(전체값 보기 위한 cate값){
WHERE a.parent = 0 AND a.group = 'qna'
}ELSE{

WHERE a.parent = 0 AND a.group = 'qna' AND a.cate = 31
}
ORDER BY a.bno DESC