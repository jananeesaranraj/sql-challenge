DROP TABLE departments;
-- Creating table departments
CREATE TABLE departments(
         dept_no varchar PRIMARY KEY,
         dept_name varchar);
select * from departments;		 
-- Creating table employees
CREATE TABLE employees(
        emp_no int NOT NULL,
        emp_title varchar,
        birth_date date NOT NULL,
        first_name varchar,
        last_name varchar,
        sex varchar,
        hire_date date,
        PRIMARY KEY (emp_no));
		
----view the table
SELECT * FROM  employees;


DROP TABLE dep_emp;		
-- Creating table department employee
CREATE TABLE dep_emp(
       emp_no int NOT NULL, 
       FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
       depT_no varchar NOT NULL,
	   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	  );
	  
DROP TABLE dep_manager;
-- Creating table department manager
CREATE TABLE dep_manager(
       dept_no varchar NOT NULL,
       FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
       emp_no int NOT NULL,
       FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
       );
	   
-- Creating table titles
CREATE TABLE titles(
	title_id varchar NOT NULL,
    title Varchar NOT NULL
);

DROP TABLE salaries;
-- Creating table salaries
CREATE TABLE salaries(
	emp_no Integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary Varchar NOT NULL
);

-----List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

------List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01'
AND     '1986-12-31';

-------List the manager of each department along with their 
-------department number, department name, employee number, last name, and first name.
SELECT d.dept_no,de.dept_name,e.emp_no,e.first_name,e.last_name
FROM employees as e
INNER JOIN dep_manager as d ON
e.emp_no = d.emp_no
INNER JOIN departments as de ON
de.dept_no = d.dept_no;

-------List the department number for each employee along with that 
-------employee’s employee number, last name, first name, and department name.
SELECT d.dept_no,de.dept_name,e.emp_no,e.first_name,e.last_name
FROM employees as e
INNER JOIN dep_emp as d ON
e.emp_no = d.emp_no
INNER JOIN departments as de ON
de.dept_no = d.dept_no;

------List first name, last name, and sex of each employee whose 
------first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules'
AND  last_name like 'B%';

------List each employee in the Sales department, including their employee number, last name, and first name
SELECT de.dept_name, e.emp_no,e.last_name,e.first_name
FROM employees as e
INNER JOIN dep_emp as d ON
e.emp_no = d.emp_no
INNER JOIN departments as de ON
de.dept_no = d.dept_no
WHERE de.dept_name = 'Sales';

----using sub-quries
SELECT emp_no,last_name,first_name
FROM employees
WHERE emp_no IN(
     SELECT emp_no
     FROM dep_emp
     WHERE dept_no IN(
	       SELECT dept_no
	        FROM departments
	        WHERE dept_name = 'Sales'));
			
------List each employee in the Sales and Development departments,
------including their employee number, last name, first name, and department name.
SELECT de.dept_name,e.emp_no,e.last_name,e.first_name
FROM employees as e
INNER JOIN dep_emp as d ON
e.emp_no = d.emp_no
INNER JOIN departments as de ON
de.dept_no = d.dept_no
WHERE de.dept_name IN ('Sales','Development');

------List the frequency counts, in descending order, 
------of all the employee last names (that is, how many employees share each last name).
SELECT last_name,count(last_name) as "Counts"
FROM employees
GROUP BY last_name
ORDER BY "Counts" Desc;