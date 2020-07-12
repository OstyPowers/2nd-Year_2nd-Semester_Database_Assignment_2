create or alter view check_in_out_booking5204
as
select booking_id, booking_date as check_in,
nights as nights, 
dateadd(day, nights, booking_date) 
as check_out from booking where booking_id = 5204; 