USE Olist_OLTP_DB;
GO

--Bulk insert to the customers table
BULK INSERT dbo.customers
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_customers_dataset.csv'
WITH (FORMAT = 'CSV', FIELDQUOTE = '"', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a', CODEPAGE = '65001', KEEPNULLS, TABLOCK);




--Bulk insert to the sellers table
BULK INSERT dbo.sellers
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_sellers_dataset.csv'
WITH (FORMAT='CSV', FIELDQUOTE='"', FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a', CODEPAGE='65001', KEEPNULLS, TABLOCK);




--Bulk insert to the products table
BULK INSERT dbo.products
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_products_dataset.csv'
WITH (FORMAT='CSV', FIELDQUOTE='"', FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a', CODEPAGE='65001', KEEPNULLS, TABLOCK);




--Bulk insert to the orders table
BULK INSERT dbo.orders
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_orders_dataset.csv'
WITH (FORMAT='CSV', FIELDQUOTE='"', FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a', CODEPAGE='65001', KEEPNULLS, TABLOCK);




--Bulk insert to the order_items table
BULK INSERT dbo.order_items
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_order_items_dataset.csv'
WITH (FORMAT='CSV', FIELDQUOTE='"', FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a', CODEPAGE='65001', KEEPNULLS, TABLOCK);




--Bulk insert to the order_payments table
BULK INSERT dbo.order_payments
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_order_payments_dataset.csv'
WITH (FORMAT='CSV', FIELDQUOTE='"', FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a', CODEPAGE='65001', KEEPNULLS, TABLOCK);




--Bulk insert to the order_reviews table
BULK INSERT dbo.order_reviews
FROM 'C:\Users\utente\Desktop\Projects\Y3S1\DWBI\Project\Source_CSV\olist_order_reviews_dataset.csv'
WITH (FORMAT = 'CSV', FIELDQUOTE = '"', FIRSTROW = 2, FIELDTERMINATOR = ',', CODEPAGE = '65001', KEEPNULLS, TABLOCK);




SELECT COUNT(*) AS customer_rows FROM dbo.customers;
SELECT COUNT(*) AS customer_rows FROM dbo.sellers;
SELECT COUNT(*) AS customer_rows FROM dbo.products;
SELECT COUNT(*) AS customer_rows FROM dbo.orders;
SELECT COUNT(*) AS customer_rows FROM dbo.order_items;
SELECT COUNT(*) AS customer_rows FROM dbo.order_payments;
SELECT COUNT(*) AS review_rows FROM dbo.order_reviews;

