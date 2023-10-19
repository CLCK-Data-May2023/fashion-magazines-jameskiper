-- Add your sql here
Select  customers.customer_name AS 'Customer', 
 PRINTF('$%.2f', SUM((subscriptions.subscription_lenght * subscriptions.price_per_month))) AS 'Amount Due'
FROM orders
JOIN customers 
ON orders.order_id = customers.customer_id
JOIN subscriptions
ON orders.subscription_id = subsciptions.subscripti44on_id
WHERE order_status = 'unpaid' AND subscriptions.subscription ='Fashion Magazine';
GROUP BY customers.customer_name;
