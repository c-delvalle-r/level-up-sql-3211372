-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT  Patrons.FirstName,
        Patrons.LastName,
        Patrons.Email,
        count(Loans.LoanID) AS CountOfLoans
FROM Loans
RIGHT JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY 1,2,3
ORDER BY CountOfLoans ASC;