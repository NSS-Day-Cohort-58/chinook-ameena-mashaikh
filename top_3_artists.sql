--Provide a query that shows the top 3 best selling artists.

SELECT at.name, SUM(il.UnitPrice*il.Quantity) as Sales
FROM InvoiceLine il
JOIN Track t 
    ON t.TrackId = il.TrackId
JOIN Album al  
    ON al.AlbumId = t.AlbumId
JOIN Artist at 
    ON at.ArtistId = al.ArtistId

GROUP BY at.Name
ORDER BY Sales DESC LIMIT 3