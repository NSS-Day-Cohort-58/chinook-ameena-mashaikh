--Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.Name AS TrackName, SUM(il.Quantity) AS Purchases 
FROM InvoiceLine il 
JOIN Track t 
    ON il.TrackId = t.TrackId
GROUP BY Name
ORDER BY Purchases DESC LIMIT 5
