-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT  c.FirstName,
        c.LastName,
        r.Date,
        r.PartySize
FROM Reservations r
INNER JOIN Customers c ON r.CustomerID = c.CustomerID
WHERE date(r.Date) = '2022-06-14' AND c.LastName LIKE 'st%n';
