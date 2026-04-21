select * from tabs;

create table tblUser(
    id varchar2(30) primary key,
    name varchar2(30) not null
);

insert into tblUser values ('dog', '강아지');
insert into tblUser values ('cat', '고양이');

commit;

select * from tblUser;