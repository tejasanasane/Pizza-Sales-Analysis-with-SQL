# Pizza-Sales-Analysis-with-SQL
We all love pizza! And if you're reading this, it's likely you also share a passion for data analytics.
What could be a more perfect blend than combining our love for food and data by delving into a project focused on analyzing Pizza Sales? 
For this project, I sourced pizza sales data from Kaggle (link) which contains four csv files: order_details.csv, orders.csv, pizza_types.csv, and pizzas.csv,
which I subsequently imported into MySQL Workbench.
orders.csv has columns : order_id, date, time
order_details.csv has columns : order_details_id, order_id, pizza_id, quantity
pizza_types.csv has columns : pizza_type_id, name, category, ingredients
pizzas.csv has columns : pizza_id, pizza_type_id, size, price
After applying data cleaning tasks such as checking for null values, duplicate rows and ensuring correct data types, 
I used INNER JOIN to combine all the tables to get the size of the dataset,
resulting in a consolidated dataset of 48260 unique rows and 10 unique columns.
