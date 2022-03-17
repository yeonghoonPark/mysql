
-- -------------------------------------------------------------------------------
-- ------------------------      학사관리 DB 정의      ------------------------------
-- -------------------------------------------------------------------------------
DROP DATABASE IF EXISTS 학사관리_db;
CREATE DATABASE 학사관리_db;

-- -------------------------------------------------------------------------------
-- ------------------------      학사관리 DB 관리자     ------------------------------
-- ------------------------------------------------------------------------------- 
DROP USER IF EXISTS ad_col@localhost;
CREATE USER ad_col@localhost IDENTIFIED WITH mysql_native_password BY 'qwer1234!';
GRANT ALL PRIVILEGES ON 학사관리_db.* TO ad_col@localhost WITH GRANT OPTION;
SHOW DATABASES;
USE 학사관리_db;

-- -------------------------------------------------------------------------------
-- ------------------------      CREATE TABLE      -------------------------------
-- -------------------------------------------------------------------------------
 CREATE TABLE 학생(
	번호 VARCHAR(10) NOT NULL,
    이름 VARCHAR(20) NOT NULL,
    주민번호 VARCHAR(14) NOT NULL UNIQUE,
    주소 VARCHAR(100) NOT NULL,
    전화번호 VARCHAR(14) NOT NULL,
    이메일 VARCHAR(45) NOT NULL UNIQUE,
    학과번호 VARCHAR(10) NOT NULL,
    PRIMARY KEY (번호),
    FOREIGN KEY (학과번호) REFERENCES 학과(번호)
 );
DESC 학생;
 
 CREATE TABLE 교수(
	번호 VARCHAR(10) NOT NULL,
    이름 VARCHAR(20) NOT NULL,
    주민번호 VARCHAR(14) NOT NULL UNIQUE,
    주소 VARCHAR(100) NOT NULL,
    전화번호 VARCHAR(14) NOT NULL,
    이메일 VARCHAR(45) NOT NULL UNIQUE,
    소속학과번호 VARCHAR(10) NOT NULL,
    PRIMARY KEY (번호),
    FOREIGN KEY (소속학과번호) REFERENCES 학과(번호)
 );
DESC 교수;
 
 CREATE TABLE 학과(
	번호 VARCHAR(10),
    학과명 VARCHAR(45) NOT NULL UNIQUE,
    전화번호 VARCHAR(14) NOT NULL UNIQUE,
    PRIMARY KEY (번호)
 );
 DESC 학과;
 
 CREATE TABLE 강좌(
	번호 VARCHAR(10),
    교수번호 VARCHAR(10) NOT NULL,
    강좌명 VARCHAR(45) NOT NULL,
    취득학점 INTEGER NOT NULL,
    강의시간 INTEGER NOT NULL,
    강의실정보 VARCHAR(45) NOT NULL, 
    PRIMARY KEY (번호, 교수번호),
    FOREIGN KEY (교수번호) REFERENCES 교수(번호)
 );
DESC 강좌;
 
 CREATE TABLE 수강내역(
	학생번호 VARCHAR(10),
    강좌번호 VARCHAR(10),
    교수번호 VARCHAR(10),
    출석점수 INTEGER NOT NULL,
    중간고사점수 INTEGER NOT NULL,
    기말고사점수 INTEGER NOT NULL,
    기타점수 INTEGER NOT NULL,
    총점 INTEGER NOT NULL,
    평점 VARCHAR(2) NOT NULL,
    PRIMARY KEY (학생번호, 강좌번호, 교수번호),
    FOREIGN KEY (학생번호) REFERENCES 학생(번호),
    FOREIGN KEY (강좌번호) REFERENCES 강좌(번호),
    FOREIGN KEY (교수번호) REFERENCES 강좌(교수번호)
 );
DESC 수강내역;
 
 CREATE TABLE 학생_has_교수(
	학생번호 VARCHAR(10),
    교수번호 VARCHAR(10),
    학년_학기 VARCHAR(3),
    PRIMARY KEY (학생번호, 교수번호),
    FOREIGN KEY (학생번호) REFERENCES 학생(번호),
    FOREIGN KEY (교수번호) REFERENCES 교수(번호)
 );
 DESC 학생_has_교수;
 
-- -------------------------------------------------------------------------------
-- -----------------------    INSERT INTO VALUES    ------------------------------
-- -------------------------------------------------------------------------------
DESC 학과;
INSERT INTO 학과 VALUES('0001', '컴퓨터학과', '032-0001-0001');
INSERT INTO 학과 VALUES('0002', '물리학과', '032-0002-0002');
INSERT INTO 학과 VALUES('0003', '통계학과', '032-0003-0003');
INSERT INTO 학과 VALUES('0004', '화학과', '032-0004-0004');
INSERT INTO 학과 VALUES('0005', '수학과', '032-0005-0005');
INSERT INTO 학과 VALUES('0006', '사자학과', '032-0006-0006');
INSERT INTO 학과 VALUES('0007', '만화과', '032-0007-0007');
INSERT INTO 학과 VALUES('0008', '국어과', '032-0008-0008');
INSERT INTO 학과 VALUES('0009', '사학과', '032-0009-0009');
INSERT INTO 학과 VALUES('0010', '철학과', '032-0010-0010');
SELECT * FROM 학과;


DESC 학생;
INSERT INTO 학생 VALUES('0001', '홍길동', '000000-0000001', '인천광역시 서구', 010-0001-0001, '01@gmail.com', '0001');
INSERT INTO 학생 VALUES('0002', '이몽룡', '000000-0000002', '인천광역시 중구', 010-0002-0002, '02@gmail.com', '0001');
INSERT INTO 학생 VALUES('0003', '성춘향', '000000-0000003', '인천광역시 남구', 010-0003-0003, '03@gmail.com', '0002');
INSERT INTO 학생 VALUES('0004', '월매', '000000-0000004', '인천광역시 서구', 010-0004-0004, '04@gmail.com', '0003');
INSERT INTO 학생 VALUES('0005', '변사또', '000000-0000005', '인천광역시 서구', 010-0005-0005, '05@gmail.com', '0004');
INSERT INTO 학생 VALUES('0006', '강감찬', '000000-0000006', '인천광역시 계양구', 010-0006-0006, '06@gmail.com', '0005');
INSERT INTO 학생 VALUES('0007', '을지문덕', '000000-0000007', '인천광역시 연수구', 010-0007-0007, '07@gmail.com', '0006');
INSERT INTO 학생 VALUES('0008', '세종대왕', '000000-0000008', '인천광역시 중구', 010-0008-0008, '08@gmail.com', '0004');
INSERT INTO 학생 VALUES('0009', '광개토', '000000-0000009', '인천광역시 남구', 010-0009-0009, '09@gmail.com', '0004');
INSERT INTO 학생 VALUES('0010', '의자', '000000-0000010', '충청남도 사비', 010-0010-0010, '10@gmail.com', '0006');
SELECT * FROM 학생;

DESC 교수;
INSERT INTO 교수 VALUES('0001', '김교수', '100000-0000001', '인천광역시 서구', '011-0001-0001', '001@nver.com', '0001');
INSERT INTO 교수 VALUES('0002', '이교수', '200000-0000002', '인천광역시 남구', '012-0002-0002', '002@nver.com', '0008');
INSERT INTO 교수 VALUES('0003', '박교수', '300000-0000003', '인천광역시 계양구', '013-0003-0003', '003@nver.com', '0003');
INSERT INTO 교수 VALUES('0004', '최교수', '400000-0000004', '인천광역시 연수구', '014-0004-0004', '004@nver.com', '0005');
INSERT INTO 교수 VALUES('0005', '신교수', '500000-0000005', '인천광역시 북구', '015-0005-0005', '005@nver.com', '0007');
SELECT * FROM 교수;

DESC 학생_has_교수;
INSERT INTO 학생_has_교수 VALUES('0001', '0001', '1/1');
INSERT INTO 학생_has_교수 VALUES('0002', '0001', '1/1');
INSERT INTO 학생_has_교수 VALUES('0003', '0002', '1/1');
INSERT INTO 학생_has_교수 VALUES('0004', '0002', '1/1');
INSERT INTO 학생_has_교수 VALUES('0005', '0002', '1/1');
INSERT INTO 학생_has_교수 VALUES('0006', '0003', '1/1');
INSERT INTO 학생_has_교수 VALUES('0007', '0004', '1/1');
INSERT INTO 학생_has_교수 VALUES('0008', '0005', '1/1');
INSERT INTO 학생_has_교수 VALUES('0009', '0004', '1/1');
INSERT INTO 학생_has_교수 VALUES('0010', '0004', '1/1');
SELECT * FROM 학생_has_교수;

DESC 강좌;
INSERT INTO 강좌 VALUES('0001', '0001', '정보화사회', 4, 32, '인문관 401호' );
INSERT INTO 강좌 VALUES('0001', '0002', '정보화사회', 4, 32, '인문관 402호' );
INSERT INTO 강좌 VALUES('0003', '0003', '사회윤리학', 2, 24, '철학관 202호' );
INSERT INTO 강좌 VALUES('0001', '0005', '정보화사회', 4, 32, '철학관 302호' );
INSERT INTO 강좌 VALUES('0005', '0003', '포스트코로나', 3, 28, '인문관 203호' );
SELECT * FROM 강좌;

DESC 수강내역;
INSERT INTO 수강내역 VALUES('0001', '0001', '0005', 10, 30, 30, 30, 0, 'F');
INSERT INTO 수강내역 VALUES('0003', '0003', '0005', 10, 30, 30, 30, 100, 'A');
INSERT INTO 수강내역 VALUES('0002', '0001', '0005', 10, 30, 30, 30, 50, 'C');
INSERT INTO 수강내역 VALUES('0002', '0003', '0003', 10, 30, 30, 30, 80, 'B');
INSERT INTO 수강내역 VALUES('0004', '0001', '0005', 10, 30, 30, 30, 75, 'B');
INSERT INTO 수강내역 VALUES('0008', '0003', '0003', 10, 30, 30, 30, 60, 'C');
INSERT INTO 수강내역 VALUES('0009', '0001', '0005', 10, 30, 30, 30, 40, 'D');
INSERT INTO 수강내역 VALUES('0002', '0001', '0002', 10, 30, 30, 30, 30, 'D');
INSERT INTO 수강내역 VALUES('0010', '0003', '0003', 10, 30, 30, 30, 10, 'D');
INSERT INTO 수강내역 VALUES('0010', '0005', '0003', 10, 30, 30, 30, 0, 'F');
SELECT * FROM 수강내역;

-- -------------------------------------------------------------------------------
-- -----------------------          SELECT          ------------------------------
-- -------------------------------------------------------------------------------
 /* 수강하지 않은 학생 명단 */
 SELECT 학생.번호 AS 학번, 학생.이름 AS 성명
 FROM 학생
 WHERE 번호 NOT IN (SELECT 학생번호 FROM 수강내역);
 
 SELECT DISTINCT 학생.번호 AS 학번, 학생.이름 AS 성명
 FROM 학생 INNER JOIN 수강내역 ON 학생.번호 NOT IN(SELECT 학생번호 FROM 수강내역);
 
 SELECT 학생.번호 AS 학번, 학생.이름 AS 성명
 FROM 학생 LEFT OUTER JOIN 수강내역 ON 학생.번호=수강내역.학생번호
 WHERE 수강내역.학생번호 IS NULL;
 
 /* 교수별 담당학생 명단 */
 SELECT 교수.번호 AS 교번, 교수.이름 AS 교수자명, 학생.번호 AS 학번, 학생.이름 AS 학생명
 FROM 교수 INNER JOIN 학생_has_교수 ON 교수.번호=학생_has_교수.교수번호 INNER JOIN 학생 ON 학생.번호=학생_has_교수.학생번호;
 
 /* 학과명이 '컴퓨터학과' 인 자료의 학과번호와 학과명을 각 '0111', '컴퓨터공학과'로 변경 */
SELECT 학생.번호 AS 학번, 교수.소속학과번호 AS 교수명, 학과.번호 AS 학과번호, 학과.학과명 AS 학과명 
FROM 학생 INNER JOIN 학과 ON 학생.학과번호=학과.번호 INNER JOIN 교수 ON 교수.소속학과번호=학과.번호
WHERE 학과.학과명='컴퓨터학과';

UPDATE 교수 SET 소속학과번호='0111' WHERE 소속학과번호 IN(SELECT 번호 FROM 학과 WHERE 학과명='컴퓨터학과');
UPDATE 학생 SET 학과번호='0111' WHERE 학과번호 IN(SELECT 번호 FROM 학과 WHERE 학과명='컴퓨터학과');
UPDATE 학과 SET 학과명='컴퓨터공학과',번호='0111' WHERE 학과명='컴퓨터학과';

SELECT 학생.번호 AS 학번, 교수.소속학과번호 AS 교수명, 학과.번호 AS 학과번호, 학과.학과명 AS 학과명 
FROM 학생 INNER JOIN 학과 ON 학생.학과번호=학과.번호 INNER JOIN 교수 ON 교수.소속학과번호=학과.번호
WHERE 학과.학과명='컴퓨터공학과';
 
 SELECT * FROM 학생;
 SELECT * FROM 교수;
 SELECT * FROM 학과;
 
 /* 강좌를 진행하지 않는 교수와 관련된 자료를 삭제 */
 SELECT * FROM 교수 WHERE 번호 NOT IN(SELECT 교수번호 FROM 강좌);
 
 DELETE FROM 학생_has_교수 WHERE 교수번호=(SELECT 번호 FROM 교수 WHERE 번호 NOT IN(SELECT 교수번호 FROM 강좌)); 
 DELETE FROM 교수 WHERE 번호 NOT IN(SELECT 교수번호 FROM 강좌);
 
 SELECT * FROM 학생_has_교수;
 SELECT * FROM 교수;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 