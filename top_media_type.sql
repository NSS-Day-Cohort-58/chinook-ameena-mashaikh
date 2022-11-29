--Provide a query that shows the most purchased Media Type.
SELECT m.name, COUNT(m.MediaTypeId) AS MediaTypePurchases
FROM InvoiceLine il
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN MediaType m 
    ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.Name
ORDER BY MediaTypePurchases DESC LIMIT 1 
