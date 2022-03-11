/*
CREATE VIEW 북
AS SELECT *
FROM book;
*/

/*
CREATE VIEW 도서별_판매현황(아이디,금액합계,제목)
AS SELECT orders.bookid, SUM(orders.saleprice), 북.bookname
FROM orders join 북 ON orders.bookid=북.bookid;
*/

SELECT *
FROM 도서별_판매현황;


