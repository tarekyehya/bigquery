select 
        id,
    -- name
    initcap(REGEXP_REPLACE(lower(name),'[^a-z ]','')) as customr_name,


    -- costomer phone
   case 
        when (length(cast(phone as string)) = 9) and left(cast(phone as string),2) = '10'
            then  '0' || '100' || right(cast(phone as string),7)

        when (length(cast(phone as string)) = 9) and left(cast(phone as string),2) = '11'
            then  '0' || '111' || right(cast(phone as string),7)

        when (length(cast(phone as string)) = 9) and left(cast(phone as string),2) = '12'
            then  '0' || '122' || right(cast(phone as string),7) 

        else cast('0' || cast(phone as string) as string) 

        end as phone_number,

    -- country
    initcap(country) as country,

    city,
    age,
    gender

    
from
    {{source('gad_resturant','raw_users')}}