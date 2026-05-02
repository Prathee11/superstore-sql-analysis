SELECT
    FORMAT(order_date, 'yyyy-MM') AS month,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM vw_orders
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;