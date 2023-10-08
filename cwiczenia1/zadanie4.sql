WITH average_per_month AS (
    SELECT
        MONTH(order_date) AS month,
        AVG(total_price) as amount
    FROM pizza_sales
(    GROUP BY MONTH(order_date)
)
SELECT
    order_id,
    total_price AS order_amount,
    average_per_month.amount AS average_month_amount,
    order_date AS date
FROM pizza_sales
JOIN average_per_month
ON average_per_month.month = MONTH(pizza_sales.order_id)
