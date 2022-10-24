
/* The purpose of this query is to find all hosts who have had customer reviews containing the word dirty or broken in English or Dutch*/


SELECT host_id, host_url, host_name, COUNT(*) AS num_dirty_reviews FROM reviews INNER JOIN listings ON reviews.listing_id = listings.id
WHERE comments LIKE "%dirty%" or comments LIKE "%vuil%" or comments LIKE "%broken%" or comments LIKE "%gebroken%" 
GROUP BY host_id, host_url, host_name ORDER BY num_dirty_reviews DESC;