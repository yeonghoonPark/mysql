/*
CREATE VIEW 도서별_판매금액(도서명, 출판사, 판매합계금액)
AS SELECT book.bookname, book.publisher, SUM(orders.saleprice)
FROM book JOIN orders ON book.bookid=orders.bookid
GROUP BY book.bookid;
*/

SHOW TABLES;
DESC 도서별_판매금액;
DESC book;
DESC orders;

SELECT *
FROM 도서별_판매금액;

/*book 테이블에서 UPDATE를 하면 VIEW도 같이 변한다 */
UPDATE book 
SET publisher='축구출판사' 
WHERE bookname LIKE '%축구%'; 

SELECT *
FROM 도서별_판매금액;

/* VIEW에서도 SELECT문은 사용 할 수 있다 */
SELECT COUNT(도서명) 판매권수, 출판사, SUM(판매합계금액)
FROM 도서별_판매금액
WHERE 판매합계금액>=15000
GROUP BY 출판사
HAVING SUM(판매합계금액)>20000
ORDER BY 출판사 ASC, 판매권수 DESC;

SELECT * FROM 도서별_판매금액;

/* VIEW는 물리적으로 존재하지 않기때문에 INSERT문, UPDATE문을 사용 할 수 없다 */
/*
UPDATE 도서별_판매금액
SET 출판사='한빛출판사'
WHERE 출판사='굿스포츠';
*/

SELECT * FROM 도서별_판매금액;

/* VIEW를 통해서 또 다른 VIEW를 만들 수 있다 */
/*
CREATE VIEW 도서
AS SELECT *
FROM 도서별_판매금액;
*/

