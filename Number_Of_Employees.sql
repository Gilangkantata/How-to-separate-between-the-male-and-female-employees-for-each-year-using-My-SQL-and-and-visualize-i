select 
	count(de.emp_no) as number_of_employees, # Generate data from employees number, gender, and hire date.
    e.gender,
    year(de.from_date) as calendar_year
from
	t_employees e
		join								
	t_dept_emp de on e.emp_no= de.emp_no
where
	year(de.from_date) >= "1990"
group by calendar_year,e.gender				#Group data and remove duplicate
order by calendar_year;   					#Sort table by year 

