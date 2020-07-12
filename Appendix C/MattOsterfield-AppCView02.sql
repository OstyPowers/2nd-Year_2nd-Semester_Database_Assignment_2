create or alter view guest_details
as
select concat(first_name, ' ',last_name) as guest_name, address from guest;


