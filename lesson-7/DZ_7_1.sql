SELECT 
users.id,
name,
COUNT(*) AS Total_orders
FROM `users`
JOIN `orders` ON users.id = orders.user_id
GROUP BY users.id
ORDER BY Total_orders DESC



