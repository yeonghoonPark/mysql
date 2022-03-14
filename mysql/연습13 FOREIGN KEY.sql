DROP DATABASE IF EXISTS school_db;
DROP USER IF EXISTS school_db@localhost;

CREATE DATABASE school_db;
CREATE USER school_db@localhost IDENTIFIED WITH mysql_native_password BY 'school_db';

GRANT ALL PRIVILEGES ON school_db.* TO school_db@localhost WITH GRANT OPTION;

USE school_db;

CREATE TABLE 기본정보(
	학번 INTEGER PRIMARY KEY,
    성명 VARCHAR(12),
    주소 VARCHAR(150),
    전화번호 VARCHAR(15)
);

CREATE TABLE 수강신청(
	학번 INTEGER,
    수강과목1 VARCHAR(12),
    수강과목2 VARCHAR(12),
    수강과목3 VARCHAR(12),
    FOREIGN KEY(학번) REFERENCES 기본정보(학번)
);

CREATE TABLE 과목1(
	학번 INTEGER,
    과목명 VARCHAR(12),
    FOREIGN KEY (학번) REFERENCES 기본정보(학번),
    FOREIGN KEY (과목명) REFERENCES 교수자(과목명)
);

CREATE TABLE 과목2(
	학번 INTEGER,
    과목명 VARCHAR(12),
    FOREIGN KEY (학번) REFERENCES 기본정보(학번),
    FOREIGN KEY (과목명) REFERENCES 교수자(과목명)
);

CREATE TABLE 교수자(
	교수번호 INTEGER,
    과목명 VARCHAR(12) PRIMARY KEY
);

INSERT INTO 기본정보 VALUES(101, '홍길동', '서울', '010-1111-1111');
INSERT INTO 기본정보 VALUES(102, '이몽룡', '남원', '010-2222-2222');
INSERT INTO 기본정보 VALUES(104, '성춘향', '남원', '010-3333-3333');
INSERT INTO 기본정보 VALUES(105, '강감찬', '귀주', '010-4444-4444');

INSERT INTO 과목1 VALUES(101, '국어');
INSERT INTO 과목1 VALUES(102, '국어');
INSERT INTO 과목1 VALUES(104, '국어');
INSERT INTO 과목1 VALUES(105, '국어');

INSERT INTO 과목2 VALUES(101, '영어');
INSERT INTO 과목2 VALUES(102, '영어');
INSERT INTO 과목2 VALUES(104, '영어');
INSERT INTO 과목2 VALUES(105, '영어');

INSERT INTO 교수자 VALUES(1001, '국어');
INSERT INTO 교수자 VALUES(1002, '영어');







