create database Go_DESi;
use go_desi;

select * from product p 
join reviews_dataset r 
on p.Sub_Product = r.ï»¿Sub_Product;

create view Total_sales as
	select distinct p.sub_product , sum(r.count) as total_review,
	(p.MRP * sum(r.count)) as MRP_Sales
	from product p 
	join reviews_dataset r 
	on p.Sub_Product = r.ï»¿Sub_Product
	group by p.sub_product,p.mrp;