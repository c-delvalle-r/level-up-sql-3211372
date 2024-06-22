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
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00');

-- See the ID of the order just created
SELECT * 
FROM Orders
WHERE CustomerID = 70
ORDER BY OrderID DESC;
-- Generated OrderID: 1001

-- Enter dishes ordered
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 7);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 20);

-- Check for new order items
SELECT * 
FROM OrdersDishes
WHERE OrderID = 1001;

-- Provide Total Cost of the Order
SELECT sum(d.Price)
FROM Dishes d
INNER JOIN OrdersDishes od ON od.DishID = d.DishID
WHERE od.OrderID = 1001;