# E-Commerce SQL Business Analysis


---

## Project Overview


This project analyzes an international e-commerce dataset using Microsoft SQL Server and T-SQL.


I transformed raw sales data into a relational database and used SQL to analyze revenue, profitability, customers, products, markets, discounts, and shipping efficiency.


The original dataset was provided as a single flat CSV file containing 51,290 sales records.


The raw data was first loaded into a staging table (`RawSales`) and validated before being transformed into four relational tables:

- `Customers`

- `Orders`

- `Products`

- `OrderDetails`

Primary and foreign keys were used to establish relationships between the tables and support multi-table business analysis.

---

## Project Structure


\- `Data/` - Raw dataset

\- `database/` - Database creation, import, transformation, and validation scripts

\- `queries/` - SQL business analysis queries

\- `screenshots/` - Selected query results

\- `documentation/` - Project planning and detailed business insights


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


## SQL Skills


- SELECT statements

- Filtering and sorting

- Aggregate functions

- GROUP BY

- HAVING

- INNER JOIN

- Multiple-table JOINs

- Subqueries

- CASE expressions

- Date functions

- TOP

- DISTINCT

- Ranking functions

- Calculated financial metrics

- Data validation

- Relational database design

---

## Dataset


The project uses the Global Superstore dataset containing international e-commerce sales transactions.


The dataset includes information about:

- Customers

- Orders

- Products

- Countries and markets

- Sales

- Quantity

- Discounts

- Profit

- Shipping costs


## Database Structure


The raw dataset was first imported into a staging table and then transformed into a relational database consisting of:

- Customers

- Orders

- Products

- OrderDetails

--- 

## Business Analysis


### 1. Monthly Sales Performance

How are total revenue, number of orders, and average order value changing over time?



### 2. Top Customers \& Profitability

Who are the top 10 customers by revenue, and how profitable are they?



### 3. Customer Segment Performance

Which customer segments generate the most revenue and profit?



### 4. Category \& Sub-Category Profitability

Which product categories and sub-categories are the most and least profitable?



### 5. High-Sales, Low-Profit Products

Which products generate high sales but poor or negative profitability?



### 6. Country Revenue \& Profit Contribution

Which countries contribute the most to company revenue and profit?



### 7. Discount Impact Analysis

How do different discount levels affect sales volume, revenue, and profitability?



### 8. Shipping Mode Efficiency

Which shipping modes are the most financially efficient?



### 9. Product Profit Ranking

What are the top 3 most profitable products within each product category?



### 10. Largest Loss-Making Transactions

Which individual sales transactions generated the largest losses, and what characteristics do they have in common?

--- 

## Key Business Insights


- **Growth was volume-driven:** revenue increased primarily because of a growing number of orders rather than substantially higher Average Order Value.

- **Revenue did not guarantee profitability:** several high-revenue customers and products generated weak or even negative profit.

- **Product-level profitability problems were identified:** some products and sub-categories generated substantial sales while producing negative margins.

- **Aggressive discounting significantly damaged profitability:** high-discount transactions were strongly associated with negative profit margins and some of the largest individual transaction losses.

- **Market contribution differed substantially:** some countries generated meaningful revenue but contributed disproportionately little profit.

- **Shipping efficiency varied considerably:** Standard Class had substantially lower shipping costs relative to revenue than faster shipping methods.
