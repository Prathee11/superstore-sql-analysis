SELECT
    order_date,
    ROUND(SUM(sales),2) AS daily_sales,
    SUM(SUM(sales)) OVER (ORDER BY order_date) AS running_total
FROM vw_orders
GROUP BY order_date
ORDER BY order_date;