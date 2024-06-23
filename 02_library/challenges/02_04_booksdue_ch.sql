-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT  Loans.DueDate,
        Books.Title,
        Patrons.FirstName,
        Patrons.LastName,
        Patrons.Email
FROM Loans
INNER JOIN Books ON Books.BookID = Loans.BookID
INNER JOIN Patrons ON Patrons.PatronID = Loans.PatronID
WHERE Loans.DueDate = '2022-07-13' AND Loans.ReturnedDate IS NULL;