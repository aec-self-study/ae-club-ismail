select 
    extract(month from first_order_at) as month,
    count(*) as count
from {{ ref('customers')}}
group by
    month
order by month desc