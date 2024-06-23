-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

-- Get the total amount of Dracula Books
SELECT count(BookID)
FROM Books
WHERE Title = 'Dracula';
-- 3 total books

-- Get the total amount of Dracula Books Currently on loan
SELECT count(Loans.BookID)
FROM Loans
INNER JOIN Books on Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate IS NULL;
-- 1 loaned Dracula book, two available

SELECT 
  (SELECT count(BookID)
    FROM Books
    WHERE Title = 'Dracula') - 
  (SELECT count(Loans.BookID)
    FROM Loans
    INNER JOIN Books on Loans.BookID = Books.BookID
    WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate IS NULL)
  AS AvailableDraculaBooks;