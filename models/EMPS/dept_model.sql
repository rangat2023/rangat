{{config(materialized ='view')}}

with emp_DEPT as
(select * From A.public.DEPT)
select * from emp_DEPT