use GuestHousesMao0417;

bulk insert [dbo].[room_type]
from 'E:\DataFiles\room_type.csv'
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[room]
from 'E:\DataFiles\room.csv'
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[rate] --- this doesnt work as it has duplicate primary keys need to fix this later 
from 'E:\DataFiles\rate.csv' 
with
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[guest]
from 'E:\DataFiles\guest.csv'
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[extra] --- missmatch for id 
from 'E:\DataFiles\extra.csv' 
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n'
	);

bulk insert [dbo].[calendar]
from 'E:\DataFiles\calendar.csv' --- missmatch i
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[booking] ---- missmatch with booking date 
from 'E:\DataFiles\booking.csv'
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);