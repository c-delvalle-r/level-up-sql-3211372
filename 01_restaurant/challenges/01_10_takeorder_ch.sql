-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Make sure the customer already exists in our db
SELECT *
FROM Customers
WHERE FirstName = 'Loretta' AND LastName = 'Hundey';
-- Exists, ID 70

-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Get IDs for the Dishes ordered
SELECT * 
FROM Dishes
WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');
-- IDs 4, 7, 20

-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Enter a customer's delivery order into our database
