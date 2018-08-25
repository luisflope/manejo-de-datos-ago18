--#1 Write a query to display the name (FIRST_NAME, LAST_NAME)
-- and SALARY for all employees whose salary is not in the range $10,000 through $15,000.

SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employees
     WHERE SALARY NOT BETWEEN 10000 AND 15000;

 -- #2 Write a query to display the name (FIRST_NAME, LAST_NAME)
-- and DEPARTMENT_ID of all employees in departments 30 or 100 in ascending order.

SELECT DEPARTMENT_ID, FIRST_NAME, LAST_NAME FROM Employees
	WHERE DEPARTMENT_ID = 30
    OR DEPARTMENT_ID = 100
    ORDER BY FIRST_NAME;

SELECT DEPARTMENT_ID, FIRST_NAME, LAST_NAME FROM Employees
	WHERE DEPARTMENT_ID = 30
    OR DEPARTMENT_ID = 100
    ORDER BY LAST_NAME;

SELECT DEPARTMENT_ID, FIRST_NAME, LAST_NAME FROM Employees
	WHERE DEPARTMENT_ID = 30
    OR DEPARTMENT_ID = 100
    ORDER BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, FIRST_NAME, LAST_NAME FROM Employees
	WHERE DEPARTMENT_ID = 30
    OR DEPARTMENT_ID = 100
    ORDER BY FIRST_NAME, LAST_NAME;

 -- #3 Write a query to display the name (FIRST_NAME, LAST_NAME)
-- and SALARY for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.--

SELECT FIRST_NAME, LAST_NAME, SALARY FROM Employees
     WHERE SALARY NOT BETWEEN 10000 AND 15000
     AND DEPARTMENT_ID = 30
     OR DEPARTMENT_ID = 100;

--PRUEBA QUE ESTAN EN DEPARTAMENTOS 30 Y 100
SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID FROM Employees
     WHERE SALARY NOT BETWEEN 10000 AND 15000
     AND DEPARTMENT_ID = 30
     OR DEPARTMENT_ID = 100;

 -- #4 Write a query to display the name (FIRST_NAME, LAST_NAME) and HIRE_DATE for all employees who were hired in 1987.--

 SELECT FIRST_NAME, LAST_NAME, HIRE_DATE FROM Employees
	WHERE YEAR (HIRE_DATE) = 1987;

-- #5 Write a query to display the first_name of all employees who have both "b" and "c" in their first name.--

SELECT FIRST_NAME FROM Employees
	WHERE FIRST_NAME LIKE '%b%'
    AND FIRST_NAME LIKE '%c%';

-- #6 Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer (IT_PROG)
-- or a Shipping Clerk (SH_CLERK), and whose salary is not equal to $4,500, $10,000 or $15,000.--

SELECT Employees.LAST_NAME, Employees.SALARY, Jobs.JOB_ID FROM Employees, Jobs
	WHERE Jobs.JOB_ID REGEXP 'IT_PROG'
    OR Jobs.JOB_ID REGEXP 'SH_CLERK'
    AND Employees.SALARY <> 4500
    AND Employees.SALARY <> 10000
    AND Employees.SALARY <> 15000;

-- #7 Write a query to display the last name of employees whose first names have exactly 6 characters.--

 SELECT LAST_NAME FROM Employees
	HAVING LENGTH(LAST_NAME) = (6);

-- #8 Write a query to display the last name of employees having 'e' as the third character.--

SELECT LAST_NAME FROM Employees
	WHERE LAST_NAME LIKE '__e%';

-- #9 Write a query to display the available JOBS (i.e. the ones that no employee has taken).--



-- #10 Write a query to display the name (FIRST_NAME, LAST_NAME), SALARY and PF (15% of salary) of all employees.--

SELECT FIRST_NAME AS NOMBRE, LAST_NAME AS APELLIDO, SALARY, SALARY * 0.15 AS PF 
	FROM Employees;


-- #11 Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.--
SELECT LAST_NAME FROM Employees
WHERE LAST_NAME = 'KING'
OR LAST_NAME = 'FORD'
OR LAST_NAME = 'SCOTT'
OR LAST_NAME = 'BLAKE'
ORDER BY FIRST_NAME ASC;


SELECT LAST_NAME FROM Employees
	WHERE LAST_NAME IN ('BLAKE','SCOTT','KING','FORD')
	ORDER BY FIRST_NAME ASC;
