SQL 
Práctica 4

4.
SELECT CEIL(MAX(Salary)) “Maximum”, CEIL(MIN(Salary)) “Minimum”, CEIL(SUM(Salary) “Sum”, CEIL(AVG(Salary)) “Average”
FROM EMPLOYEES;

*Aquí no se si estuvo bien usado CEIL que lo conocí googleando para redondear para arriba. 
Otra duda es cuando pide q se guarde un archivo, me gustaría saber más sobre ello y cómo se hace. En todo caso, obvié esa parte.

5.
SELECT CEIL(MAX(Salary)) “Maximum”, CEIL(MIN(Salary)) “Minimum”, CEIL(SUM(Salary) “Sum”, CEIL(AVG(Salary)) “Average”
FROM Employees
GROUP BY Job_ID;

6.
SELECT Job_ID, COUNT(Job_ID)
FROM Employees
GROUP BY Job_ID;

7.
SELECT COUNT(Manager_ID) “Number of Managers”
FROM Employees;

8.
SELECT (MAX(Salary)Max, MIN(Salary)) AS Diference
FROM Employees;
9.
SELECT COUNT(DISTINCT Manager_ID(MIN(Salary))
FROM Employees
GROUP BY Manager_ID;


Select manager_id, Min(Salary)
From Employees
Where manager_is is not null
Group by manager_id
Having min(Salary)>6000
Order by Min(Salary) DESC;


10.
SELECT COUNT(Employee_ID) AS TOTAL, COUNT(YEAR(Hire_Date) = 1995)AS 1995, COUNT(YEAR(Hire_date) = 1996) AS 1996, COUNT(YEAR(Hire_Date) == 1997)AS 1997, COUNT(YEAR(Hire_Date) == 1998)AS 1998
FROM Employees;

11.
SELECT Job_ID, IF(Department_ID = 20SUM(Salary) SUM(Salary) “Total”
FROM Employees
GROUP BY Job_ID “Job”;


10.

SELECT COUNT(*) Total,
 SUM(DECODE(TO_CHAR(Hire_date,'YYYY'), 1995,1,0))"1995",
 SUM(DECODE(TO_CHAR(Hire_date,'YYYY'), 1996,1,0))"1996",
 SUM(DECODE(TO_CHAR(Hire_date,'YYYY'), 1997,1,0))"1997",
 SUM(DECODE(TO_CHAR(Hire_date,'YYYY'), 1998,1,0))"1998",
FROM Employees;

11.

SELECT Job_id "Job", 
 SUM(DECODE(department_id, 20, Salary)) "Dept 20", 
 SUM(DECODE(department_id, 50, Salary)) "Dept 50",   
 SUM(DECODE(department_id, 80, Salary)) "Dept 80",   
 SUM(DECODE(department_id, 90, Salary)) "Dept 90",     
 SUM(Salary) "Total"
FROM Employees
GROUP BY Job_ID;
