--DELIVERABLE 1
--Select emp numb, full name, from and to dates to create a table
SELECT employees.emp_no,
	   employees.first_name,
	   employees.last_name,
	   titles.title,
	   titles.from_date,
	   titles.to_date
INTO retirement_titles
FROM employees 
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date between '1952-01-01' AND '1955-12-31'
Order by employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

Select count(emp_no), unique_titles.title
INTO retiring_titles
from unique_titles
GROUP BY unique_titles.title

-- DELIVERABLE 2
Select distinct on (employees.emp_no) employees.emp_no, 
employees.first_name, 
employees.last_name, 
employees.birth_date,
dept_emp.from_date, 
dept_emp.to_date,
titles.title
INTO mentors
From employees
Left outer join dept_emp
on employees.emp_no = dept_emp.emp_no
Left outer join titles
on dept_emp.emp_no = titles.emp_no
where (dept_emp.to_date = '9999-01-01') AND (employees.birth_date between '1965-01-01' AND '1965-12-31')
ORder by emp_no ASC
