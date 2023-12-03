-- Data Analysis
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