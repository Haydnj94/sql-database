use airbnb;

show tables;

select * from airbnb;

#  Hypothesis 1: “Neighborhoods with more listings have a cheaper average price per night” 
select neighbourhood, count(neighbourhood) as number_of_listings, concat('$',(round(avg(price),2))) as average_price_per_night
from airbnb
group by neighbourhood
order by number_of_listings
;