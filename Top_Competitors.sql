/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select a.hacker_id,a.name from (select h.hacker_id,h.name,count(*) from Hackers h inner join Submissions s  on h.hacker_id=s.hacker_id
inner join Challenges c on s.challenge_id=c.challenge_id inner join Difficulty  d on d.difficulty_level=c.difficulty_level where s.score=d.score group by h.hacker_id,h.name  having count(*) >1 order by 3 desc,1 asc)a;
