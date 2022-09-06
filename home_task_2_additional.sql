create table departments (
	department_id serial primary key,
	department_name varchar(100) not null
)


create table employees (
	employee_id serial primary key,
	employee_name varchar(100) not null,
	department_id int references departments,
	manager_id int references employees (employee_id)
)

