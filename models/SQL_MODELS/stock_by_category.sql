CREATE VIEW inventory.stock_by_category AS
SELECT
    c.category_name,
    SUM(sl.stock_quantity) AS total_stock
FROM
    inventory.products p
JOIN
    inventory.categories c ON p.category_id = c.category_id
JOIN
    inventory.stock_levels sl ON p.product_id = sl.product_id
GROUP BY
    c.category_name;
