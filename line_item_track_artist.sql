SELECT DISTINCT 
    i.InvoiceLineId, 
    t.Name AS Track_Name,
    art.Name AS Artist_Name
FROM 
    InvoiceLine i 
JOIN Track t
    ON t.TrackId = i.TrackId
JOIN Album a 
    ON t.AlbumId = a.AlbumId
JOIN Artist art 
    ON art.ArtistId = a.ArtistId