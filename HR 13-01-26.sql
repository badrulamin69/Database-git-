create table emp1122(
    emp_id number,
    emp_name varchar(30) not null,
    emp_email varchar(60) not null,
    emp_salary number(10,2),
    emp_cell varchar(15),
    
        CONSTRAINT hr_emp1122_emp_id_pk primary key (emp_id),
        CONSTRAINT hr_emp1122_emp_email_uq UNIQUE (emp_email),
        CONSTRAINT hr_emp1122_emp_cell_uq UNIQUE (emp_cell)
);

select * from emp1122;

insert into emp1122(EMP_ID,EMP_NAME,EMP_EMAIL,EMP_SALARY,EMP_CELL)
values (1,'Shimul','Shimul@gmail.com','500000','01568186408')

update emp1122 set emp_name='Sabbir',emp_email='sabbir@gmail.com' where emp_id=8;
commit;

