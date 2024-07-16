select Phone,case when Phone ='123-456-7890' then 'yes'
else 'no' end as acceptance
from customers;