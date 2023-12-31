DROP TABLE MEMBER;

CREATE TABLE MEMBER(
    PS_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(50) NOT NULL,
    BIRTH VARCHAR2(100) NOT NULL,
    PHONE VARCHAR2(50) NOT NULL,
    WISH_LIST  VARCHAR2(100) NOT NULL,
    REGION VARCHAR2(100) NOT NULL
);

CREATE SEQUENCE MEMBER_SEQ
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE
    NOORDER;
    
select * from member;

INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '최보현', '19990622', '010-2222-2222', '설악산', '인천/구월동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '박영철', '19990622', '010-2222-3333', '한라산', '인천/가정동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김혜미', '19990622', '010-2222-4444', '지리산', '인천/가정동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '최희연', '19990622', '010-2222-5555', '민둥산', '인천/가정동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '허성수', '19990622', '010-2222-6666', '장태산', '인천/가정동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '지다운', '19990622', '010-2222-7777', '설악산', '인천/부평동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '이종곤', '19990622', '010-2222-8888', '한라산', '인천/계산동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '마현진', '19990622', '010-2222-9999', '지리산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '곽운도', '19990622', '010-3333-2222', '민둥산', '인천/계산동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '장재민', '19990622', '010-3333-3333', '북한산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '이승기', '19990622', '010-3333-4444', '치악산', '인천/중구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '오윤주', '19990622', '010-3333-5555', '운장산', '인천/검단');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '강경주', '19990622', '010-3333-6666', '한라산', '인천/부평구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '최길락', '19990622', '010-3333-7777', '한라산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김정효', '19990622', '010-3333-8888', '월출산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '윤가영', '19990622', '010-3333-9999', '월악산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '안상운', '19990622', '010-4444-2222', '속리산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '이원준', '19990622', '010-4444-3333', '오대산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '박현주', '19990622', '010-4444-4444', '월출산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김동건', '19990622', '010-4444-5555', '가야산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '정상호', '19990622', '010-4444-6666', '계룡산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김경진', '19990622', '010-4444-7777', '가야산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김혜민', '19990622', '010-4444-8888', '내장산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '정유미', '19990622', '010-4444-9999', '지리산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '한지영', '19990622', '010-5555-2222', '한라산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '도모아', '19990622', '010-5555-3333', '지리산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '권보라', '19990622', '010-5555-4444', '설악산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '조정호', '19990622', '010-5555-5555', '한라산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '이광호', '19990622', '010-5555-6666', '설악산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '박영광', '19990622', '010-5555-7777', '월출산', '인천/간석동');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '유재송', '19990622', '010-5555-8888', '내장산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '유아랑', '19990622', '010-5555-9999', '장태산', '인천/연수구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '김인선', '19990622', '010-6666-2222', '마이산', '인천/서구');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '최가영', '19990622', '010-6666-3333', '한라산', '인천/부평구');

SELECT * FROM MEMBER;

---------------------------- ↑ MEMBER TABLE ↑ -------------------------------------------
CREATE TABLE RULE(
    CONTENT CLOB
);

---------------------------- ↑ RULE TABLE ↑ -------------------------------------------
CREATE TABLE EPILOGUE (
    BOARD_NO NUMBER PRIMARY KEY,
    TITLE VARCHAR2(255) NOT NULL,
    HIKING_DATE DATE NOT NULL,
    REG_DATE DATE NOT NULL,
    CONTENT CLOB NOT NULL,
    USER_NAME VARCHAR2(100) NOT NULL,
    VIEWS NUMBER NOT NULL,
    IMG VARCHAR2(255)
);


CREATE SEQUENCE EPILOGUE_SEQ
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE
    NOORDER;

select * from EPILOGUE;











