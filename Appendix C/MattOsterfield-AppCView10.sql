create or alter view east_address
as
select top 100 last_name, first_name, isnull(sum(nights),0) as total_nights, address from guest
full outer join booking on guest_id = id
where address like '%east%'
group by first_name, last_name, address
order by last_name, first_name;






