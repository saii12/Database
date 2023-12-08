CREATE TABLE `User6` (
	`uid` VARCHAR(10) PRIMARY KEY, 
	`name` VARCHAR(10),
	`birth` CHAR(10) COMMENT '1999-01-01',
	`gender` CHAR(1) COMMENT '남자:M, 여자:F',
	`age` TINYINT,
	`addr` VARCHAR(10) COMMENT '서울,대전,대구...',
	`hp` CHAR(13)				
);
