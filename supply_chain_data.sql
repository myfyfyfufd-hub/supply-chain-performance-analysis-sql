SELECT * FROM supply_chain_project.supply_chain_data;
-- total_reva..
SELECT
ROUND(SUM(`Revenue generated`),2) AS Total_Revenue
FROM supply_chain_data;

-- total_recorde
SELECT COUNT(*) AS Total_Records
FROM supply_chain_data;

 -- Average Product Price
SELECT
ROUND(AVG(Price),2) AS Average_Price
FROM supply_chain_data;

-- Revenue by Product Type
SELECT
`Product type`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY Revenue DESC;

-- Revenue by Customer Demographics
SELECT
`Customer demographics`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain_data
GROUP BY `Customer demographics`
ORDER BY Revenue DESC;

-- Supplier Performance
SELECT
`Supplier name`,
COUNT(*) AS Products_Supplied
FROM supply_chain_data
GROUP BY `Supplier name`
ORDER BY Products_Supplied DESC;

-- Transportation Mode Analysis
SELECT
`Transportation modes`,
COUNT(*) AS Total_Shipments
FROM supply_chain_data
GROUP BY `Transportation modes`
ORDER BY Total_Shipments DESC;

-- Shipping Carrier Performance
SELECT
`Shipping carriers`,
COUNT(*) AS Total_Orders
FROM supply_chain_data
GROUP BY `Shipping carriers`
ORDER BY Total_Orders DESC;

-- Average Manufacturing Cost
SELECT
`Product type`,
ROUND(AVG(`Manufacturing costs`),2) AS Average_Manufacturing_Cost
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY Average_Manufacturing_Cost DESC;

-- Highest Revenue Products
SELECT
SKU,
`Product type`,
`Revenue generated`
FROM supply_chain_data
ORDER BY `Revenue generated` DESC
LIMIT 10;

-- Highest Stock Levels
SELECT
SKU,
`Stock levels`
FROM supply_chain_data
ORDER BY `Stock levels` DESC
LIMIT 10;

-- Products with Highest Defect Rates
SELECT
SKU,
`Product type`,
`Defect rates`
FROM supply_chain_data
ORDER BY `Defect rates` DESC
LIMIT 10;

-- Average Shipping Cost by Carrier
SELECT
`Shipping carriers`,
ROUND(AVG(`Shipping costs`),2) AS Average_Shipping_Cost
FROM supply_chain_data
GROUP BY `Shipping carriers`
ORDER BY Average_Shipping_Cost DESC;

-- Average Lead Time
SELECT
ROUND(AVG(`Lead times`),2) AS Average_Lead_Time
FROM supply_chain_data;

-- Inspection Results
SELECT
`Inspection results`,
COUNT(*) AS Total
FROM supply_chain_data
GROUP BY `Inspection results`
ORDER BY Total DESC;

-- Manufacturing Cost by Supplier
SELECT
`Supplier name`,
ROUND(AVG(`Manufacturing costs`),2) AS Average_Cost
FROM supply_chain_data
GROUP BY `Supplier name`
ORDER BY Average_Cost DESC;

-- Revenue Ranking (Window Function)
SELECT
SKU,
`Revenue generated`,
DENSE_RANK() OVER (
ORDER BY `Revenue generated` DESC
) AS Revenue_Rank
FROM supply_chain_data;

-- Average Defect Rate
SELECT
ROUND(AVG(`Defect rates`),2) AS Average_Defect_Rate
FROM supply_chain_data;

-- otal Revenue by SKU
SELECT
SKU,
ROUND(SUM(`Revenue generated`),2) AS Total_Revenue
FROM supply_chain_data
GROUP BY SKU
ORDER BY Total_Revenue DESC;
