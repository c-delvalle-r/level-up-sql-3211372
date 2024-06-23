-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT  Published,
        count(distinct Title) AS PubCount
FROM Books
GROUP BY Published
ORDER BY PubCount DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT  Books.Title,
        count(Loans.LoanID) AS NumLoans
FROM Loans
INNER JOIN Books on Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY NumLoans DESC
LIMIT 5;