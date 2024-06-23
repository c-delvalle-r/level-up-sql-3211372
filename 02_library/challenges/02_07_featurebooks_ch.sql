-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT  distinct Books.BookID,
        Books.Title,
        Books.Author,
        Books.Published,
        Books.Barcode
FROM Books
JOIN Loans ON Loans.BookID = Books.BookID
WHERE (Books.Published BETWEEN 1890 AND 1899)
  AND (Loans.ReturnedDate IS NOT NULL)
ORDER BY Books.BookID;


SELECT  Title,
        Author,
        Published,
        Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
  AND BookID NOT IN (SELECT BookID FROM Loans WHERE ReturnedDate IS NULL);


select * from Books;
