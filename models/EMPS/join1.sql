
with emp_ref as
(
select * From {{ref('emp_model')}}    
)
,dept_ref as
(  select * From {{ref('dept_model')}})
,join_cte as
( select DNAME, ENAME, HIREDATE, SAL, COMM from emp_ref inner join dept_ref on dept_ref.DEPTNOD = emp_ref.DEPTNOE ) 
select DNAME, ENAME, HIREDATE, SAL, COMM From join_cte