WITH count_in_feb_and_march AS (
    SELECT order_date, pizza_size, COUNT(*) AS count
    FROM pizza_sales
    WHERE order_date BETWEEN '2015-02-01' AND '2015-02-28' 
    OR order_date BETWEEN '2015-03-01' AND '2015-03-31' 
    GROUP BY pizza_size, order_date
)
SELECT pizza_size, SUM(count) AS count
FROM count_in_feb_and_march
GROUP BY pizza_size
