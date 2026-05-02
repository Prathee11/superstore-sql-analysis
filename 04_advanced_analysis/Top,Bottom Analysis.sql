SELECT TOP 5
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM vw_orders
GROUP BY product_name
ORDER BY total_profit DESC;

SELECT TOP 5
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM vw_orders
GROUP BY product_name
ORDER BY total_profit ASC;