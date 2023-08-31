import snowflake.snowpark.functions as F


def model(dbt, session):
    df_sql = session.sql("select * from public.EMP")
    df_filtered = df_sql.filter(F.col("JOB") == "CLERK")
    df=df_filtered.group_by("JOB").agg(F.sum(F.col('SAL')))
    return df
