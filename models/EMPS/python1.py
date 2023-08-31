import snowflake.snowpark.functions as F
def model(dbt,session):    
    dbt.config(materialized="table"    )
    emp_1 = dbt.ref("emp_model")
    dept_1 = dbt.ref("dept_model")

    final_df_emp_dept  = (  
        emp_1
        .join (dept_1, emp_1.DEPTNOE == dept_1.DEPTNO, 'Inner')
        .group_by(emp_1.JOB)
            .agg(
                F.sum(F.col('SAL'))).alias('sum_sal') 
     )
    return final_df_emp_dept