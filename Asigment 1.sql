select * from sample ;

-- Total sales by region --
select Region, sum(Sales) as total_sales from sample 
group by Region;

--- Top 5 profitable products --
select Category,sum(Profit) as total from sample
group by Category 
order by total desc
limit 5;

--- monthly sales trend --
select Month('Order Date') as month,
sum(Sales) as total
from sample
group by month
order by month ;