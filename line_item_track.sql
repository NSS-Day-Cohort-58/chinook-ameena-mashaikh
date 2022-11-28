SELECT DISTINCT InvoiceLineId, Name FROM InvoiceLine
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId

