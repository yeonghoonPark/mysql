SELECT * FROM book;
SELECT * FROM book WHERE bookname LIKE '%이%';
SELECT * FROM book WHERE bookname LIKE '%이%' ORDER BY price;
SELECT * FROM book WHERE bookname LIKE '%이%' ORDER BY price DESC;
SELECT * FROM orders WHERE custid<=3 ORDER BY bookid ASC,saleprice;
SELECT * FROM orders;
SELECT orderdate AS '판매일',SUM(saleprice) AS '총 판매액',COUNT(orderdate) AS '판매 건'
FROM orders
GROUP BY orderdate
HAVING COUNT(orderdate)>=2;

SELECT customer.name AS '고객명', customer.address AS '주소', customer.phone AS '연락처',
       orders.bookid AS '책 번호', orders.saleprice AS '거래금액'
FROM customer, orders
WHERE customer.custid=orders.custid;

SELECT customer.name AS '고객명', customer.address AS '주소', customer.phone AS '연락처',
       orders.bookid AS '책 번호', orders.saleprice AS '거래금액'
FROM customer INNER JOIN orders ON customer.custid = orders.custid;

SELECT book.bookid AS '책 ID', book.bookname AS '책 제목', book.publisher AS '출판사', book.price AS '정가',
       orders.orderid as '주문번호', orders.saleprice as '판매금액', orders.orderdate as '판매일'
from book inner join orders on book.bookid=orders.bookid;

SELECT book.bookid AS '책 ID', book.bookname AS '책 제목', book.publisher AS '출판사', book.price AS '정가',
       orders.orderid as '주문번호', orders.saleprice as '판매금액', orders.orderdate as '판매일'
from book left outer join orders on book.bookid=orders.bookid;

SELECT book.bookid AS '책 ID', book.bookname AS '책 제목', book.publisher AS '출판사', book.price AS '정가',
       orders.orderid as '주문번호', orders.saleprice as '판매금액', orders.orderdate as '판매일'
from book right outer join orders on book.bookid=orders.bookid;

SELECT *
FROM book
ORDER BY price;

SELECT bookname
FROM book
WHERE price=(
	SELECT MAX(price)
    FROM book
);

SELECT bookname
FROM book
WHERE price=(
	SELECT MAX(price)
    FROM book
	WHERE price<=(
		SELECT AVG(price)
        FROM book
    )
);

/* 판매가 이루어지지 않은 도서이름을 구하라 */
SELECT bookname as '미판매 도서명'
FROM book
WHERE bookid NOT IN(
	SELECT bookid
    FROM orders
);

/* 판매가 이루어진 도서이름을 구하라 */
SELECT bookname as '판매 된 도서명'
FROM book inner join orders on book.bookid=orders.bookid;

SELECT bookname
FROM book,orders
WHERE book.bookid=orders.bookid;

SELECT bookname
FROM book
WHERE EXISTS(
	SELECT *
    FROM orders
	WHERE book.bookid=orders.bookid
);

SELECT * FROM book;






	   	

