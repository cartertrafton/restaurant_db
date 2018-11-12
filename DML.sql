--  QUERIES
-- 	4 Simple Queries (based on lecture 6)
    -- Get customers with 617 area code
SELECT *
FROM CUSTOMER_t
WHERE Phone LIKE '617%'
ORDER BY C_Name DESC;

	-- Get foods under 10 dollars
SELECT FoodID, Name, Price
FROM FOOD_t
WHERE Price < 10;

	-- Get employee names and IDs who began before 2017
SELECT EmployeeID, E_Name, Date_hired
FROM EMPLOYEE_t
WHERE Date_hired < '2017:00:00';

	-- Get tables with 6+ available seats
SELECT TableNo AS Big_TableID, Available_seats
FROM TABLE_t
WHERE Available_seats > 6;



-- 	3 Intermediate Queries (based on lecture 7)
    -- Count number of people at each table
SELECT TableNo, COUNT(TableNo) as seatsTaken
FROM CUSTOMER_t
GROUP BY TableNo;

	-- Count number of orders each waiter is assigned
SELECT WaiterID, COUNT(CustID) as customersAssigned
FROM ORDER_t
GROUP BY WaiterID
ORDER BY customersAssigned DESC;

	-- List customers who ordered food over 10 dollars
SELECT C_Name
FROM CUSTOMER_t
WHERE CustID IN
(
        SELECT CustID
        FROM ORDER_t
        WHERE FoodID IN
        (
            SELECT FoodID
            FROM FOOD_t
            WHERE Price > 10
        )
);



-- 	3 Advanced Queries (based on lecture 8)
    -- Find all customers who paid in cash
SELECT C_Name as cashCustomers
FROM CUSTOMER_t c
WHERE EXISTS
(
    SELECT *
	FROM PAYMENT_t p
	WHERE c.CustID = p.CustID
        AND Type = 'Cash'
);

	-- Merge employee and manager tables to compare pay-rate and salary
SELECT E_Name as employee, Hourly_pay as employeePayRate,
    M_Name as manager, salary as managerSalary
FROM EMPLOYEE_t e, MANAGER_t m
WHERE e.ManagerID = m.ManagerID
ORDER BY  m.salary, e.Hourly_pay;

-- Merge customers, order, and food tables to see who ordered what
SELECT C_Name, Name
FROM CUSTOMER_t c, ORDER_t o, FOOD_t f
WHERE c.CustID = o.CustID
    AND o.FoodID = f.FoodID;
