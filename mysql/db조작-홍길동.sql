DELETE FROM 판매정보;
DELETE FROM 도서정보;
DELETE FROM 주문회원;
DELETE FROM 회원정보;



-- 삽입
INSERT INTO 회원정보 VALUES('10001', '홍길동', '경기도', '010-1111-1111');
INSERT INTO 회원정보 VALUES('10002', '이몽룡', '인천', '010-2222-2222');
INSERT INTO 회원정보 VALUES('10003', '성춘향', '서울', '010-3333-3333');
INSERT INTO 회원정보 VALUES('10004', '월매', '서울', '010-4444-4444');
INSERT INTO 회원정보 VALUES('10005', '변사또', '부산', '010-5555-5555');

INSERT INTO 도서정보 VALUES('11111111', 'HTML1');
INSERT INTO 도서정보 VALUES('22222222', 'HTML2');
INSERT INTO 도서정보 VALUES('33333333', 'HTML3');
INSERT INTO 도서정보 VALUES('44444444', 'HTML4');
INSERT INTO 도서정보 VALUES('55555555', 'HTML5');
INSERT INTO 도서정보 VALUES('66666666', 'HTML6');
INSERT INTO 도서정보 VALUES('77777777', 'HTML7');
INSERT INTO 도서정보 VALUES('88888888', 'HTML8');
INSERT INTO 도서정보 VALUES('99999999', 'HTML9');
INSERT INTO 도서정보 VALUES('00000000', 'HTML10');

INSERT INTO 주문회원 VALUES('20220301001', '2022-03-01', '10003');
INSERT INTO 주문회원 VALUES('20220301002', '2022-03-01', '10005');
INSERT INTO 주문회원 VALUES('20220301003', '2022-03-01', '10001');
INSERT INTO 주문회원 VALUES('20220301004', '2022-03-01', '10002');
INSERT INTO 주문회원 VALUES('20220301005', '2022-03-01', '10003');
INSERT INTO 주문회원 VALUES('20220302001', '2022-03-02', '10002');
INSERT INTO 주문회원 VALUES('20220302002', '2022-03-02', '10004');
INSERT INTO 주문회원 VALUES('20220302003', '2022-03-02', '10001');

INSERT INTO 판매정보 VALUES('20220301002', '10002', '11111111', 5, 25000);
INSERT INTO 판매정보 VALUES('20220301001', '10003', '22222222', 2, 15000);
INSERT INTO 판매정보 VALUES('20220301004', '10002', '88888888', 1, 22000);
INSERT INTO 판매정보 VALUES('20220301005', '10003', '33333333', 1, 50000);
INSERT INTO 판매정보 VALUES('20220301003', '10001', '11111111', 5, 25000);



-- 자료 조회

-- 변경

-- 삭제 
