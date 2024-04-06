CREATE TABLE sale_data(Sale_ID INT PRIMARY KEY,
Product_Name VARCHAR(50),
Sale_Amount INT,
Sale_Date DATE
);

INSERT INTO sale_data (Sale_ID,Product_Name,Sale_Amount,Sale_Date)
VALUES(1,'Laptop',1200,'2023-01-05'),
(2,'Smartphone',800,'2023-01-06'),
(3,'Tablet',600,'2023-01-07'),
(4,'Laptop',1150,'2023-01-08'),
(5,'Smartphone',850,'2023-01-09');

SELECT * FROM sale_data

SELECT Product_Name, SUM(Sale_Amount) AS Total_Sale_Amount
FROM sale_data
GROUP BY Product_Name;

SELECT Sale_Date, SUM(Sale_Amount) AS Total_Sales
FROM sale_data
GROUP BY Sale_Date
ORDER BY Total_Sales DESC
LIMIT 1;

SELECT Product_Name, AVG(Sale_Amount) AS Average_Sale_Amount
FROM sale_data
GROUP BY Product_Name;

SELECT Product_Name, AVG(Sale_Amount) AS Average_Sale_Amount
FROM sale_data
GROUP BY Product_Name
HAVING AVG(Sale_Amount) > 800;