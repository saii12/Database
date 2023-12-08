INSERT INTO `Article` (`cate`, `title`, `content`, `file`, `writer`, `regip`, `rdate`)
SELECT `cate`, `title`, `content`, `file`, `writer`, `regip`, `rdate`
FROM `Article` WHERE `parent`=0;







