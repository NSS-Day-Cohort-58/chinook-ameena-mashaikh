SELECT i.BillingCountry, COUNT(BillingCountry) AS TotalInvoices
FROM Invoice i
GROUP BY i.BillingCountry