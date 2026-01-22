alter session set container = orclpdb;

GRANT create session, create table,
create sequence, create view
to demo;

--demo is a user name and demo is a password name also

create role student;

grant create table, create view, select any table, insert any table
to student;

alter session set container = orclpdb;

alter user demo quota unlimited on users;

--select stu_stu_id_sq.currval from dual;


