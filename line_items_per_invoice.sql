SELECT InvoiceId, COUNT(*) AS InvoiceTotal FROM InvoiceLine
GROUP BY InvoiceId