--Which sales agent made the most in sales in 2009?

SELECT 
    e.FirstName, 
    e.LastName,
    SUM(i.Total) AS TotalSales
FROM Invoice i
JOIN Customer c 
    ON c.CustomerId = i.CustomerId
JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2009-%"
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1

