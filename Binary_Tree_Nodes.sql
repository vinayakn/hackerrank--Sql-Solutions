/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select n,case when p is null then 'Root'
                when n=any (select p from BST) then 'Inner'
                else 'Leaf' end from  BST order by n ; 
