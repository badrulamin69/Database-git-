-- SELECT last_name, hire_date
-- FROM employees
-- WHERE EXTRACT(YEAR FROM hire_date) = 2006;

-- practice 3/3

SELECT last_name, hire_date
FROM hr.EMPLOYEES
WHERE hire_date BETWEEN TO_DATE('01/01/2012', 'MM/DD/YYYY')
                    AND TO_DATE('12/31/2012', 'MM/DD/YYYY');


SELECT last_name, hire_date
FROM hr.EMPLOYEES
WHERE hire_date like '%12';

SELECT last_name, hire_date
FROM hr.EMPLOYEES
WHERE EXTRACT(MONTH FROM hire_date) = 12;
