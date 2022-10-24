# Airbnb-Data-Analysis

There are two aspects of this project . One aspect of this project takes the point of view of someone that is considering becoming an Airbnb host in Amsterdam and wants to know what are the top Airbnb earners currently in the city.

To get this information a query retrieves the id, the listing url,calculates how many days in the next 30 days are booked,the price and the projected revenue in the next 30 days. The price was in string format and had a dollar sign so some data manipulation is needed to get it to a suitable format.
The query is in top_10_hosts.sq 



Another aspect of the project is from a potential customer who wants to avoid bad Airbnb hosts in Amsterdam. To judge the potentail host all hosts that have reviews containing the word "dirty" or "broken" in English or Dutch will be queried.
The file is with the customer reviews is in a reviews.csv.gz folder but this file is too large to include in github but it can be found at this link:http://insideairbnb.com/get-the-data/

The query for this component is in dirty_ broken_hosts.sql
