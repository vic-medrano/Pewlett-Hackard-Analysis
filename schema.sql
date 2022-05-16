-- Creating tables for PH-EmployeeDB
CREATE TABLE Departments (dept_no VARCHAR(4) NOT NULL, 
						  dept_name VARCHAR(40) NOT NULL,
						  Primary key (dept_no), Unique(dept_name));
Create Table Employees (emp_no Integer Not Null, 
					   birth_date Date Not Null,
					   first_name Varchar Not Null,
					   last_name Varchar Not Null,
					   gender Varchar Not null,
					   hire_date Date Not Null,
					   Primary Key (emp_no)
					  );
Create Table Dept_manager(
	dept_no Varchar(4) Not Null,
	emp_no INT Not null,
	from_date Date not null,
	to_date Date not null,
Foreign Key (emp_no) References employees(emp_no),
Foreign Key (dept_no) References departments (dept_no),
	Primary Key (emp_no, dept_no)
	);
Create Table Dept_Emp (
	emp_no Integer not null,
	dept_no Varchar not null,
	from_date date not null,
	to_date date not null,
	Foreign Key(emp_no) References employees(emp_no),
		Primary Key (emp_no, dept_no)
	
);
Create Table Salaries (
	emp_no Int Not Null,
	salary Int Not null,
	from_date Date not null,
	to_date Date not null,
	Foreign Key (emp_no) References employees (emp_no),
	Primary Key (emp_no)
	
);	
Create Table Titles (
	emp_no integer not null,
	salary integer not null,
	from_date date not null,
	to_date date not null,
	Foreign Key (emp_no) References employees (emp_no),
	Primary Key (emp_no)
);
Select * from departments;