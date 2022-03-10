DROP DATABASE IF EXISTS notice_db;

CREATE DATABASE notice_db;

USE notice_db;

CREATE TABLE notice1(
	게시번호 INT PRIMARY KEY AUTO_INCREMENT,
    문서제목 VARCHAR(40) NOT NULL,
    게시일 TIMESTAMP DEFAULT NOW(),
    작성자 VARCHAR(12) NOT NULL,
    내용 VARCHAR(500) NOT NULL
);

INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목1','작성자1','내용1');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목2','작성자2','내용2');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목3','작성자3','내용3');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목4','작성자4','내용4');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목5','작성자5','내용5');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목6','작성자6','내용6');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목7','작성자7','내용7');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목8','작성자8','내용8');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목9','작성자9','내용9');
INSERT INTO notice1(문서제목,작성자,내용) VALUES('문서제목10','작성자10','내용10');

SELECT 게시번호 AS number, 문서제목 AS title, 게시일 AS date, 작성자 AS writer, 내용 AS content FROM notice1 ORDER BY number DESC;








