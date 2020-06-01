use GuestHouse2020;

select last_name, first_name from booking, guest where room_no = '101' and booking_date ='2016-11-17' and guest_id = id; -- query one

select booking_date, nights from booking where guest_id = '1540'; --query two

select arrival_time, first_name, last_name from booking, guest where booking_date = '2016-11-05' and guest_id = id order by arrival_time; --query three

select amount, occupants, room_type, booking_id from rate, booking where booking_id in ('5152', '5165', '5154', '5295'); --query four

select first_name, last_name, address from guest, booking where room_no = '101' and booking_date = '2016-12-03' and guest_id = id; --guery five

select count(booking_id) as totalBookings, sum(nights)as totalNights from booking where guest_id in ('1185', '1270') group by guest_id; ---query six 

select sum(amount) as totalAmount from rate inner join booking on room_type = room_type_requested and occupancy = occupants, guest where guest_id = id and first_name = 'Ruth';---query seven

select sum(occupants) as 'numofguestsin' from booking where dateadd(day, nights, booking_date) > '2016-11-21' and booking_date <= '2016-11-21';---query eleven

select id as 'roomno', booking_date as 'bookedin' from (select booking_date, room_no from booking where booking_date = '2016-11-25') as b right join room on room_no = id where booking_date is null;---query twelve








