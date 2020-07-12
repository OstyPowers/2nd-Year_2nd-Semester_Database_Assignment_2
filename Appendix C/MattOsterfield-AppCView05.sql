create or alter view booking_room209
as
select concat(first_name, ' ', last_name) as guest_name, room_no, booking_date 
from guest, booking where booking_date = '2016-11-26' and room_no = '209' and guest_id= id;