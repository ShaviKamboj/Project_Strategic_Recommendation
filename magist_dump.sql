USE magist;
 -- 1.
SELECT COUNT(*) AS order_count 
FROM orders;
 -- 2.
SELECT COUNT(order_status)
FROM orders
WHERE order_status = 'delivered';

SELECT *
FROM orders
 WHERE order_status = 'delivered';
 
 SELECT order_status, COUNT(*) AS orders
FROM orders
GROUP BY order_status;

  -- 3.
SELECT (order_purchase_timestamp)
FROM orders
ORDER BY order_purchase_timestamp ASC;
 
 SELECT 
    YEAR(order_purchase_timestamp) AS year_,
    MONTH(order_purchase_timestamp) AS month_,
    COUNT(customer_id)
FROM
    orders
GROUP BY year_ , month_
ORDER BY year_ , month_;

 -- 4.
 SELECT DISTINCT COUNT(product_category_name) 
 FROM products;

SELECT 
    COUNT(DISTINCT product_id) AS products_count
FROM
    products;
    -- 5.
    
    SELECT 
    product_category_name, 
    COUNT(DISTINCT product_id) AS n_products
FROM
    products
GROUP BY product_category_name
ORDER BY COUNT(product_id) DESC;


-- 6.
SELECT 
	count(DISTINCT product_id) 
FROM
	order_items;
    
    SELECT 
    MIN(price) AS cheapest, 
    MAX(price) AS most_expensive
FROM 
	order_items;
    
    SELECT 
	MAX(payment_value) as highest,
    MIN(payment_value) as lowest
FROM
	order_payments;
    
    -- 1 
    
SELECT DISTINCT
    product_category_name_english AS tech_product 
FROM
    product_category_name_translation
Where product_category_name_english IN ('audio',
'electronics ',
'computers_accessories',
'computers',
 "pc_gamer",
'tablets_printing_image', 
'telephony');


SELECT DISTINCT( product_category_name) AS Tech_products 
FROM products WHERE 
product_category_name IN ("audio", "cine_foto","electronicos", "informatica_acessorios" ,
"pcs", "relogios_presentes","tablets_impressao_imagem" ,"telefonia");
    

    
SELECT distinct
*
From orders;
    -- 2
    SELECT COUNT(order_items.order_id), products.product_category_name
FROM order_items
    JOIN products
    ON products.product_id = order_items.product_id
WHERE products.product_category_name IN ("audio", "cine_foto", "electronicos", "informatica_acessorios", "pcs", "relogios_presentes", "tablets_impressao_imagem", "telefonica")
GROUP BY products.product_category_name;



    
