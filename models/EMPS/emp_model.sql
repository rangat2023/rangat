{{config(materialized ='view')}}

with emp_cte as
(select * From A.public.EMP)
select * from emp_cte