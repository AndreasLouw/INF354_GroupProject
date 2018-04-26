CREATE DATABASE INF354

USE INF354
GO

CREATE TABLE tblFurnitureType (
  id int NOT NULL PRIMARY KEY,
  Type varchar(255) NOT NULL
) 

CREATE TABLE tblTitle (
  id int NOT NULL PRIMARY KEY,
  Title varchar(3) NOT NULL
) 

CREATE TABLE tblClient (
  id int NOT NULL PRIMARY KEY,
  Name varchar(100) NOT NULL,
  Lastname varchar(100) NOT NULL,
  email varchar(255) NOT NULL,
  titleID int NOT NULL FOREIGN KEY REFERENCES tblTitle(id)
)

CREATE TABLE tblFurniture (
  id int NOT NULL PRIMARY KEY,
  Name varchar(255) NOT NULL,
  typeID int NOT NULL FOREIGN KEY REFERENCES tblFurnitureType(id)
)

CREATE TABLE tblClientFurniture (
  clientId int NOT NULL FOREIGN KEY REFERENCES tblClient(id),
  furnitureId int NOT NULL FOREIGN KEY REFERENCES tblFurniture(id),
  date date NOT NULL
)
GO



