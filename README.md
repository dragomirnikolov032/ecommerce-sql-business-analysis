**E-Commerce SQL Business Analysis**



## Project Overview



This project analyzes an international e-commerce dataset using Microsoft SQL Server and T-SQL.



I transformed raw sales data into a relational database and used SQL to analyze revenue, profitability, customers, products, markets, discounts, and shipping efficiency.



The original dataset was provided as a single flat CSV file containing 51,290 sales records.



The raw data was first loaded into a staging table (`RawSales`) and validated before being transformed into four relational tables:



\- `Customers`

\- `Orders`

\- `Products`

\- `OrderDetails`



Primary and foreign keys were used to establish relationships between the tables and support multi-table business analysis.



---


## Business Objectives



The analysis focuses on identifying:



\- Sales and revenue trends

\- Customer profitability

\- Customer segment performance

\- Product and category profitability

\- High-revenue but loss-making products

\- Country revenue and profit contribution

\- The financial impact of discounts

\- Shipping cost efficiency

\- Most profitable products by category

\- Characteristics of the largest loss-making transactions



---


## Dataset



The project uses the Global Superstore dataset containing international e-commerce sales transactions.



The dataset includes information about:



\- Customers

\- Orders

\- Products

\- Countries and markets

\- Sales

\- Quantity

\- Discounts

\- Profit

\- Shipping costs





## Database Structure



The raw dataset was first imported into a staging table and then transformed into a relational database consisting of:



\- Customers

\- Orders

\- Products

\- OrderDetails





## SQL Skills



\- SELECT statements

\- Filtering and sorting

\- Aggregate functions

\- GROUP BY

\- HAVING

\- INNER JOIN

\- Multiple-table JOINs

\- Subqueries

\- CASE expressions

\- Date functions

\- TOP

\- DISTINCT

\- Ranking functions

\- Calculated financial metrics

\- Data validation

\- Relational database design





## Business Analysis



&#x20;1. Monthly Sales Performance

How are total revenue, number of orders, and average order value changing over time?



&#x20;2. Top Customers \& Profitability

Who are the top 10 customers by revenue, and how profitable are they?



&#x20;3. Customer Segment Performance

Which customer segments generate the most revenue and profit?



&#x20;4. Category \& Sub-Category Profitability

Which product categories and sub-categories are the most and least profitable?



&#x20;5. High-Sales, Low-Profit Products

Which products generate high sales but poor or negative profitability?



&#x20;6. Country Revenue \& Profit Contribution

Which countries contribute the most to company revenue and profit?



&#x20;7. Discount Impact Analysis

How do different discount levels affect sales volume, revenue, and profitability?



&#x20;8. Shipping Mode Efficiency

Which shipping modes are the most financially efficient?



&#x20;9. Product Profit Ranking

What are the top 3 most profitable products within each product category?



&#x20;10. Largest Loss-Making Transactions

Which individual sales transactions generated the largest losses, and what characteristics do they have in common?



--- 


## Key Business Insights



* Over the analyzed period there is a consistently strong growth coming from acquiring more customers rather than more expensive orders.
* Higher revenues aren't a sign of high profitability.
* By analyzing the products profit margins I found a significant profitability issues in some products and subcategories.
* In our example I found a strong negative relation with profitability which means the discounts weren't managed well.
* I identified that some countries contribute with relatively weak profit but generate significant sales. This indicates the need for shipping costs and business strategy review in their operations.
* When observing the biggest transaction losses I identified a pattern associated with aggressive discount levels, suggesting tighter controls over the discount levels.





## Project Structure



\- `Data/` - Raw dataset

\- `database/` - Database creation, import, transformation, and validation scripts

\- `queries/` - SQL business analysis queries

\- `screenshots/` - Selected query results

\- `documentation/` - Project planning and detailed business insights

