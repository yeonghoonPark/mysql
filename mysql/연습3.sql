DROP DATABASE IF EXISTS notice;

CREATE DATABASE notice;

USE notice;

CREATE TABLE notice_table(
	id INTEGER,
    title VARCHAR(40),
    content VARCHAR(500),
    user_name VARCHAR(10)
); 

SHOW TABLES;

SELECT * FROM notice_table;

INSERT INTO notice_table(id, content, title, user_name)
VALUES (1,'내용','제목1','kim');
INSERT INTO notice_table
VALUES (2,'제목2','내용','lee');
INSERT INTO notice_table
VALUES (3,'제목3','내용','choi');
INSERT INTO notice_table
VALUES (4,'제목4','내용','na');
INSERT INTO notice_table
VALUES (5,'제목5','내용','park');
INSERT INTO notice_table(id,content,user_name)
VALUES (6,'내용','cho');

SELECT * FROM notice_table;

UPDATE notice_table
SET title='새로운 제목'
WHERE id=6;

UPDATE notice_table
SET user_name='jo'
WHERE user_name='cho';

SELECT * FROM notice_table;

DELETE FROM notice_table WHERE id=6;

SELECT * FROM notice_table;






