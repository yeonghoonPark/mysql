DROP DATABASE IF EXISTS 프랜차이즈_관리;
CREATE DATABASE 프랜차이즈_관리;
USE 프랜차이즈_관리;

CREATE TABLE 프랜차이즈_본사(
	번호 VARCHAR(10) NOT NULL,
    회사명 VARCHAR(45) NOT NULL UNIQUE,
    대표 VARCHAR(45) NOT NULL,
    주소 VARCHAR(45) NOT NULL,
    연락처 VARCHAR(45) NOT NULL,
    PRIMARY KEY (번호)
);

CREATE TABLE 대리점(
	번호 VARCHAR(10) NOT NULL UNIQUE,
    프랜번호 VARCHAR(10) NOT NULL,
    대리점명 VARCHAR(45) NOT NULL,
    대표 VARCHAR(45) NOT NULL,
    주소 VARCHAR(45) NOT NULL,
    연락처 VARCHAR(45) NOT NULL,
    PRIMARY KEY (번호),
    CONSTRAINT fk_프랜차이즈_본사 FOREIGN KEY (프랜번호) REFERENCES 프랜차이즈_본사(번호)
);

-- 참조무결점 2가지 방법, 해제
-- SET foreign_key_checks=0;
ALTER TABLE 대리점 DROP CONSTRAINT fk_프랜차이즈_본사;
SELECT * FROM information_schema.table_constraints WHERE table_name='대리점';

DESC 대리점;
INSERT INTO 대리점 VALUES('0001-1', '0001', '서울 홍대점', '김사장', '서울 서대문구 25-1', '02-111-1111');
INSERT INTO 대리점 VALUES('0001-2', '0001', '서울 마포점', '이사장', '서울 마포구 168-4', '02-222-2222');
INSERT INTO 대리점 VALUES('0001-3', '0001', '서울 강남점', '박사장', '서울 강남구 46-5', '02-333-3333');
INSERT INTO 대리점 VALUES('0001-4', '0001', '인천 서구점', '정사장', '인천 서구 24-9', '032-111-1111');
INSERT INTO 대리점 VALUES('0002-1', '0002', '대구 달서점', '김사장', '대구 달서구 1', '052-111-1111');
INSERT INTO 대리점 VALUES('0002-2', '0002', '대구 중구점', '이사장', '대구 중구 2', '052-222-2222');
INSERT INTO 대리점 VALUES('0002-3', '0002', '대전 서구점', '최사장', '대전 서구 1-25', '041-111-1111');
INSERT INTO 대리점 VALUES('0003-1', '0003', '본점', '오징어', '인천 미추홀구 1-12', '032-222-2222');
INSERT INTO 대리점 VALUES('0004-1', '0004', '본점', '성춘향', '제주 서귀포시 52-4', '062-111-1111');
INSERT INTO 대리점 VALUES('0004-2', '0004', '제주시점', '월매', '제주 제주시 16-302', '062-222-2222');
INSERT INTO 대리점 VALUES('0004-3', '0004', '한라대점', '변사또', '제주 한림읍 5', '062-333-3333');
INSERT INTO 대리점 VALUES('0004-4', '0004', '마라점', '강감찬', '제주 연동 180-3', '062-444-4444');
SELECT * FROM 대리점;

DESC 프랜차이즈_본사;
INSERT INTO 프랜차이즈_본사 VALUES('0001', '(주)닥꼬기', '홍길동', '서울 마포', '010-111-1111');
INSERT INTO 프랜차이즈_본사 VALUES('0002', '마징가 떡뽁끼', '이몽룡', '대구 달서구 1', '010-222-2222');
INSERT INTO 프랜차이즈_본사 VALUES('0003', '오나라 장어군', '오징어', '인천 미추홀구 1-12', '010-333-3333');
INSERT INTO 프랜차이즈_본사 VALUES('0004', '맵구만 빙수', '성춘향', '제주 서귀포시', '010-444-4444');
SELECT * FROM 프랜차이즈_본사;

-- 참조무결점 2가지 방법, 재설정
-- SET foreign_key_checks=1;
ALTER TABLE 대리점 ADD CONSTRAINT fk_프랜차이즈_본사 FOREIGN KEY (프랜번호) REFERENCES 프랜차이즈_본사(번호);
SELECT * FROM information_schema.table_constraints WHERE table_name='대리점';


-- ------------------------- 프랜차이즈 삭제 -------------------------
/* 참조무결성의 원칙으로 외래키로 보내져 있는 테이블은 삭제되지 않기 때문에 외래키로 보낸 테이블을 먼저 삭제하고 그 후 테이블을 삭제한다 */
-- DELETE FROM 대리점;
-- DELETE FROM 프랜차이즈_본사;

/* 외래키의 관계를 해제 하고 삭제한 후 다시 재설정 하는 법 */
-- SET foreign_key_checks=0;
-- DELETE FROM 대리점;
-- DELETE FROM 프랜차이즈_본사;
-- SET foreign_key_checks=1;

/* ALTER문을 이용하여 삭제하고 재설정하는 방법 */
-- ALTER TABLE 대리점 DROP CONSTRAINT fk_프랜차이즈_본사;
-- DELETE FROM 대리점;
-- DELETE FROM 프랜차이즈_본사;
-- ALTER TABLE 대리점 ADD CONSTRAINT fk_프랜차이즈_본사 FOREIGN KEY (프랜번호) REFERENCES 프랜차이즈_본사(번호);




