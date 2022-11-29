--Provide a query that shows the most purchased track(s) of 2013.

SELECT TrackName, Purchases 
FROM (
        SELECT t.Name AS TrackName, SUM(il.Quantity) AS Purchases 
        FROM Track t 
        JOIN InvoiceLine il 
            ON il.TrackId = t.TrackId
        JOIN Invoice i
            ON i.InvoiceId = il.InvoiceId
        WHERE i.InvoiceDate LIKE "2013-%"
        GROUP BY t.Name
        ORDER BY Purchases DESC
    ) MatchIl
WHERE MatchIl.Purchases = (
    SELECT MAX(TotalQuantity) AS MaxTotal
    FROM 
        (SELECT TrackId, SUM(Quantity) AS TotalQuantity
        FROM InvoiceLine il2
        GROUP BY TrackId))
GROUP BY TrackName
ORDER BY Purchases
