--Provide a query that shows each Invoice line item, with the name of the track 
--that was purchased.


SELECT DISTINCT InvoiceLineId, Name FROM InvoiceLine
JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId

