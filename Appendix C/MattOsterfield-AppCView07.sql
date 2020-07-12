create or alter view total_bill5128
as
select 
(select sum(amount) as total from extra where booking_id = 5128) +
(select rate.amount as total from rate, booking where booking_id = 
5128 and rate.room_type = room_type_requested and occupancy = occupants) as total_bill;


