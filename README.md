# SQL

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, name, position, salary)
VALUES 
    (1, 'Alice', 'Software Engineer', 75000.00),
    (2, 'Bob', 'Data Scientist', 85000.00),
    (3, 'Charlie', 'Product Manager', 95000.00);

SELECT * FROM employees;

UPDATE employees
SET salary = 78000.00
WHERE id = 1;

DELETE FROM employees
WHERE id = 3;

git add create_table.sql insert_data.sql query_data.sql update_data.sql delete_data.sql

git commit -m "Added basic SQL learning scripts"

git push origin main


