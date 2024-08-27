CREATE VIEW sales.order_details AS
SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    SUM(oi.quantity * oi.price) AS order_total
FROM
    sales.orders o
JOIN
    sales.order_items oi ON o.order_id = oi.order_id
GROUP BY
    o.order_id;
