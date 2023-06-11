SELECT 
    *
FROM 
    {{ ref('DIM_LISTINGS_CLEANSED')}}
WHERE  
    minimum_nights < 1
LIMIT 10
