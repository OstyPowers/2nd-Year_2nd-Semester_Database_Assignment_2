create or alter view bookings_26Nov
as
select concat(first_name, ' ', last_name) as guest_name, room_no, booking_date from booking, guest 
where booking_date = '2016-11-26' and guest_id = id; 

