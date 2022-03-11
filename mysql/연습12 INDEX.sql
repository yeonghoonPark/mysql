/*
CREATE INDEX 인덱스명 ON 테이블(속성);
DROP INDEX 인덱스명 ON 테이블;
*/

/*
CREATE INDEX idx_bookname ON book(bookname, publisher); 
*/

/*
SELECT *
FROM book
WHERE bookname LIKE '%축구%' AND publisher LIKE '%스포츠%';
*/

/*
CREATE TABLE my_book(
	bookid INTEGER,
    bookname VARCHAR(20),
    price INTEGER
);
*/

/*
INSERT INTO my_book(bookid,bookname,price) VALUES(1,'홍길동전',1000);
INSERT INTO my_book(bookid,bookname,price) VALUES(2,'춘향전',2000);
INSERT INTO my_book(bookid,bookname,price) VALUES(3,'이몽룡전',3000);
INSERT INTO my_book(bookid,bookname,price) VALUES(4,'월매전',4000);
INSERT INTO my_book(bookid,bookname,price) VALUES(5,'변사전',5000);
*/

SELECT *
FROM my_book;

/*
CREATE INDEX ix_book ON my_book(bookname);
*/

DELETE FROM my_book WHERE price=3000;

SELECT * 
FROM my_book;

ANALYZE TABLE book;


