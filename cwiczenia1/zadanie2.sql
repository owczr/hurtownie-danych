SELECT DISTINCT(order_id) FROM pizza_sales AS orders_not_in_march
WHERE order_date NOT BETWEEN '2015-03-01' AND '2015-03-31'
AND pizza_id NOT IN ('hawaiian_s', 'hawaiian_m', 'hawaiian_l')