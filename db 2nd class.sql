SELECT last_name, salary, email
FROM employees
where salary between 2000 and 5000;

SELECT last_name, salary, email
FROM employees
where salary in (5000,8000,12000);

SELECT last_name, salary, email,COMMISSION_PCT
FROM employees
where salary in(5000,8000,12000)and last_name like'S%';

SELECT last_name, salary, email,COMMISSION_PCT
FROM employees
where salary in(5000,8000,12000) or last_name like'S%';

SELECT last_name, salary, email, COMMISSION_PCT
FROM employees
where salary BETWEEN 2000 AND 3500 and last_name like'_%s%_';

SELECT last_name, salary , email , COMMISSION_PCT
FROM employees
where lower(last_name)='Chen';

SELECT last_name, salary, email, hire_date
FROM employees
where hire_date '05-Feb-06';

SELECT last_name, salary, email, hire_date, COMMISSION_PCT
FROM employees
where COMMISSION_PCT is not null;

