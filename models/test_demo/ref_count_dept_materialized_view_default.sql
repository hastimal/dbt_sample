-- This is default materialized as view 

with emp_info_limit as (

select * from {{ ref('emp_info_limit')}}

)

select emp_name, dept, count(*)
from emp_info_limit
group by 1, 2