Create Database pwnDB

use pwnDB

Create Table Employees 
(
	Id int identity primary key,
	Name nvarchar(100) Not Null,
	SurName nvarchar(100) Not Null,
	Position nvarchar(50) Not Null,
	Salary tinyint Not Null,
)

Insert Into Employees(Name,SurName,Position,Salary)
Values
('Eli',N'Kazımov','CMO',210),
('Aqil','Huseynov','CFO',220),
('Murad','Quliyev','CTO',230),
('Samir','Aliyev','COO',240)

Select Min(Salary) From Employees

Select Max(Salary) From Employees

Select Avg(Salary) From Employees

Select Name,Surname,Salary From Employees Where Salary > (Select Avg(Salary) from Employees)

-- end

-- Task 2

Create Database Market

use Market

Create Table Products
(
	Id int identity primary key,
	Name nvarchar(100) NOT NULL,
	Price decimal (22,2) NOT NULL,
)

Alter Table Products Add Brand nvarchar(100)

Insert Into Products(Name,Price,Brand)
Values
('Watch',334.99,'Bape'),
('Watch',445.99,'Bape'),
('Hoodie',80,'Bape'),
('T-Shirt',95,'Bape'),
('HACKRF-ONE',330.99,'HAK5'),
('Flipper-Zero',165.99,'HAK5'),
('MSRX6',110.22,'HAK5'),
('T-Shirt',95,'Lacoste'),
('Shoes',334.99,'Lacoste'),
('Watch Random',445.99,'Lacoste'),
('Hoodie Random',80,'Lacoste'),
('T-Shirt',95,'Bape'),
('Watch',334.99,'Bape'),
('Watch',445.99,'Bape'),
('Hoodie',80,'Bape'),
('T-Shirt',95,'Bape')

Select * From Products Where Price < (Select Avg(Price) from Products)

Select Price From Products Where Price > 10

Select Brand from Products where LEN(Brand) > 5

Select Brand,Name, From Products;

Alter Table Products DROP COLUMN ProductInfo;

Select (p.Brand+' '+p.Name) as 'ProductInfo' from Products p

-- task 3

Create Database Company

use Company

Create Table Employees
(
	Id int identity primary key,
	FullName nvarchar(100) Not Null Check(Len(FullName)=3),
	Salary tinyint Not Null Check(Salary > 0),
	Email nvarchar(100) Not Null Unique 
)

Alter Table Employees Add DepartmentsId int Not Null Foreign Key References Departments(Id)

Create Table Departments
(
	Id int identity primary key,
	Name nvarchar(100) Not Null Check(Len(Name)=3)
)








