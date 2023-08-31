import snowflake.snowpark.functions as F
def model (dbt,session):
  

  df_sql = session.sql("select DEPTNO, JOB, SAL A.public.EMP;")
  df_filtered = df_sql.filter(F.col("JOB") == "CLERK")


  return df_filtered