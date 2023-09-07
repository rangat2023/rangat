with cte1 as (select deptno, sum(sal) from a.public.emp group by deptno)

select *
from cte1
;
