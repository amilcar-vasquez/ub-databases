--this is the tables file for Quiz 1
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    name text NOT NULL,
    job text NOT NULL,
    salary int NOT NULL
);

INSERT INTO employees (name, job, salary)
VALUES ('Amilcar', 'Trainer', '2000');

INSERT INTO employees (name, job, salary)
VALUES ('Jimmy', 'Teller', '1500');

INSERT INTO employees (name, job, salary)
VALUES ('Mary', 'Cleaner', '1000');

INSERT INTO employees (name, job, salary)
VALUES ('Keiran', 'CEO', '5000');

INSERT INTO employees (name, job, salary)
VALUES ('Elena', 'President', '4500');

--queries section
SELECT *
FROM employees;

SELECT *
FROM employees
ORDER BY name DESC;