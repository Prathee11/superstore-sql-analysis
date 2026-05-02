SELECT TOP 10
    customer_name,
    ROUND(SUM(sales),2) AS revenue
FROM orders_clean
GROUP BY customer_name
ORDER BY revenue DESC;

/*Repeat Customers*/
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS orders_count
FROM orders_clean
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1;

/* Monthly Customer Count */
SELECT
    FORMAT(order_date, 'yyyy-MM') AS month,
    COUNT(DISTINCT customer_id) AS customers
FROM orders_clean
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;