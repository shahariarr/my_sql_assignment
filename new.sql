select c.*,count(o.id) as total_order from customers as c join orders as o on c.id=o.customer_ID group by c.id order by total_order desc;

select p.name,o.quantity,sum(o.quantity*p.price) as toal_amount from order_items as o join products as p on o.product_ID=p.id group by p.id order by o.id desc;

select c.name,sum(p.price) from order_items as o join products as p on o.product_ID=p.id join categories as c on c.id=p.category_ID group by c.id;

select c.name,sum(o.total_amount) as total  from customers as c join orders as o on c.id=o.customer_ID group by c.id order by total desc limit 5;
