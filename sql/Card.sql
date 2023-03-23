create table Card(
CardNo int not null primary key,
CardBalance money not null,
CardCVV tinyint not null,
CardBankName nvarchar(50) not null,
CardType nvarchar(50) not null,
CardExpiryDate date not null)