-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- Get to know the ID of the Quinoa Salmon Salad
SELECT * 
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';
-- ID retrieved: 9

-- Update Cleo Goldwater's favorite dish to ID 9 (CustomerID 42)
UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;

SELECT  CustomerID,
        FirstName,
        LastName,
        FavoriteDish
FROM Customers
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';