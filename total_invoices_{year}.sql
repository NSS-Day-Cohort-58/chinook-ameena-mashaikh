SELECT COUNT(InvoiceDate) AS NumberOfInvoicesBetween2009AND2011 FROM Invoice
WHERE (InvoiceDate >= '2009-01-01'
    AND InvoiceDate < '2010-01-01' OR InvoiceDate >= '2011-01-01'
    AND InvoiceDate < '2012-01-01') 

-- SELECT 
--  COUNT(InvoiceDate)
-- FROM Invoice
-- WHERE InvoiceDate LIKE "2009-%"; 



-- SELECT 
--     COUNT(InvoiceDate)
-- FROM Invoice
-- WHERE InvoiceDate LIKE "2011-%";