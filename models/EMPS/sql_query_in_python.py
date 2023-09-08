import snowflake.snowpark.functions as F
def model(dbt,session):
    df1 = session.sql('select * From  A.public.EMP')
    df2 = df1.filter(F.col("JOB") == "CLERK")
    df3 = df2.group_by("DEPTNO").agg(F.sum(F.col('SAL')))
        

    return df3