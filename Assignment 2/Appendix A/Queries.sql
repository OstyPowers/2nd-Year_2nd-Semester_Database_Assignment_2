use GuestHousesMao0417;

select (select count(*) 
from [dbo].[booking])  As totalBookings;

select (select count(distinct guest_id) 
from [dbo].[booking]) As totalGuestsBooked;

select guest_id, room_type_requested, concat (first_name,' ',last_name) As name
from [dbo].[booking],[dbo].[guest]
where id = guest_id
order by room_type_requested;
