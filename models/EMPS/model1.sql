{{config(materialized ='table')}}


with cte1 as (
    
     select DEPTNO  ,JOB as jobsss, sum(sal) from A.public.EMP
group by DEPTNO, JOB 
)

select * from cte1
 
