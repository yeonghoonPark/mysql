
/* 3월 16일 back 메모장 참조 */
/*
FOREIGN KEY (외래키속성) REFERENCES 참조테이블(참조기본키) ON UPDATE CASCADE
 =기본키가 업데이트 되면 참조하는 외래키도 변경
FOREIGN KEY (외래키속성) REFERENCES 참조테이블(참조기본키) ON DELETE CASCADE
 =기본키가 삭제되면 참조하는 외래키도 변경
 */
 
-- ------------------------------------------------------------------------------------------------------

-- 외래키 참조무결성 확인
SELECT * FROM information_schema.table_constraints;
SELECT * FROM information_schema.table_constraints WHERE table_name='학생';
SELECT * FROM information_schema.table_constraints WHERE table_name='교수';

-- 외래키 참조무결성 해제/설정 으로 참조무결성을 맞추는 법
SET foreign_key_checks=0; -- 해제
SET foreign_key_checks=1; -- 설정

-- ALTER를 이용하여 CONSTRANINT를 이용하여 DROP와 ADD를 이용하여 외래키를 해제하고 다시 설정하는 법
-- ALTER TABLE 대리점 DROP CONSTRAINT fk_프랜차이즈_본사;
-- ALTER TABLE 대리점 ADD CONSTRAINT fk_프랜차이즈_본사 FOREIGN KEY (프랜번호) REFERENCES 프랜차이즈_본사(번호);

