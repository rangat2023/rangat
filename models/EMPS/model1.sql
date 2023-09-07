{{config(materialized ='table')}}


with cte1 as (
    
     select DEPTNO  ,JOB as jobskkk, sum(sal) from A.public.EMP
group by DEPTNO, JOB 
)

select * from cte1
 
