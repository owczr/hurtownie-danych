USE cwiczenia5
GO

CREATE VIEW CarrierSales
WITH SCHEMABINDING
AS
SELECT
OrderKey,
[date],
[time],
[pizza_id],
[carrier_name]
FROM [dbo].[FactSales] fs 
INNER JOIN [dbo].[DIMCarrier] dc on dc.CarrierKey = fs.CarrierKey

CREATE UNIQUE CLUSTERED INDEX IX_CarrierSales
ON dbo.CarrierSales (OrderKey, [date], [time], [pizza_id], [carrier_name]);