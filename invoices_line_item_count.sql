/*
Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice
*/

SELECT i.InvoiceId, COUNT(InvoiceLineId) as InvoiceLines 
FROM InvoiceLine il 
JOIN Invoice i
    ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId