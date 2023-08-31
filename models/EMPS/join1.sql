
with emp_ref as
(
select * From {{ref('emp_model')}}    
)
,dept_ref as
(  select * From {{ref('dept_model')}})
,join_cte as
( select * from emp_ref inner join dept_ref on dept_ref.deptno = emp_ref.deptno ) 
select * From join_cte