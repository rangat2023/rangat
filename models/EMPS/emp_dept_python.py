import snowflake.snowpark.functions as F
def model(dbt,session):
    
    dbt.config(materialized="table")
    empm=dbt.ref("emp_model")
    deptm=dbt.ref("dept_model")
    
    final_df = (
        empm
        .join(deptm, empm.deptnoe == deptm.deptnod, 'Inner')
        .group_by(empm.JOB)
            .agg(
            F.sum(F.col('SAL')).alias('SALARY')
        
        )
    )

    return final_df