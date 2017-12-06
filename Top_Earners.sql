/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select * from (select salary*months,count(*) from employee   group by salary*months order by 1 desc) where rownum=1;
