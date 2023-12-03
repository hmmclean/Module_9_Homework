-- Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, 
e.last_name, 
e.first_name, 
e.sex, 
s.salary
FROM "Employees" AS e
LEFT JOIN "Salary" AS s
ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name,
last_name,
hire_date
FROM "Employees"
WHERE hire_date > '1986-01-01'
AND hire_date < '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT n.dept_no,
n.dept_name,
m.emp_no,
e.last_name,
e.first_name
FROM "Manager" AS m
LEFT JOIN "DepartmentName" AS n
ON m.dept_no = n.dept_no
LEFT JOIN "Employees" AS e
ON m.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d.dept_no,
e.emp_no,
e.last_name,
e.first_name,
n.dept_name
FROM "Department" AS d
RIGHT JOIN "Employees" AS e
ON d.emp_no = e.emp_no
LEFT JOIN "DepartmentName" AS n
ON d.dept_no = n.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name,
last_name,
sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name
SELECT n.dept_name,
e.emp_no,
e.last_name,
e.first_name
FROM "DepartmentName" AS n
INNER JOIN "Department" AS d
ON n.dept_no = d.dept_no
INNER JOIN "Employees" AS e
ON e.emp_no = d.emp_no
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT n.dept_name,
e.emp_no,
e.last_name,
e.first_name
FROM "DepartmentName" AS n
INNER JOIN "Department" AS d
ON n.dept_no = d.dept_no
INNER JOIN "Employees" AS e
ON e.emp_no = d.emp_no
WHERE n.dept_name = 'Development'
OR n.dept_name = 'Sales'; 

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name,
	COUNT(last_name) AS "Frequency"
FROM "Employees"
GROUP BY last_name
ORDER BY "Frequency" DESC;