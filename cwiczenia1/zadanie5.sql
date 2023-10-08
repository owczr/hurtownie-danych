SELECT COUNT(*), order_date, DATEPART(hour, order_time) AS hour
FROM pizza_sales
WHERE order_date = '2015-01-01'
GROUP BY order_date, DATEPART(hour, order_time)
