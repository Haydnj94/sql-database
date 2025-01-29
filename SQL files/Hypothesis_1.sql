use airbnb;

show tables;

select * from airbnb;

#  Hypothesis 1: “Neighborhoods with more listings have a cheaper average price per night” 
select neighbourhood, count(neighbourhood) as number_of_listings, concat('$',(round(avg(price),2))) as average_price_per_night
from airbnb
group by neighbourhood
order by number_of_listings
;

select neighbourhood, 
       count(neighbourhood) as number_of_listings, 
       concat('$', (round(avg(price), 2))) as average_price_per_night,
       case
           when count(neighbourhood) >= 1000 then 'Very High'
           when count(neighbourhood) >= 500 then 'High'
           when count(neighbourhood) >= 100 then 'Medium'
           when count(neighbourhood) >= 50 then 'Low'
           else 'Very Low'
       end as listing_category
from airbnb
group by neighbourhood
order by number_of_listings;

select 
       case
           when listing_counts >= 1000 then 'Very High'
           when listing_counts >= 500 then 'High'
           when listing_counts >= 100 then 'Medium'
           when listing_counts >= 50 then 'Low'
           else 'Very Low'
       end as neighbourhood_popularity,
       sum(listing_counts) as total_listings,
       concat('$', round(avg(avg_price), 2)) as average_price_per_night
from (
    select neighbourhood, count(neighbourhood) as listing_counts, avg(price) as avg_price
    from airbnb
    group by neighbourhood
) as subquery
group by neighbourhood_popularity
order by total_listings desc;