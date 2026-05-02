SELECT
    (discount),
    ROUND(AVG(profit), 2) AS avg_profit
FROM vw_orders
GROUP BY discount
ORDER BY discount;