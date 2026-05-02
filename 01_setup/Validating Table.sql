SELECT COUNT(*) AS total_rows FROM orders_clean;

SELECT TOP 5 * FROM orders_clean;

SELECT MIN(discount) AS min_disc, ROUND(MAX(discount),2) AS max_disc FROM orders_clean;