SELECT COUNT(*) AS '북아이디의 갯수', SUM(price) AS '총 가격의 합', AVG(price) AS '평균 가격', MAX(price) AS '최고 가격', MIN(price) AS '최소가격'
FROM book;

SELECT ABS(50);
SELECT ROUND(15.52,1);

SELECT LOWER(bookname) AS '책 제목'
FROM book;

SELECT UPPER(bookname) AS '책 제목'
FROM book;

SELECT bookname,publisher
FROM book;

/* 축구의 역사(굿스포츠) 형태로 출력, 에트리뷰느는 제목(출판사)*/
SELECT CONCAT(bookname,'(',publisher,')') AS 책제목
FROM book;

SELECT *
FROM customer;

SELECT SUBSTR(name,2,2) AS 이름
FROM customer;

SELECT ASCII('A') AS 'A의 아스키코드', ASCII('a') AS 'a의 아스키코드';
SELECT LENGTH('korea') AS '문자열 byte 기준의 길이';
SELECT CHAR_LENGTH('대한민국') AS '문자열의 갯수';

SELECT REPLACE(publisher,'굿스포츠','배드스포츠')
FROM book;

SELECT DATE_FORMAT(orderdate,'%a %d %M %Y')
FROM orders;

SELECT DATE_FORMAT('2014-01-01 09:15:25','%h시 %i분 %s초');

SELECT orderdate AS 구매일, ADDDATE(orderdate,INTERVAL 3 DAY) AS '반품 가능일'
FROM orders;

SELECT DATEDIFF(sysdate(),'1988-12-16') AS '나의 경과일';