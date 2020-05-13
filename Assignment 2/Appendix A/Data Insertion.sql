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

bulk insert [dbo].[rate] --- created composite key to fix duplication error 
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

bulk insert [dbo].[extra] --- missmatch for id (fixed this error by creating a macro to sort everything into four columns and used replace all to remove brackets and quote marks
from 'E:\DataFiles\extra.csv' 
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n'
	);

bulk insert [dbo].[calendar]
from 'E:\DataFiles\calendar.csv' --- missmatch i (fixed this by changing the format of the date in csv file)
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);

bulk insert [dbo].[booking] ---- missmatch with booking date (fixed this by changing the format of the date in csv file)
from 'E:\DataFiles\booking.csv'
with 
	(
		FIELDTERMINATOR =',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2
	);