Create database RETAIL;

Use [RETAIL];
GO
select * from customers_large
select * from [dbo].[order_details_large]
select * from [dbo].[products_large]
select * from [dbo].[returns_large]
select * from [dbo].[orders_large]

--Tapşırıq 1.1

select sum((p.unit_price * od.quantity) - od.discount) as Umumi_Satis_Meblegi
from dbo.order_details_large od
join dbo.products_large p on od.product_id = p.product_id;

--Tapşırıq 1.2
select 
year(o.order_date) as Il,
month(o.order_date) as Ay,
count(distinct o.order_id) as Sifaris_Sayi,
sum((p.unit_price * od.quantity) - od.discount) as Satis_Meblegi
from dbo.orders_large o
join dbo.order_details_large od on o.order_id = od.order_id
join dbo.products_large p on od.product_id = p.product_id
group by year(o.order_date), month(o.order_date)
order by Il, Ay;

--Tapşırıq 1.3

select 
p.product_name,
sum((p.unit_price * od.quantity) - od.discount) as Umumi_Gelir,
sum(p.cost_price * od.quantity) as Maya_Deyeri,
sum(((p.unit_price * od.quantity) - od.discount) - (p.cost_price * od.quantity)) as Menfeet
from dbo.order_details_large od
join dbo.products_large p on od.product_id = p.product_id
group by p.product_name;

--Tapşırıq 1.4

select top 5
p.product_name,sum((p.unit_price * od.quantity) - od.discount) as Umumi_Gelir
from dbo.order_details_large od
join dbo.products_large p on od.product_id = p.product_id
group by p.product_name
order by Umumi_Gelir desc;

--Tapşırıq 1.5

select top 5
c.full_name,
sum((p.unit_price * od.quantity) - od.discount) as Umumi_Alis_Veris
from dbo.customers_large c
join dbo.orders_large o on c.customer_id = o.customer_id
join dbo.order_details_large od on o.order_id = od.order_id
join dbo.products_large p on od.product_id = p.product_id
group by c.full_name
order by Umumi_Alis_Veris desc;

--Tapşırıq 1.6

select
c.city as Şəhər,
count(distinct o.order_id) as Sifaris_Sayi,
sum((p.unit_price * od.quantity) - od.discount) as Umumi_Satis
from dbo.customers_large c
join dbo.orders_large o on c.customer_id = o.customer_id
join dbo.order_details_large od on o.order_id = od.order_id
join dbo.products_large p on od.product_id = p.product_id
group by c.city
order by Umumi_Satis desc;

--Tapşırıq 1.7

select case 
when od.discount > 0 then 'Endirimli Sifarisler' 
else 'Endirimsiz Sifarisler' 
end as Sifaris_Novu,
count(od.order_id) as Sifaris_Detallari_Sayi,
sum((p.unit_price * od.quantity) - od.discount) as Umumi_Satis_Meblegi,
avg((p.unit_price * od.quantity) - od.discount) as Orta_Satis_Deyeri
from order_details_large od
join products_large p on od.product_id = p.product_id
group by case 
when od.discount > 0 then 'Endirimli Sifarisler' 
else 'Endirimsiz Sifarisler' 
end;

--Tapşırıq 1.8

select 
o.payment_method,
count(distinct o.order_id) as Sifaris_Sayi,
sum((p.unit_price * od.quantity) - od.discount) as Umumi_Satis
from orders_large o
join order_details_large od on o.order_id = od.order_id
join products_large p on od.product_id = p.product_id
group by o.payment_method
order by Umumi_Satis desc;

--Tapşırıq 1.9

select status,count(order_id) as Say,
cast(count(order_id) * 100.0 / (select count(*) from orders_large) as decimal(10,2)) as Faiz_Nisbeti
from orders_large
group by status;

--Tapşırıq 1.10

SELECT 
    COUNT(r.return_id) * 100.0 / COUNT(o.order_id) AS Qaytarilma_Faizi
FROM orders_large o
LEFT JOIN returns_large r ON o.order_id = r.order_id;

--Tapşırıq 1.11

select top 1
p.product_name,
p.category,
count(r.order_id) as Qaytarilma_Sayi
from returns_large r
join order_details_large od on r.order_id = od.order_id
join products_large p on od.product_id = p.product_id
group by p.product_name, p.category
order by Qaytarilma_Sayi desc;

--Tapşırıq 1.12

select 
reason,count(*) as Say,
cast(count(*) * 100.0 / (select count(*) from returns_large) as decimal(10,2)) as Pay_Faizi
from returns_large
group by reason
order by Pay_Faizi desc;

---Bonus 1

select 
p.category,cast(
sum(((p.unit_price * od.quantity) - od.discount) - (p.cost_price * od.quantity)) * 100.0 / 
nullif(sum((p.unit_price * od.quantity) - od.discount), 0) 
as decimal(10,2)) as Orta_Menfeet_Faizi
from order_details_large od
join products_large p on od.product_id = p.product_id
group by p.category
order by Orta_Menfeet_Faizi desc;

---Bonus 2

with Yas_Qruplari as (
select case 
when c.age < 25 then '18-24'
when c.age between 25 and 35 then '25-35'
when c.age between 36 and 50 then '36-50'
else '50+' 
end as Yas_Qrupu,
((p.unit_price * od.quantity) - od.discount) as Satis_Meblegi
from customers_large c
join orders_large o on c.customer_id = o.customer_id
join order_details_large od on o.order_id = od.order_id
join products_large p on od.product_id = p.product_id)
select Yas_Qrupu,
cast(sum(Satis_Meblegi) as decimal(10,2)) as Umumi_Satis,
cast(sum(Satis_Meblegi) * 100.0 / (select sum(Satis_Meblegi) from Yas_Qruplari) as decimal(10,2)) as Satis_Payi_Faizle
from Yas_Qruplari
group by Yas_Qrupu
order by Yas_Qrupu;

---Bonus 3

select 
sum(case when year(o.order_date) = 2023 then (p.unit_price * od.quantity) - od.discount else 0 end) as Satis_2023,
sum(case when year(o.order_date) = 2024 then (p.unit_price * od.quantity) - od.discount else 0 end) as Satis_2024,
cast(
(sum(case when year(o.order_date) = 2024 then (p.unit_price * od.quantity) - od.discount else 0 end) -
sum(case when year(o.order_date) = 2023 then (p.unit_price * od.quantity) - od.discount else 0 end)) * 100.0 /
nullif(sum(case when year(o.order_date) = 2023 then (p.unit_price * od.quantity) - od.discount else 0 end), 0)
as decimal(10,2)) as Artim_Faizi
from orders_large o
join order_details_large od on o.order_id = od.order_id
join products_large p on od.product_id = p.product_id
where year(o.order_date) IN (2023, 2024);