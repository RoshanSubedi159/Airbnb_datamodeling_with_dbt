with RAW_REVIEWS as
(
    SELECT * FROM {{source('airbnb', 'reviews')}}
)
select
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from
    RAW_REVIEWS