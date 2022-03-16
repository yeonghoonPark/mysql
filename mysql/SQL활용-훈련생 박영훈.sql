-- 1번 데이터베이스 생성(CREATE DATABASE)하시오
/* 데이터베이스 생성 후 주석처리 */
/*
CREATE DATABASE member_db;
*/

/* 유저 생성 후 주석처리 */
/*
CREATE USER member_db@localhost IDENTIFIED WITH mysql_native_password BY 'member_db';
*/

/* 권한 부여 후 주석처리 */
/*
GRANT ALL PRIVILEGES ON member_db.* TO member_db@localhost WITH GRANT OPTION;
*/

/*
USE member_db;
*/

-- 2번 테이블을 생성하시오(CREATE TABLE)
/* 테이블 생성 후 주석 처리 */
/*
CREATE TABLE login_info(
	member_num INTEGER PRIMARY KEY AUTO_INCREMENT,
    member_id VARCHAR(18) NOT NULL UNIQUE,
	member_pass VARCHAR(18) NOT NULL
);
*/

-- 3번 데이터 삽입 (INSERT INTO)
/* 데이터 삽입 후 주석처리 */
/*
INSERT INTO login_info(member_id, member_pass) VALUES('korea2022','lgs1143!');
INSERT INTO login_info(member_id, member_pass) VALUES('naver5328','drama!abc'); 
INSERT INTO login_info(member_id, member_pass) VALUES('daum7700','wave1216@');
INSERT INTO login_info(member_id, member_pass) VALUES('americandream','original1333!');
INSERT INTO login_info(member_id, member_pass) VALUES('admin300','news24!');
INSERT INTO login_info(member_id, member_pass) VALUES('totoloto22','admin99!@3');
INSERT INTO login_info(member_id, member_pass) VALUES('create2955','1q2w3e4r');
INSERT INTO login_info(member_id, member_pass) VALUES('park100last','qwer1234!!');
INSERT INTO login_info(member_id, member_pass) VALUES('kim222','yy77!123');
INSERT INTO login_info(member_id, member_pass) VALUES('nate90','password119!');
*/

-- 4번 데이터 선택 (SELECT)
/*
SELECT member_num AS 회원번호, member_id AS 회원아이디, member_pass AS 패스워드
FROM login_info
ORDER BY member_num DESC;
*/

-- 5번 테이블을 생성하시오(CREATE TABLE)
/* 테이블 생성 후 주석 처리 */
/*
CREATE TABLE notice(
	notice_num INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    notice_tit VARCHAR(40) NOT NULL,
    notice_txt VARCHAR(100),
    notice_date TIMESTAMP DEFAULT NOW(),
    user_name VARCHAR(20),
    user_num INTEGER NOT NULL
);
*/

-- 6번 데이터 삽입 (INSERT INTO)
/* 데이터 삽입 후 주석처리 */
/*
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('코로나19 공지','코로나 관련으로 인하여.....','김성태',1);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('만화책 공동구매','베르세르크,원피스 등 공동구매를 진행.....','이황룡',5);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('새해인사','새해 복 많이 받으세요.....','김삿갓',3);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('3월 이벤트','3월 신학기 봄맞이 이벤트.....','박지성',7);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('오미크론 공지','오미크론 변이 빠르게 확산.....','Mike',2);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('삼성갤럭시22 출시','새롭게 디자인 된 갤럭시22.....','이검희',17);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('애플스마트워치 공동구매','20명 선착순 공동구매 할인.....','김성태',6);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('항공가 특가','제주에서 서울 항공 특가 이벤트.....','김아시아나',19);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('서버점검 안내','이용에 불편을 드려 죄송합니다.....','김점검',12);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('아이스크림 세일','아이스크림 50% 파격 세일.....','나사장',4);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('창고대방출','나이키,아디다스 70% 특가.....','정약용',13);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('주식거래 수수료안내','수수료 평생무료 지금 바로 가입하세요.....','최개미',18);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('수영장 오픈기념 세일','이번에 새롭게 오픈하였습니다 많은.....','이수영',10);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('거래정지 공지','감사보고서 탈락, 거래정지 3월 11~........','최정지',11);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('화장품 세일 안내','다양한 메이커들의 화장품이 특가에.....','이화장',9);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('명품가방 공동구매','샤넬,구찌 등 다양한 명품가방이.....','박가방',14);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('이달의 우수회원','이달의 우수회원으로 선정되신 분은.....','신우수',16);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('겨울코트 바겐세일','재고정리 품목, 전체 90%세일.....','김코트',20);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('이달의 우수매장','이달의 우수매장으로 선정된 곳은.....','최매장',15);
INSERT INTO notice(notice_tit, notice_txt, user_name, user_num) VALUES('3차백신 공지','2차 접종이 완료되신 분들은.....','이백신',8);
*/

-- 7번 데이터 선택 (SELECT)
SELECT notice_num 일련번호, notice_tit 제목, notice_txt 내용, notice_date 작성일, user_name 작성자, user_num 회원번호
FROM notice
ORDER BY notice_date ASC, notice_num DESC;

-- 8번 함수, 조건 사용
SELECT SUBSTR(user_name, 1, 1) AS 성, CONCAT(COUNT(*),' 명') AS 인원수
FROM notice
WHERE user_name LIKE '김%';

-- 9번 데이터 삭제 (DELETE)
DELETE FROM notice WHERE notice_tit=NULL;

-- 10번 데이터 변경 (UPDATE)
UPDATE login_info
SET member_pass='qwer1234'
WHERE member_num=5;

-- 11번 인덱스
/* 인덱스 생성 후 주석처리 */
/*
CREATE INDEX idx_notice ON notice(notice_tit, user_name); 
*/

-- 12번 인덱스를 이용한 검색 효율성
/* 인덱스와 연관없는 필드 2.25s, 20rows */
/*
SELECT *
FROM notice
WHERE user_num=5;
*/

/* 인덱스와 연관된 필드 0.71s, 1row */
/*
SELECT *
FROM notice
WHERE notice_tit LIKE '코로나%';
*/

-- 13번 뷰의 생성 (VIEW)
/* 뷰 생성 후 주석처리 */
/*
CREATE VIEW my_view(회원아이디, 제목, 내용, 작성일, 작성자)
AS SELECT login_info.member_id, notice.notice_tit, notice.notice_txt, notice.notice_date, notice.user_name
FROM login_info JOIN notice ON login_info.member_num=notice.user_num;
*/

-- 14번 뷰의 생성 (VIEW)
/* 뷰 생성 후 주석처리 */
/*
CREATE VIEW my_view2(제목, 작성일, 작성자, 회원아이디)
AS SELECT my_view.제목, my_view.작성일, my_view.작성자, my_view.회원아이디
FROM my_view;
*/

-- 15번 생성된 모든 database요소들을 삭제하시오(database, user....)
/* 데이터베이스 삭제 후 주석처리 */
/*
DROP DATABASE member_db;
*/

/* 유저 삭제 후 주석처리 */
/*
DROP USER member_db@localhost;
*/

/* 권한 해제 후 주석처리 */
/*
REVOKE ALL PRIVILEGES ON member_db.* FROM member_db@localhost;
*/


