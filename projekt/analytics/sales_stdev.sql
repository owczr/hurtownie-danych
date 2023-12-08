USE projekt
GO

SELECT 
    cr.CarrierKey, 
    cr.carrier_name, 
    STDEV(s.amount) as SalesStdDev
FROM 
    FactSales s
JOIN 
    DIMCarrier cr ON s.CarrierKey = cr.CarrierKey
GROUP BY 
    cr.CarrierKey, cr.carrier_name;
