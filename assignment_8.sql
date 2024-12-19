-- assignment 8 

--1)
SELECT *
FROM employees
WHERE hire_date >= GETDATE() - 30;

--2)
CREATE PROCEDURE sp_get_employee_hours
    @employee_id INT
AS
BEGIN
    SELECT e.fname, e.lname, 
           SUM(w.hours) AS totalhours
    FROM employees e
    JOIN works_on w 
        ON e.employee_id = w.employee_id
    WHERE e.employee_id = @employee_id
    GROUP BY e.fname, e.lname;
END;

-- Execute procedure
EXEC sp_get_employee_hours 101;

 
 --3)
CREATE PROCEDURE sp_department_employee_count
AS
BEGIN
    SELECT d.department_id, d.department_name, 
           COUNT(e.employee_id) AS employee_count
    FROM departments d
    JOIN employees e 
        ON d.department_id = e.department_id
    GROUP BY d.department_id, d.department_name
    HAVING COUNT(e.employee_id) > 5;
END;

-- Execute procedure
EXEC sp_department_employee_count;

