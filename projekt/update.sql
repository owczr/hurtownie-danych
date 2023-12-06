USE [projekt_staging]
GO

UPDATE c
SET 
	c.[first_name] = cu.[first_name],
	c.[last_name] = cu.[last_name],
	c.[street] = cu.[street],
	c.[city] = cu.[city],
	c.[state] = cu.[state],
	c.[country] = cu.[country],
	c.[phone] = cu.[phone],
	c.[email] = cu.[email]
FROM [dbo].[customers] c
INNER JOIN [dbo].[customers_update] cu ON c.id = cu.id

UPDATE c
   SET 
      c.[carrier_name] = cu.[carrier_name]
      ,c.[address] = cu.[address]
      ,c.[tax_id] = cu.[tax_id]
      ,c.[contact_person] = cu.[contact_person]
FROM [dbo].[carrier] c
INNER JOIN [dbo].[carrier_update] cu ON c.carrier_id = cu.carrier_id

UPDATE s
   SET 
		s.[carrierID] = su.[carrierID],
		s.[customerID] = su.[customerID],
		s.[amount] = su.[amount],
		s.[date] = su.[date]
FROM [dbo].[sales] s
INNER JOIN [dbo].[sales_update] su ON s.transactionID = su.transactionID
