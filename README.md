# MYSQL-PROJECT
MYSQL PROJECT

## SQL QUERIES
https://github.com/chrisblu15/MYSQL-PROJECT/blob/main/my_queries.sql
## OR
--Question 2: What are Top 3 and bottom 3 regions in terms of sales---
```sql
SELECT Region, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
GROUP BY Region
ORDER BY Totalsales DESC
```sql
--Bottom 3 regions in terms of sales--
```sql
SELECT Region, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
GROUP BY Region
ORDER BY Totalsales ASC
```sql
--Question 3: What were total sales of appliances in Ontario--
```sql
SELECT SUM(Sales) As ApplianceSalesInOntario
FROM [KMS Sql Case Study]
WHERE Product_Category= 'Appliances' AND Region= 'Ontario'
```sql
--Question 4: Advice KMS on how to increase revenue from the bottom 10 customers--
```sql
SELECT Customer_Name, SUM(Profit) As TotalProfit
from [KMS Sql Case Study]
GROUP BY Customer_Name
ORDER BY TotalProfit ASC
```sql
--Question 5: KMS incurred the most shipping cost using which shipping method--
```sql
SELECT Ship_Mode, SUM(Shipping_Cost) As TotalShipping_Cost
from [KMS Sql Case Study]
GROUP BY Ship_Mode
ORDER BY TotalShipping_Cost DESC
```sql
--Question 6:Who are the most valuable customers, and what products or services do they typically purchase--
```sql
SELECT Customer_Name, Product_Name, SUM(Profit) As TotalProfit, COUNT(Order_ID) As order_count
from [KMS Sql Case Study]
GROUP BY Customer_Name,  Product_Name
ORDER BY TotalProfit DESC, order_count DESC
```sql
--Question 7: Which small business customer had the highest sales----
```sql
SELECT Customer_Name, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Small Business'
GROUP BY Customer_Name
ORDER BY Totalsales DESC
```sql
--Question 8: Which corporate customer placed the most number of orders in 2009-2012--
```sql
SELECT Customer_Name, COUNT(Order_ID) As order_count
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Corporate' AND YEAR(Order_Date) BETWEEN 2009 AND 2012
GROUP BY Customer_Name
ORDER BY order_count DESC
```sql
--Question 9: Which consumer customer was the most profitable one--
```sql
SELECT Customer_Name, SUM(Profit) As TotalProfit
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Consumer'
GROUP BY Customer_Name
ORDER BY TotalProfit DESC
```sql
--Question 10: Which Customer Returned items, and what segment do they belong to--
```sqlSELECT DISTINCT Customer_Name, Customer_Segment
from Order_Status
WHERE Returned= 'Yes'
```sql
--Question 11: Do you think the company appropriately spent shipping cost based on the Order PRIORITY--
```sql
SELECT Order_Priority, Ship_Mode, COUNT(Order_ID) As Total_Order,
AVG(Sales) As avg_sales,
AVG(Profit) As avg_profit
from [KMS Sql Case Study]
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Ship_Mode
```sql

# PROJECT INSIGHTS
MySql project was given with a dataset for KMS Company i answered all the questions using the SELECT, GROUP BY, ORDER BY , AGGREGATION, and THE WHERE CLAUSE

To correctly answer the questions asked by the company and the output was successfull. 

