-- 1.- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees e,salaries s
WHERE e.emp_no = s.emp_no;

-- 2 List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.first_name,e.last_name,e.hire_date
FROM employees e 
WHERE EXTRACT(Year from e.hire_date)=1986;

-- 3 List the manager of each department with the following information: department number, department name, 
--   the manager's employee number, last name, first name.

SELECT dm.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name 
FROM employees e,dept_manager dm,departments d
WHERE e.emp_no = dm.emp_no and dm.dept_no = d.dept_no; 

-- 4 List the department of each employee with the following information: employee number, last name, 
--   first name, and department name.

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e,dept_emp de,departments d
WHERE e.emp_no = de.emp_no and de.dept_no = d.dept_no;

-- 5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
 
SELECT first_name,last_name,sex 
FROM employees
WHERE first_name LIKE 'Hercules%' AND last_name LIKE 'B%'

-- 6 List all employees in the Sales department, including their employee number, last name, first name, 
--   and department name.

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e,dept_emp de,departments d
WHERE e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND d.dept_name = 'Sales'

-- 7 List all employees in the Sales and Development departments, including their employee number, 
--   last name, first name, and department name.

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e,dept_emp de,departments d
WHERE e.emp_no = de.emp_no AND de.dept_no = d.dept_no AND d.dept_name IN ('Sales','Development');

-- 8 In descending order, list the frequency count of employee last names, i.e., how many 
--   employees share each last name.

SELECT count(last_name) as Last_Name_count,last_name
FROM employees 
GROUP BY last_name
ORDER BY Last_Name_count desc;









