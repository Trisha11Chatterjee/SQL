
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';


-- Fetching only empId, first name, and last name for the 'Sales' department
SELECT 
    empId, 
    SUBSTRING(name, 1, INSTR(name, ' ') - 1) AS first_name,   -- Extract first name
    SUBSTRING(name, INSTR(name, ' ') + 1) AS last_name          -- Extract last name
FROM EMPLOYEE 
WHERE dept = 'Sales';
