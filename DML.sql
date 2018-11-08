--  QUERIES

-- 	4 Simple Queries (based on lecture 6)
	-- Get customers with 617 area code
SELECT *
FROM CUSTOMER_t
WHERE Phone LIKE '617%';
	-- Get foods under 10 dollars
SELECT *
FROM FOOD_t
WHERE Price < 10;
	-- Get employee names and IDs who began before 2017
SELECT EmployeeID, E_Name
FROM EMPLOYEE_t
WHERE ;
	-- Get tables with 6+ available seats
SELECT TableNo AS Big Tables, Available_seats
FROM TABLE_t
WHERE Available_seats > 6;

-- 	3 Intermediate Queries (based on lecture 7)
	--
	--
	--


-- 	3 Advanced Queries (based on lecture 8)
	-- merge customers and orders
	-- merge orders and food
	--
