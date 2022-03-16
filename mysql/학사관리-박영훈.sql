DROP DATABASE IF EXISTS 학사관리_db;
DROP USER IF EXISTS haksa@localhost;
CREATE DATABASE 학사관리_db;
CREATE USER haksa@localhost IDENTIFIED WITH mysql_native_password BY 'qwer1234!';
GRANT ALL PRIVILEGES ON 학사관리_db.* TO haksa@localhost WITH GRANT OPTION; 

SHOW DATABASES;

USE 학사관리_db;

SHOW TABLES;

CREATE TABLE 학과(
	학과번호 VARCHAR(5) NOT NULL,
    학과명 VARCHAR(50) NOT NULL,
    학과전화번호 VARCHAR(20) NOT NULL,
    PRIMARY KEY (학과번호)
);
DESC 학과;


CREATE TABLE 학생(
	학생번호 VARCHAR(10) NOT NULL UNIQUE,
    학생이름 VARCHAR(50) NOT NULL,
    학생주민번호 VARCHAR(14) NOT NULL UNIQUE,
    학생주소 VARCHAR(50) NOT NULL,
    학생전화번호 VARCHAR(20) NOT NULL,
    학생이메일 VARCHAR(50) NOT NULL,
    소속학과번호 VARCHAR(5) NOT NULL,
    PRIMARY KEY (학생번호),
    FOREIGN KEY (소속학과번호) REFERENCES 학과(학과번호)
);
DESC 학생;

CREATE TABLE 교수(
	교수번호 VARCHAR(5) NOT NULL UNIQUE,
    교수이름 VARCHAR(50) NOT NULL,
    교수주민번호 VARCHAR(14) NOT NULL UNIQUE,
    교수주소 VARCHAR(50) NOT NULL,
    교수전화번호 VARCHAR(20) NOT NULL,
    교수이메일 VARCHAR(50) NOT NULL,
    소속학과번호 VARCHAR(5) NOT NULL,
    PRIMARY KEY (교수번호),
    FOREIGN KEY (소속학과번호) REFERENCES 학과(학과번호)
);
DESC 교수;

CREATE TABLE 학기정보(
	학생번호 VARCHAR(10) NOT NULL UNIQUE,
    교수번호 VARCHAR(5) NOT NULL UNIQUE,
    학년학기정보 VARCHAR(20) NOT NULL,
    PRIMARY KEY (학생번호, 교수번호),
    FOREIGN KEY (학생번호) REFERENCES 학생(학생번호),
    FOREIGN KEY (교수번호) REFERENCES 교수(교수번호)
);
DESC 학기정보;

