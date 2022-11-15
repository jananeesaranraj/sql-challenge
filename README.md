# sql-challenge
**Background**
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

**Data Modeling**

Inspected the CSVs and sketched out an ERD of the tables. After designing, the following is the ERD of the database
![Employee_ERD](https://user-images.githubusercontent.com/112193116/201808898-cb049aa4-9c28-4066-a892-5fa321a09c9f.png)

**Data Engineering**

1. created a table schema for each of the six CSV files. Specified data types, primary keys, foreign keys, and other constraints.

2. Imported each CSV file into the corresponding SQL table.

**Data Analysis**

1.Listed the following details of each employee: employee number, last name, first name, sex, and salary.

2.Listed first_name,last_name and hire date for the employees hired in 1986.

3.Listed the manager of each department with the following information: department number, department name, employee number, last name, first name.

4.Listed the department number of each employee with the following information: employee's employee number, last name, first name, and department name.

5.Listed all employees whose first name is "Hercules" and last names begin with "B."

6.Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7.Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8.Listed the frequency count of employee last names in descending order ( how many employees share each last name).

**Bonus**
The following steps to generate a visualization of the data:

1.Imported the SQL database into Pandas.

2.Created a histogram to visualize the most common salary ranges for employees.

![histogram](https://user-images.githubusercontent.com/112193116/201811071-aba02b90-5ae7-4815-aee1-4916c0da688f.png)

3.Created a bar chart of average salary by title.

![Screenshot 2022-11-14 211813](https://user-images.githubusercontent.com/112193116/201811072-8555a0b1-087d-49b1-a9b1-1240c0e40614.png)
