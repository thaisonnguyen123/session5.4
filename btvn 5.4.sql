SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM Orders o
JOIN Customers c 
    ON o.customer_id = c.customer_id;

SELECT 
    oi.order_id,
    oi.product_name,
    oi.quantity,
    oi.price
FROM Order_items oi
ORDER BY oi.order_id;

SELECT 
    oi.order_id,
    SUM(oi.quantity * oi.price) AS total_amount
FROM Order_items oi
GROUP BY oi.order_id;

SELECT 
    oi.order_id,
    SUM(oi.quantity * oi.price) AS total_amount
FROM Order_items oi
GROUP BY oi.order_id
HAVING SUM(oi.quantity * oi.price) > 10000000;
