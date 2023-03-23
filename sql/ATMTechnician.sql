create table ATMTechnician3(
T_ID int not null IDENTITY(1,1),
T_Name nvarchar(50) not null,
T_Address nvarchar(50) not null,
T_Phone int not null,
constraint Pkey_4 primary key(T_ID,T_Phone))


INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Mehmet Çýnar','Menekþe sokak Çiçek mah.','054785132')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Buðra Budak','FuarYolu sokak Okyanus apt.','054784521')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Samet Nadir','Ayna sokak Polat mah.','054781230')
INSERT INTO ATMTechnician3(T_Name,T_Address,T_Phone)
VALUES('Sude Atlý','Dal sokak Ömür apt.','054789651')


--USE GülseBank
DECLARE @T_Name nvarchar(max) , @T_Address nvarchar(max)
DECLARE TechnicianCursor CURSOR FOR 
SELECT T_Name,T_Address FROM ATMTechnician3
OPEN TechnicianCursor
FETCH NEXT FROM TechnicianCursor INTO @T_Name,@T_Address -- Sýradaki veri yakalanýyor ve hafýzaya alýnýyor. O anki veri 'PersonelCursor' tarafýndan temsil ediliyor ve kolon deðerleri ilgili deðiþkenlere sýralý bir þekilde atanýyor.

WHILE @@FETCH_STATUS = 0 
BEGIN
PRINT @T_Name+ '  '+@T_Address
FETCH NEXT FROM TechnicianCursor INTO  @T_Name,@T_Address
END
CLOSE TechnicianCursor -- cursor ý kapattýk
DEALLOCATE TechnicianCursor -- buraya ayrýlan hafýzayý temizler

--SELECT*FROM ATMTechnician21