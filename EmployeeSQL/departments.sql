DROP TABLE departments;
-- Creating table departments
CREATE TABLE departments(
         dept_no varchar PRIMARY KEY,
         dept_name varchar);
	
DROP TABLE employees;
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
	   
	   
DROP TABLE titles;	   
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
