SELECT pizza_category, pizza_name
FROM pizza_sales
WHERE order_date BETWEEN '2015-01-01' AND '2015-01-31'
GROUP BY order_date, pizza_category, pizza_name
ORDER BY COUNT(*) DESC
