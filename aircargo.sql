select * from passengers_on_flights where route_id between 0 and 25 order by route_id desc;
select count(customer_id) as number_of_passengers, sum(Price_per_ticket) as total_revenue_in_business from ticket_details where class_id = 'Bussiness';
select concat(first_name, ' ', last_name) as Full_Name from customer;
select c. customer_id, t. no_of_tickets, t. class_id 
from customer c join ticket_details t
on c. customer_id = t. customer_id
where no_of_tickets > 0;
select c. first_name, last_name, t. customer_id, t. brand 
from customer c join ticket_details t
on c. customer_id = t. customer_id
where brand = 'Emirates';
select c. first_name, last_name, p. class_id 
from passengers_on_flights p
left join customer c on p. customer_id = c. customer_id
group by 1,2,3,4 
having class_id= "Economy Plus";
