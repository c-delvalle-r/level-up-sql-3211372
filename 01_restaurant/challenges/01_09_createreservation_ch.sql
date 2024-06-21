-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

-- Check if the Customer exists
SELECT * FROM Customers WHERE Email = 'smac@kinetecoinc.com';

-- Add Customer to the Customers table
INSERT INTO Customers (FirstName, LastName, Email) 
VALUES ('Sam', 'McAdams', 'smac@kineteconinc.com');

-- Check assigned Customer ID 
SELECT * FROM Customers WHERE Email = 'smac@kinetecoinc.com';

-- Create Reservation
INSERT INTO Reservations (CustomerID, Date, PartySize) VALUES (102, '', 5);