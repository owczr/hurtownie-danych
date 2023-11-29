CREATE VIEW CustomerSales
WITH SCHEMABINDING
AS
SELECT
OrderKey,
[date],
[time],
[pizza_id],
[city]
FROM [dbo].[FactSales] fs 
INNER JOIN [dbo].[DIMCustomers] dc on dc.CustomersKey = fs.CustomersKey

CREATE UNIQUE CLUSTERED INDEX IX_CustomerSales
ON dbo.CustomerSales (OrderKey, [date], [time], [pizza_id], [city]);