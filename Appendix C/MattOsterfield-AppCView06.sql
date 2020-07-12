create or alter view details_booking5046
as
select booking_id, concat(first_name, ' ', last_name) as guest_name, occupants, booking_date as check_in, nights,
dateadd(day, nights, booking_date) 
as check_out from booking, guest 
where booking_id = 5046  and id = guest_id;
