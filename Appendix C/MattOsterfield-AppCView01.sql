create or alter view room_description
as 
select room.id as room_no, room_type, description from room, room_type
where room_type.id = room_type;




