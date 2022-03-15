DROP DATABASE IF EXISTS school_db;
CREATE DATABASE school_db;
DROP USER IF EXISTS school_db@localhost;
CREATE USER school_db@localhost;
GRANT ALL PRIVILEGES ON school_db.* TO school_db@localhost WITH GRANT OPTION;

USE school_db;

CREATE TABLE 학생_INFO(
	학번 VARCHAR(10) PRIMARY KEY,
    성명 VARCHAR(20)
);

CREATE TABLE 연락처(
	전화번호 VARCHAR(20),
    주소 VARCHAR(100),
    학번 VARCHAR(10),
    FOREIGN KEY(학번) REFERENCES 학생_INFO(학번)
);

CREATE TABLE 성별(
	성별 ENUM('남','여'),
    학번 VARCHAR(10),
    FOREIGN KEY (학번) REFERENCES 연락처(학번)
);