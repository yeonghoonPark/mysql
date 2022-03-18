-- --------------------------------------------------------------------
--                            2 번
-- --------------------------------------------------------------------
-- 영화정보 DB정의 및 DB관리자 생성, 권한 설정
DROP DATABASE IF EXISTS 영화정보_db;
CREATE DATABASE 영화정보_db;
DROP USER IF EXISTS movie_info@localhost;
CREATE USER movie_info@localhost IDENTIFIED WITH mysql_native_password BY 'qwer1234!';
GRANT ALL PRIVILEGES ON 영화정보_db.* TO movie_info@localhost WITH GRANT OPTION;
SHOW DATABASES;
USE 영화정보_db;

-- 장르 TABLE 생성
CREATE TABLE 장르(
	장르코드 VARCHAR(10) NOT NULL,
    장르명 VARCHAR(45) NOT NULL,
    PRIMARY KEY (장르코드)
);
DESC 장르;

-- 감독 TABLE 생성
CREATE TABLE 감독(
	등록번호 VARCHAR(10) NOT NULL,
    이름 VARCHAR(45) NOT NULL,
    성별 ENUM('남','여') NOT NULL,
    출생일 VARCHAR(45) NOT NULL,
    출생지 VARCHAR(45) NOT NULL,
    학력사항 VARCHAR(45) NOT NULL,
    PRIMARY KEY (등록번호)
);
DESC 감독;

-- 배우 TABLE 생성
CREATE TABLE 배우(
	주민번호 VARCHAR(14) NOT NULL,
    이름 VARCHAR(45) NOT NULL,
    성별 ENUM('남','여') NOT NULL,
    출생일 VARCHAR(45) NOT NULL,
    출생지 VARCHAR(45) NOT NULL,
    키 VARCHAR(45) NOT NULL,
    몸무게 VARCHAR(45) NOT NULL,
    혈액형 ENUM('A', 'B', 'AB', 'O'),
    PRIMARY KEY (주민번호)
);
DESC 배우;

-- 영화 TABLE 생성
CREATE TABLE 영화(
	영화코드 VARCHAR(10) NOT NULL,
    제목 VARCHAR(45) NOT NULL,
    제작년도 VARCHAR(45) NOT NULL,
    상영시간 VARCHAR(45) NOT NULL,
    개봉일자 VARCHAR(45) NOT NULL,
    제작사 VARCHAR(45) NOT NULL,
    배급사 VARCHAR(45) NOT NULL,
    장르_장르코드 VARCHAR(10) NOT NULL,
    PRIMARY KEY (영화코드),
    CONSTRAINT fk_장르_장르코드 FOREIGN KEY (장르_장르코드) REFERENCES 장르(장르코드) ON UPDATE CASCADE ON DELETE CASCADE
);
DESC 영화;

-- 감독_has_영화 TABLE 생성
CREATE TABLE 감독_has_영화(
	감독_등록번호 VARCHAR(10) NOT NULL,
    영화_영화코드 VARCHAR(10) NOT NULL,
    PRIMARY KEY (감독_등록번호, 영화_영화코드),
    CONSTRAINT fk_감독_등록번호 FOREIGN KEY (감독_등록번호) REFERENCES 감독(등록번호) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_영화_영화코드a FOREIGN KEY (영화_영화코드) REFERENCES 영화(영화코드) ON UPDATE CASCADE ON DELETE CASCADE 
);
DESC 감독_has_영화;


-- 영화_has_배우 TABLE 생성
CREATE TABLE 영화_has_배우(
	영화_영화코드 VARCHAR(10) NOT NULL,
    배우_주민번호 VARCHAR(14) NOT NULL,
    PRIMARY KEY (영화_영화코드, 배우_주민번호),
    CONSTRAINT fk_영화_영화코드b FOREIGN KEY (영화_영화코드) REFERENCES 영화(영화코드) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_배우_주민번호 FOREIGN KEY (배우_주민번호) REFERENCES 배우(주민번호) ON UPDATE CASCADE ON DELETE CASCADE 
);
DESC 영화_has_배우;