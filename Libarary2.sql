CREATE DATABASE [library2]

USE [library2]
CREATE TABLE Authors(
	Id int PRIMARY KEY IDENTITY,
	[Name] nvarchar(25) NOT NULL,
	Surname nvarchar(25),
)

USE [library2]
CREATE TABLE Books(
	Id int PRIMARY KEY IDENTITY,
	[Name] nvarchar(100) CHECK(LEN([Name])>=2) NOT NULL,
	AuthorId int FOREIGN KEY REFERENCES Authors(Id),
	[PageCount] smallint CHECK([PageCount]>=10) NOT NULL,
)

USE [library2]
Insert into [Books] ( [Name],AuthorId,[PageCount])
values ('Azerbaijan history',15,255)