---QUESTION 1: Which Product Category Have the Higghest Sales---
```SQL
SELECT Product_Category, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
GROUP BY Product_Category
ORDER BY Totalsales DESC
```
--Question 2: What are Top 3 and bottom 3 regions in terms of sales---
```SQL
  SELECT Region, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
GROUP BY Region
ORDER BY Totalsales DESC
```
--Bottom 3 regions in terms of sales--
```SQL
  SELECT Region, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
GROUP BY Region
ORDER BY Totalsales ASC
```
--Question 3: What were total sales of appliances in Ontario--
```SQL
  SELECT SUM(Sales) As ApplianceSalesInOntario
FROM [KMS Sql Case Study]
WHERE Product_Category= 'Appliances' AND Region= 'Ontario'
```
--Question 4: Advice KMS on how to increase revenue from the bottom 10 customers--
```SQL
  SELECT Customer_Name, SUM(Profit) As TotalProfit
from [KMS Sql Case Study]
GROUP BY Customer_Name
ORDER BY TotalProfit ASC
```
--Question 5: KMS incurred the most shipping cost using which shipping method--
```SQL
  SELECT Ship_Mode, SUM(Shipping_Cost) As TotalShipping_Cost
from [KMS Sql Case Study]
GROUP BY Ship_Mode
ORDER BY TotalShipping_Cost DESC
```
--Question 6:Who are the most valuable customers, and what products or services do they typically purchase--
```SQL
  SELECT Customer_Name, Product_Name, SUM(Profit) As TotalProfit, COUNT(Order_ID) As order_count
from [KMS Sql Case Study]
GROUP BY Customer_Name,  Product_Name
ORDER BY TotalProfit DESC, order_count DESC
```
--Question 7: Which small business customer had the highest sales----
```SQL
  SELECT Customer_Name, SUM(Sales) As Totalsales
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Small Business'
GROUP BY Customer_Name
ORDER BY Totalsales DESC
```
--Question 8: Which corporate customer placed the most number of orders in 2009-2012--
```SQL
  SELECT Customer_Name, COUNT(Order_ID) As order_count
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Corporate' AND YEAR(Order_Date) BETWEEN 2009 AND 2012
GROUP BY Customer_Name
ORDER BY order_count DESC
```
--Question 9: Which consumer customer was the most profitable one--
```SQL
  SELECT Customer_Name, SUM(Profit) As TotalProfit
from [KMS Sql Case Study]
WHERE Customer_Segment= 'Consumer'
GROUP BY Customer_Name
ORDER BY TotalProfit DESC
```
--Question 10: Which Customer Returned items, and what segment do they belong to--
```SQL
  SELECT DISTINCT Customer_Name, Customer_Segment
from Order_Status
WHERE Returned= 'Yes'
```
--Question 11: Do you think the company appropriately spent shipping cost based on the Order PRIORITY--
```SQL
  SELECT Order_Priority, Ship_Mode, COUNT(Order_ID) As Total_Order,
AVG(Sales) As avg_sales,
AVG(Profit) As avg_profit
from [KMS Sql Case Study]
GROUP BY Order_Priority, Ship_Mode
ORDER BY Order_Priority, Ship_Mode
```
