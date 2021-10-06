select 
    item_name as name,
    sum(cast(price as int64)) as total_price
from
    {{ref('stg_raw_food_orders')}}
group by item_name