--Looking at the InvoiceLine table, provide a query that COUNTs the number of 
--line items for Invoice ID 37.

SELECT COUNT(*) AS InvoiceID37 FROM InvoiceLine
WHERE InvoiceId IS 37