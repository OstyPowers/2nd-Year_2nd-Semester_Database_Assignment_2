create or alter view totalbill_drAndrew
as
select first_name, last_name, amount
from guest, booking 
join rate on room_type_requested = room_type 
and occupants = occupancy
where id = guest_id and first_name = 'Dr Andrew' and last_name = 'Murrison';