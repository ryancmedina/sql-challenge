SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1985-1-1' AND hire_date <= '1985-12-31';

SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name FROM dept_manager AS m
INNER JOIN departments AS d ON m.dept_no = d.dept_no
INNER JOIN employees AS e ON m.emp_no = e.emp_no;

SELECT t.dept_no, t.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp AS t
INNER JOIN employees AS e ON t.emp_no = e.emp_no
INNER JOIN departments AS d ON t.dept_no = d.dept_no;

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';

SELECT emp_no, last_name, first_name FROM Employees
WHERE emp_no IN
(
	SELECT emp_no FROM dept_emp
	WHERE dept_no IN
	(
		SELECT dept_no FROM departments
		WHERE dept_name = 'Sales'
	)
);

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp AS dt
INNER JOIN employees AS e ON dt.emp_no = e.emp_no
INNER JOIN departments AS d ON dt.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS f FROM employees
GROUP BY last_name
ORDER BY f DESC;