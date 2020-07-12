create or alter view wildcard_namesearch
as
select first_name, last_name, amount
from guest, booking 
join rate on room_type_requested = room_type 
and occupants = occupancy
where first_name like 'Sir%p%' and last_name like '%rd' and id = guest_id;