use bank;

select * from transactions;

select transaction_type,amount,row_number() over() from transactions;

select transaction_type,amount,row_number() over(order by amount) from transactions;

select transaction_type,amount,row_number() over(order by amount desc) from transactions;

select transaction_type,amount,row_number() over(partition by transaction_type order by amount) from transactions;

select transaction_date,amount,transaction_type,
lag(amount) over (order by transaction_date),
lag(amount) over (partition by transaction_type order by transaction_date)
from transactions;

select transaction_date,amount,transaction_type,
lead(amount) over (order by transaction_date)
from transactions;

select transaction_date,amount,transaction_type,
lead(amount) over (order by transaction_date),
lead(amount) over (partition by transaction_type order by transaction_date)
from transactions;



