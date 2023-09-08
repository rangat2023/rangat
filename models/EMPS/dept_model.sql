{{config(materialized ='view')}}

with emp_DEPT as
(select DEPTNO as DEPTNOD, DNAME, LOC From A.public.DEPT)
select DEPTNOD, DNAME, LOC from emp_DEPT