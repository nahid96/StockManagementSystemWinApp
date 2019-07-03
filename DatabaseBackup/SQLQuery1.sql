use StockDB

create table Categories
(
ID int identity(1,1) primary key,
CategoryName varchar(100)
)

select * from Categories

insert into Categories (CategoryName) values ('Stationary')
insert into Categories (CategoryName) values ('Cosmetics')
insert into Categories (CategoryName) values ('Electronics')
insert into Categories (CategoryName) values ('Kitchen Items')

create table Companies
(
ID int identity(1,1) primary key,
CompanyName varchar(100)
)

select * from Companies

insert into Companies (CompanyName) values ('Unilever')
insert into Companies (CompanyName) values ('RFL')
insert into Companies (CompanyName) values ('Walton')
insert into Companies (CompanyName) values ('Nova')

create table Items
(
ID int identity(1,1) primary key,
ItemName varchar(100),
ReorderLevel int,
AvailableQuantity int,
CategoryID int foreign key references Categories(ID),
CompanyID int foreign key references Companies(ID)
)

drop table Items

select * from Items

insert into Items (ItemName, ReorderLevel, AvailableQuantity, CategoryID, CompanyID) values ('Mobile', 20, 50, 3, 3)
insert into Items (ItemName, ReorderLevel, AvailableQuantity, CategoryID, CompanyID) values ('Pen', 30, 70, 4, 4)
insert into Items (ItemName, ReorderLevel, AvailableQuantity, CategoryID, CompanyID) values ('Blender', 10, 35, 1, 2)

create table ItemConditions
(
ID int identity(1,1) primary key,
Condition varchar(100)
)

select * from ItemConditions

insert into ItemConditions (Condition) values ('Sell')
insert into ItemConditions (Condition) values ('Lost')
insert into ItemConditions (Condition) values ('Damage')

create table StockIns
(
ID int identity(1,1) primary key,
CompanyID int foreign key references Companies(ID),
CategoryID int foreign key references Categories(ID),
ItemID int foreign key references Items(ID)
)

select * from StockIns

insert into StockIns (CompanyID, CategoryID, ItemID) values (3, 3, 1)
insert into StockIns (CompanyID, CategoryID, ItemID) values (4, 4, 2)
insert into StockIns (CompanyID, CategoryID, ItemID) values (2, 1, 3)

create table StockOuts
(
ID int identity(1,1) primary key,
CompanyID int foreign key references Companies(ID),
CategoryID int foreign key references Categories(ID),
ItemID int foreign key references Items(ID)
)

select * from StockOuts

insert into StockOuts (CompanyID, CategoryID, ItemID) values (3, 3, 1)
insert into StockOuts (CompanyID, CategoryID, ItemID) values (4, 4, 2)


