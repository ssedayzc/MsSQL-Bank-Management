
create table Customer7(
C_ID int not null primary key IDENTITY(1,1),
C_Name nvarchar(30) ,
C_FirstName nvarchar(30) not null,
C_MiddleName nvarchar(30),
C_LastName nvarchar(30) not null,
C_Address nvarchar(30) ,
C_DateOfBirth date not null,
C_Phone int not null,
C_Age tinyint CHECK (C_Age>=18)
constraint U_Customer7 UNIQUE (C_ID,C_LastName))


INSERT INTO Customer7(C_FirstName,C_LastName,C_DateOfBirth,C_Phone,C_Age,C_Address)
VALUES('Gülseren','Zamir','2002-07-27','0547896532','20','Adana')
INSERT INTO Customer7(C_FirstName,C_MiddleName,C_LastName,C_DateOfBirth,C_Phone,C_Age,C_Address)
VALUES('Seda','Nur','Yazýcý','2001-04-09','0547896123','21','Trabzon')
INSERT INTO Customer7(C_FirstName,C_LastName,C_DateOfBirth,C_Phone,C_Age,C_Address)
VALUES('Ýlknur','Akcaba','2002-04-01','054712432','20','Erzurum')
INSERT INTO Customer7(C_FirstName,C_LastName,C_DateOfBirth,C_Phone,C_Age,C_Address)
VALUES('Ayþe','Gül','2000-09-02','0547124578','22','Antalya')


SELECT*FROM Customer7

USE GülseBank
GO
CREATE PROCEDURE SelectAllCustomer7 @C_Address nvarchar(50)
AS
BEGIN
SELECT * FROM Customer7 WHERE C_Address = @C_Address
PRINT('Trigger çalýþýyor')
END
GO
EXEC SelectAllCustomer7 @C_Address = 'Adana'



GO
Create Trigger trgInsertedCustomer7
ON Customer7
AFTER INSERT
AS BEGIN


DECLARE
@C_FirstName nvarchar(30),
@C_MiddleName nvarchar(30),
@C_LastName nvarchar(30),
@C_DateOfBirth date,
@C_Phone int,
@C_Age tinyint,
@C_Address nvarchar(30)
SET NOCOUNT ON;
SELECT @C_FirstName= C_FirstName,
@C_MiddleName= C_MiddleName,
@C_LastName= C_LastName,
@C_DateOfBirth= C_DateOfBirth,
@C_Phone= C_Phone,
@C_Age= C_Age,
@C_Address= C_Address
FROM INSERTED
PRINT ('Kayýt eklendi')

END 



INSERT INTO Customer7(C_FirstName,C_LastName,C_DateOfBirth,C_Phone,C_Age,C_Address)
VALUES('Onur','Barýþ','2007-09-11','0547998521','16','Adana')




SELECT*FROM Customer7

DELETE FROM Customer7 WHERE C_FirstName='Seda'

SELECT*FROM Customer7


