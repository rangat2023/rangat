import snowflake.snowpark.functions as F
def model(dbt,session):    
    dbt.config(materialized="table")
    dept_1 = dbt.ref("dept_model")
    return dept_1