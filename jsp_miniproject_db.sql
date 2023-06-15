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

INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�ֺ���', '19990622', '010-2222-2222', '���ǻ�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�ڿ�ö', '19990622', '010-2222-3333', '�Ѷ��', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-2222-4444', '������', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '����', '19990622', '010-2222-5555', '�εջ�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�㼺��', '19990622', '010-2222-6666', '���»�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '���ٿ�', '19990622', '010-2222-7777', '���ǻ�', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-2222-8888', '�Ѷ��', '��õ/��굿');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-2222-9999', '������', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '���', '19990622', '010-3333-2222', '�εջ�', '��õ/��굿');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�����', '19990622', '010-3333-3333', '���ѻ�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�̽±�', '19990622', '010-3333-4444', 'ġ�ǻ�', '��õ/�߱�');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-3333-5555', '�����', '��õ/�˴�');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-3333-6666', '�Ѷ��', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�ֱ��', '19990622', '010-3333-7777', '�Ѷ��', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '����ȿ', '19990622', '010-3333-8888', '�����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-3333-9999', '���ǻ�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�Ȼ��', '19990622', '010-4444-2222', '�Ӹ���', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�̿���', '19990622', '010-4444-3333', '�����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-4444-4444', '�����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�赿��', '19990622', '010-4444-5555', '���߻�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '����ȣ', '19990622', '010-4444-6666', '����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�����', '19990622', '010-4444-7777', '���߻�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-4444-8888', '�����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-4444-9999', '������', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '������', '19990622', '010-5555-2222', '�Ѷ��', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�����', '19990622', '010-5555-3333', '������', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�Ǻ���', '19990622', '010-5555-4444', '���ǻ�', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '����ȣ', '19990622', '010-5555-5555', '�Ѷ��', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�̱�ȣ', '19990622', '010-5555-6666', '���ǻ�', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�ڿ���', '19990622', '010-5555-7777', '�����', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�����', '19990622', '010-5555-8888', '�����', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '���ƶ�', '19990622', '010-5555-9999', '���»�', '��õ/������');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '���μ�', '19990622', '010-6666-2222', '���̻�', '��õ/����');
INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL, '�ְ���', '19990622', '010-6666-3333', '�Ѷ��', '��õ/����');

SELECT * FROM MEMBER;

---------------------------- �� MEMBER TABLE �� -------------------------------------------
CREATE TABLE RULE(
    CONTENT CLOB
);

---------------------------- �� RULE TABLE �� -------------------------------------------
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










