create database amazondb;
use amazondb;

select sum(Sales) from amazon_sales_clean;

select sum(Profit) from amazon_sales_clean;

select avg(Profit) from amazon_sales_clean;

select `Product Name`,sum(Sales) as Totalsales
from amazon_sales_clean
group by `Product Name`
order by Totalsales desc
limit 10;

select `Category`,sum(Sales)
from amazon_sales_clean
group by `Category`;

select `Geography`,sum(Sales)
from amazon_sales_clean
group by `Geography`;

select Month,sum(Sales)
from amazon_sales_clean
group by Month;

select `Product Name`,sum(Profit) 
from amazon_sales_clean
group by `Product Name`
order by sum(Profit)  desc
limit 5;

select avg(`Shipping Days`) from amazon_sales_clean;

