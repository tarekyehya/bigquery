select   order_id,/* dublicate order_id the all row not dublicated */
        customer_id,
        REGEXP_REPLACE(lower(item_name),'[^a-z]','') as item_name, /* lower case,delete numbers */
        REGEXP_REPLACE(item_price,'[^0-9]','') as price, /* lower case,delete numbers */
        date
from data-fullstack.gad_resturant.raw_food_orders
