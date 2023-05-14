use sakila;

use sakila;

desc payment;

select * from  payment where payment_date >= '2005-07-30 00:00' and payment_date <= '2005-07-30 00:30';

select * from  payment where payment_date between '2005-07-30 00:00' and '2005-07-30 00:30';

select * from payment where amount > 3.55;

select * from payment where rental_id >= 9571 and rental_id <= 11367;

select * from payment where rental_id  between '9571' and '11367';

select * from  payment where payment_date  between  '2005-07-30 00:00' and '2005-07-31 12:00:00' or payment_date  between '2005-08-01 00:00:00' and ' 2005-08-02 00:00:00';
