create table ATMTechnician3(
T_ID int not null IDENTITY(1,1),
T_Name nvarchar(50) not null,
T_Address nvarchar(50) not null,
T_Phone int not null,
constraint Pkey_4 primary key(T_ID,T_Phone))


INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Mehmet ��nar','Menek�e sokak �i�ek mah.','054785132')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Bu�ra Budak','FuarYolu sokak Okyanus apt.','054784521')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Samet Nadir','Ayna sokak Polat mah.','054781230')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Sude Atl�','Dal sokak �m�r apt.','054789651')


--USE G�lseBank
DECLARE @T_Name nvarchar(max) , @T_Address nvarchar(max)
DECLARE TechnicianCursor CURSOR FOR 
SELECT T_Name,T_Address FROM ATMTechnician3
OPEN TechnicianCursor
FETCH NEXT FROM TechnicianCursor INTO @T_Name,@T_Address -- S�radaki veri yakalan�yor ve haf�zaya al�n�yor. O anki veri 'PersonelCursor' taraf�ndan temsil ediliyor ve kolon de�erleri ilgili de�i�kenlere s�ral� bir �ekilde atan�yor.

WHILE @@FETCH_STATUS = 0 
BEGIN
PRINT @T_Name+ '  '+@T_Address
FETCH NEXT FROM TechnicianCursor INTO  @T_Name,@T_Address
END
CLOSE TechnicianCursor -- cursor � kapatt�k
DEALLOCATE TechnicianCursor -- buraya ayr�lan haf�zay� temizler

--SELECT*FROM ATMTechnician21