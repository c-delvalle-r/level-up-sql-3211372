-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT  c.FirstName,
        c.LastName,
        c.Email,
        count(o.OrderID) AS OrderCount
FROM Orders o
LEFT JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName, c.Email
ORDER BY OrderCount DESC;

