CREATE TABLE departments (
	department_id serial PRIMARY KEY,
	department_name VARCHAR (255) NOT NULL
);

-- CREATE TABLE employees (
-- 	employee_id serial PRIMARY KEY,
-- 	employee_name VARCHAR (255),
-- 	department_id INTEGER,
--     CONSTRAINT fk_department
--         FOREIGN KEY (department_id)
--             REFERENCES departments (department_id)
-- );

INSERT INTO departments (department_name)
VALUES
	('Sales'),
	('Marketing'),
	('HR'),
	('IT'),
	('Production');

-- INSERT INTO employees (
-- 	employee_name,
-- 	department_id
-- )
-- VALUES
-- 	('Bette Nicholson', 1),
-- 	('Christian Gable', 1),
-- 	('Joe Swank', 2),
-- 	('Fred Costner', 3),
-- 	('Sandra Kilmer', 4),
-- 	('Julia Mcqueen', NULL);

-- SELECT * FROM employees

-- SELECT
--     employee_name,
--     department_name
-- FROM employees AS E
-- INNER JOIN departments AS D
--     ON e.department_id = d.department_id;

-- SELECT * FROM employees

SELECT
    employee_name,
    department_name
FROM employees
LEFT JOIN departments USING(department_id)