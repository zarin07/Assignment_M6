SELECT C.name AS category_name, SUM(OI.quantity * OI.unit_price) AS total_revenue
FROM Order_Items OI
JOIN Products P ON OI.product_id = P.product_id
JOIN Categories C ON P.category_id = C.category_id
GROUP BY C.name
ORDER BY total_revenue DESC;