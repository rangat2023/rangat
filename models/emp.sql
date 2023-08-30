{{config(materialized ='table')}}

with cte1 as 
( select DEPTNO  ,JOB, sum(sal) from A.public.EMP
group by DEPTNO, JOB 
) select * From cte1