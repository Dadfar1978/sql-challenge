SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s 
ON e.emp_no= s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date)=1986;


SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e ON dm.emp_no=e.emp_no
JOIN departments d ON dm.dept_no=d.dept_no;

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no=e.emp_no
Join departments d ON de.dept_no=d.dept_no;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name='Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON de.emp_no=e.emp_no
JOIN departments d ON d.dept_no=de.dept_no
WHERE dept_name='Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON de.emp_no=e.emp_no
JOIN departments d ON d.dept_no=de.dept_no
WHERE dept_name IN ('sales, Development');

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;