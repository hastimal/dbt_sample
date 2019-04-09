select e.emp_id, e.emp_name, e.dept, l.loc, e.sal 
from 
public.location_info l 
join public.emp_info e 
on l.emp_id=e.emp_id
limit 5