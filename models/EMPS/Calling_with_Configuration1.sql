{{config(materialized ='view')}}

with emp_cte as
(select * From {{ source('config1','table_name_b') }})
select     SAL   from emp_cte