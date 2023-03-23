create table Bank7(
Bank_ID int not null IDENTITY(1,1) ,
BankName nvarchar(50) not null,
BankAddress nvarchar(50) not null,
IFSCcode char(11) not null,
constraint Pkey78 primary key(Bank_ID,IFSCCode))

INSERT INTO Bank7(
BankName,BankAddress,IFSCcode)
VALUES('Ziraat','veritabaný sokak','4576215')
INSERT INTO Bank7(
BankName,BankAddress,IFSCcode)
VALUES('Garanti','manolya sokak','578465')
INSERT INTO Bank7(BankName,BankAddress,IFSCcode)
VALUES('Gülse','ETÜ sokak','145879')

SELECT*FROM Bank7

