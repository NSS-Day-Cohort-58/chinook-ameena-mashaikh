--Provide a query that shows the total sales per country.

SELECT BillingCountry AS Country, 
    SUM(i.total) AS TotalSales
FROM Invoice i 
GROUP BY BillingCountry