CREATE VIEW sales.total_sales_per_customer AS
SELECT
    o.customer_id,
    SUM(o.total_amount) AS total_sales
FROM
    sales.orders o
GROUP BY
    o.customer_id;
