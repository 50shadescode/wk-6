-- Question 1
-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
-- bUse an INNER JOIN to combine the employees table with the offices table using the officeCode column.

USE salesdb;
SELECT 
    e.firstName,       -- Select the employee's first name
    e.lastName,        -- Select the employee's last name
    e.email,           -- Select the employee's email
    e.officeCode       -- Select the office code where the employee works
FROM 
    employees e        -- Use the employees table and alias it as 'e'
INNER JOIN 
    offices o          -- Join with the offices table, alias it as 'o'
ON 
    e.officeCode = o.officeCode;  -- Match rows where officeCode is the same in both tables
-- Question 2
-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.

    SELECT 
    p.productName,     -- Select the product's name
    p.productVendor,   -- Select the vendor who supplies the product
    p.productLine      -- Select the product line category
FROM 
    products p         -- Use the products table and alias it as 'p'
LEFT JOIN 
    productlines pl    -- Join with productlines table, alias it as 'pl'
ON 
    p.productLine = pl.productLine;  -- Match rows where productLine is the same in both tables

-- Question 3
-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.

SELECT 
    o.orderDate,       -- Select the date the order was placed
    o.shippedDate,     -- Select the date the order was shipped
    o.status,          -- Select the current status of the order
    o.customerNumber   -- Select the customer number who placed the order
FROM 
    customers c        -- Use the customers table and alias it as 'c'
RIGHT JOIN 
    orders o           -- Join with the orders table, alias it as 'o'
ON 
    c.customerNumber = o.customerNumber  -- Match rows where customerNumber is the same in both tables
ORDER BY 
    o.orderDate ASC    -- Sort the results by order date in ascending order
LIMIT 10;              -- Only show the first 10 results