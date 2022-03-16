-- ----------------------------------------------
-- 권한설정
-- ----------------------------------------------

CREATE USER admin_book@localhost IDENTIFIED WITH mysql_native_password BY 'qwer1234!';
GRANT ALL PRIVILEGES ON 도서관리_db.* TO admin_book@localhost WITH GRANT OPTION; 