--Provide a query that shows the total number of invoices per country.

SELECT i.BillingCountry, COUNT(BillingCountry) AS TotalInvoices
FROM Invoice i
GROUP BY i.BillingCountry