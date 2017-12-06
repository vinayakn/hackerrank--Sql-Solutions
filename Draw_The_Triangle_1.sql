select rpad('* ',level*2,'* ') from dual connect by level<=10

select rpad(' ',r*2,' ')||rpad('* ',l*2,'* ') k from ( select level l,row_number() over(order by null) r from dual connect by level<=20 order by l desc)
