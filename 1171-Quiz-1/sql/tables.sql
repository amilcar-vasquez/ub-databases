--this is the tables file for Quiz 1
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    name text NOT NULL,
    job text NOT NULL,
    salary int NOT NULL
);

-- inserting of data - fixed insert into one statement
INSERT INTO employees (name, job, salary)
VALUES ('Amilcar', 'Trainer', '2000'),
('Jimmy', 'Teller', '1500'),
('Mary', 'Cleaner', '1000'),
('Keiran', 'CEO', '5000'),
('Elena', 'President', '4500');

--queries section
SELECT *
FROM employees;

SELECT *
FROM employees
ORDER BY name DESC;