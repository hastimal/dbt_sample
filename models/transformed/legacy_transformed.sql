-- This is default materialized as view 

with emp_info as (

select * from {{ ref('legacy_emp_info') }}

),

location_info as (

select * from {{ ref('legacy_location_info') }}

),

users_info as (

select * from {{ ref('legacy_selected_users') }}

)


select
   emp_info.emp_id as emp_info_id,
   users_info.emp_name as users_name,
   location_info.loc as location_info_loc,
   users_info.sal as users_salary

from 
  emp_info
  join location_info on emp_info.emp_id = location_info.emp_id
  join users_info on users_info.emp_name = emp_info.emp_name

