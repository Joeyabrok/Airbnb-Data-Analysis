
/*
The purpose of the query is to determine how much top 10 AirBnB earners in Amsterdam in September 2022 earned.
The query retrieves the id, the listing url,calculates how many days in the next 30 days are booked,the price and the projected revenue in the next 30 days.
The price was in string format and had a dollar sign so some data manipulation is needed to get it to a suitable format.*/


SELECT id, listing_url, name, 30 - availability_30 AS booked_out_30 , 
CAST(REPLACE(Price,'$','') AS UNSIGNED) AS price, 
CAST(REPLACE(Price,'$','') AS UNSIGNED)*(30 - availability_30) / beds AS proj_rev_30
FROM listings ORDER BY proj_rev_30 DESC LIMIT 10; 
