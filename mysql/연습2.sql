DROP DATABASE IF EXISTS notice;

CREATE DATABASE notice;

USE notice;

CREATE TABLE qna(
	번호 INTEGER,
    제목 VARCHAR(40),
    내용 VARCHAR(255),
    작성자 VARCHAR(10),
    작성일 DATE
);

INSERT INTO qna VALUES(1,'회원가입 방법1','냉무1..........','홍길동','2014-01-01');
INSERT INTO qna VALUES(2,'회원가입 방법2','냉무2..........','이몽룡','2014-01-02');
INSERT INTO qna VALUES(3,'회원가입 방법3','냉무3..........','성춘향','2014-01-03');
INSERT INTO qna VALUES(4,'회원가입 방법4','냉무4..........','월매','2014-01-04');
INSERT INTO qna VALUES(5,'회원가입 방법5','냉무5..........','김삿갓','2014-01-05');

SELECT * FROM qna WHERE 번호>=2;

INSERT INTO qna VALUES(NULL,'회원가입 방법6','냉무6........','강감찬','2014-01-06');

UPDATE qna SET 번호 = 6 WHERE 번호 IS NULL;

SELECT * FROM qna;

DELETE FROM qna WHERE 번호=2;
SELECT * FROM qna;





