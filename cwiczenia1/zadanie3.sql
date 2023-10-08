SELECT TOP 10 order_id, total_price
FROM pizza_sales
WHERE order_date BETWEEN '2015-02-01' AND '2015-02-28'
ORDER BY total_price DESC