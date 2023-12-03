-- Data Analysis
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name,
	COUNT(last_name) AS "Frequency"
FROM "Employees"
GROUP BY last_name
ORDER BY "Frequency" DESC;