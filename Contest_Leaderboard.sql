/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT h.hacker_id, h.name, SUM(max_score)  
FROM (SELECT challenge_id, hacker_id, MAX(score) as max_score FROM submissions GROUP by hacker_id, challenge_id) t 
JOIN hackers h on t.hacker_id = h.hacker_id 
GROUP BY h.hacker_id, h.name HAVING SUM(max_score) != 0 
ORDER BY 3 DESC, 1;
