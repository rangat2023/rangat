{{config(materialized ='table')}}


with cte1 as (
    
     select DEPTNO  ,JOB as jobskkk, sum(sal) from A.public.EMP
group by DEPTNO, JOB 
)
,cte2 as ( select * From cte1 where DEPTNO = 10)
select * from cte2
 
