with legacy_transformed as (

select * from {{ ref('legacy_transformed') }}

)

select
 emp_info_id, users_name, sum(users_salary)
from 
 legacy_transformed
group by 1, 2