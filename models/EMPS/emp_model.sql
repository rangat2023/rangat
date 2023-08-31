{{config(materialized ='view')}}

with emp_cte as
(select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO as DEPTNOE From A.public.EMP)
select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM DEPTNO from emp_cte