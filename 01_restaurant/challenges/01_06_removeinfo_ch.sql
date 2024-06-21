-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022. (Reservation Date = July 29, 2022)

SELECT r.ReservationID, r.CustomerID, r.Date, c.FirstName, c.LastName
FROM Reservations r
LEFT JOIN Customers c ON c.CustomerID = r.CustomerID
WHERE substr(Date,1,10) = '2022-07-29';
--WHERE date(Date) = '2022-07-29';

DELETE FROM Reservations
WHERE ReservationID = 2000;

SELECT *
FROM Reservations
WHERE CustomerID = 64;