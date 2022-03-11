/*
CREATE TABLE my_book(
	bookid INTEGER,
    bookname VARCHAR(40),
    price INTEGER
);

INSERT INTO my_book VALUES(1, '홍길동전', 12000);
INSERT INTO my_book VALUES(2, '이몽룡전', NULL);
INSERT INTO my_book VALUES(3, NULL, 12000);
*/

/*
SELECT *
FROM my_book
WHERE bookid IS NOT NULL AND bookname IS NOT NULL AND price IS NOT NULL;

SELECT AVG(IFNULL(price,0))
FROM my_book;

SELECT *
FROM customer;

SELECT customer.name, SUM(orders.saleprice) AS '구매 합', CONCAT(COUNT(*),' 건') AS '구매 건'
FROM customer INNER JOIN orders ON customer.custid=orders.custid
			  INNER JOIN book ON orders.bookid=book.bookid
GROUP BY customer.name;
*/

/*
SELECT customer.name '성명', SUM(saleprice) '합계금액' 
FROM orders INNER JOIN customer ON orders.custid=customer.custid
GROUP BY orders.custid;
*/

/* 스칼라 부속질의 (SELECT에 들어감) */
/*
SELECT cu.name 성명, (
	SELECT SUM(od.saleprice)
    FROM orders od
    WHERE cu.custid=od.custid
) AS 합계금액
FROM customer AS cu
GROUP BY cu.name;
*/

/* 중첩 질의 */
SELECT custid 아이디, saleprice '판매금액 합계'
FROM orders
WHERE saleprice>=(
	SELECT AVG(price)
    FROM book
);

SELECT SUM(orders.saleprice) 합계금액
FROM orders
WHERE EXISTS(
	SELECT *
    FROM customer
    WHERE orders.custid=customer.custid AND address LIKE '%대한%'
);
















