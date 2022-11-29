--Provide a query that shows the most purchased track(s) of 2013.

SELECT Quantity
FROM (
        SELECT COUNT(il.Quantity) AS Quantity
        FROM Track t 
        JOIN InvoiceLine il 
            ON il.TrackId = t.TrackId
        JOIN Invoice i
            ON i.InvoiceId = il.InvoiceId
        WHERE i.InvoiceDate LIKE "2013-%"
        GROUP BY t.TrackId
    )