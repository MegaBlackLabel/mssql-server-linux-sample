CREATE DATABASE testdb;
go

use testdb;
go

DROP TABLE IF EXISTS members;
GO

CREATE TABLE members(
    id int identity(1,1) primary key,
    name nvarchar(32),
    birthday datetime
);
GO

BULK INSERT members
FROM '/usr/src/docker/backup/dbo.members.csv'
WITH
(
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '\n'
);
GO