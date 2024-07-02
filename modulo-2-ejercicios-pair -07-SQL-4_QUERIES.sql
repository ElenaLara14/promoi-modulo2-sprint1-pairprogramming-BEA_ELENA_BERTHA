SELECT * FROM northwind.employees;

SELECT employee_id, last_name, first_name
FROM employees;

SELECT * FROM northwind.products;

SELECT unit_price AS affordable_products
	FROM products
		WHERE unit_price BETWEEN 0 AND 5;
        
SELECT unit_price 
	FROM products
		WHERE unit_price IS NULL;
        
SELECT *
	FROM products
		WHERE unit_price < 15
			AND product_id < 20;
            
SELECT *
	FROM products
		WHERE NOT unit_price < 15
			AND NOT product_id < 20;
            
SELECT * FROM northwind.orders;

SELECT DISTINCT ship_country
	FROM orders
		WHERE order_id IS NOT NULL;
        
SELECT * FROM northwind.products;

SELECT product_name, unit_price
	FROM products
		LIMIT 10

SELECT product_name, unit_price
	FROM products
		ORDER BY product_id DESC
			LIMIT 10;
            
SELECT * FROM northwind.order_details;

SELECT DISTINCT order_id
	FROM order_details;
    
SELECT order_id, (quantity * unit_price) AS importe_total
	FROM order_details
		ORDER BY importe_total DESC
			LIMIT 3;
    
SELECT order_id, (quantity * unit_price) AS importe_total
	FROM order_details
		ORDER BY importe_total DESC
			LIMIT 5
				OFFSET 5;

SELECT * FROM northwind.categories;

SELECT category_name AS NombreDeCategoria
	FROM categories
    
SELECT * FROM northwind.orders;

SELECT order_id, order_date, shipped_date, DATE_ADD(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
	FROM orders;

SELECT * FROM northwind.products;

SELECT product_id
	FROM order_details
		WHERE unit_price BETWEEN 15 AND 50;
        
SELECT * FROM northwind.products;

SELECT *
	FROM products
		WHERE unit_price IN (18, 19, 20);

		