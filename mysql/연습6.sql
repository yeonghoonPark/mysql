DROP DATABASE IF EXISTS study;
DROP USER IF EXISTS study@localhost;

/* CREATE USER 아이디@위치 IDENTIFIED WITH mysql_native_password by 암호 */
CREATE USER study@localhost IDENTIFIED WITH mysql_native_password by 'study';

CREATE DATABASE study;

GRANT ALL PRIVILEGES ON stydy.* TO study@localhost WITH GRANT OPTION;

USE study;

CREATE TABLE t1(
	attr INT
);

INSERT INTO t1 VALUES(1);
INSERT INTO t1 VALUES(2);
INSERT INTO t1 VALUES(3);

SELECT * FROM t1;