ALTER SESSION SET CONTAINER = XEPDB1;

CREATE USER spring IDENTIFIED BY java1234;

GRANT CONNECT, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW, CREATE PROCEDURE, CREATE TRIGGER TO spring;

ALTER USER spring DEFAULT TABLESPACE users QUOTA UNLIMITED ON users TEMPORARY TABLESPACE temp;

ALTER SESSION SET CURRENT_SCHEMA = spring;


create table tblUser (
    id varchar2(30) primary key,
    name varchar2(30) not null
);

insert into tblUser values ('hong', '홍길동');
insert into tblUser values ('dog', '강아지');
insert into tblUser values ('cat', '고양이');

commit;