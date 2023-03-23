create table ATMMachine (
ATMId int not null primary key,
ATMName nvarchar(50) not null,
ATMAddress nvarchar(50) not null,
ATMBankName nvarchar(50),
ATMBranch nvarchar(50) not null)