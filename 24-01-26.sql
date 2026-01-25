create table emp10658(
    e_id number,
    e_name VARCHAR2(50),
    salary NUMBER(10,2),
    hire_date date,
    address VARCHAR2(80),

CONSTRAINT e_id_pk PRIMARY KEY(e_id)
);

select * from emp10658;

INSERT INTO emp10658(e_id,e_name,salary,hire_date,address)
VALUES(2,'Shimul','50000',to_date('30/01/2026','DD/MM/YYYY'),'Dhanmondi');

alter table emp10658
add dept_name VARCHAR2(30);
desc emp10658;




