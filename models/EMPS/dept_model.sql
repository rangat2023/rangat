{{config(materialized ='view')}}

with emp_DEPT as
(select DEPTNO, DNAME, LOC From A.public.DEPT)
select DEPTNO, DNAME, LOC from emp_DEPT