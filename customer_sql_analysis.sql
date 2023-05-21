/* create a new database.*/
CREATE DATABASE customer_database;
USE customer_database;
/* select all the rows in the database*/
SELECT * FROM customer_data;

/* select the HR_REP job with a salary range over 5000 EUR. */
SELECT * FROM customer_data 
	WHERE JOB_ID = 'HR_REP' AND SALARY > 5000;
    
/* additing 100 EUR with each salary. */
SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, SALARY + 100
	AS "SALARY + 100" FROM customer_data;
    
/* fetch records from the Customer table with FIRST_NAME with the letter ‘A’ at any position.*/
SELECT * FROM customer_data 
	WHERE FIRST_NAME LIKE '%A%';

/* fetch records from the Customer table with FIRST_NAME ending any letter but starting from ‘Mi’.*/
SELECT * FROM customer_data 
	WHERE FIRST_NAME LIKE 'Mi_%';

/* fetch records from the Customer table with LAST_NAME containing letters ‘a, ‘b’, or ‘c’. */
SELECT * FROM customer_data 
	WHERE LAST_NAME REGEXP '[A-C]';

/* fetch records from the Customer table with LAST_NAME not containing letters ‘y’, or ‘z’.*/
SELECT * FROM customer_data 
	WHERE LAST_NAME NOT LIKE '%[y-z]%';

/* fetch records from the Customer table with LAST_NAME containing a total of 7 characters.*/
SELECT * FROM customer_data 
	WHERE LAST_NAME LIKE '_______';

/* fetch records from the Customer table with SALARY field having an ‘5’ in the 1st position and a ‘0’ in the 3rd position.*/
SELECT * FROM customer_data 
	WHERE SALARY LIKE '5__0%';

/* grouping by multiple columns */
SELECT JOB_ID, count(*)  
	FROM customer_data 
	GROUP BY JOB_ID, DEPARTMENT_ID;

/* fetch all data from the table and sort the result in descending order according to the column SALARY.*/
SELECT * FROM customer_data 
	ORDER BY SALARY DESC;
    
    