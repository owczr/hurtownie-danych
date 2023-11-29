USE [cwiczenia5_staging]
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

UPDATE o
   SET 
      o.[date] = ou.[date]
      ,o.[customer_id] = ou.[customer_id]
      ,o.[time] = ou.[time]
      ,o.[carrier_id] = ou.[carrier_id]
      ,o.[order_details_id] = ou.[order_details_id]
      ,o.[pizza_id] = ou.[pizza_id]
      ,o.[quantity] = ou.[quantity]
FROM [dbo].[orders] o
INNER JOIN [dbo].[orders_update] ou ON o.order_id = ou.order_id

UPDATE p
   SET 
      p.[name] = pu.[name]
      ,p.[category] = pu.[category] 
      ,p.[ingredients] = pu.[ingredients]
      ,p.[size] = pu.[size]
      ,p.[price] = pu.[price]
      ,p.[pizza_id] = pu.[pizza_id]
FROM [dbo].[pizza_types] p
INNER JOIN [dbo].[pizza_types_update] pu ON p.pizza_type_id = pu.pizza_type_id

