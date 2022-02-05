
Drop Table IF Exists Teacher
Create table Teacher
(
	TeacherID INT PRIMARY KEY IDENTITY,
	TName VARCHAR(50),
	FatherName VARCHAR(50),
	Subject VARCHAR(50),
	JoiningDate Date,
	DOB Date,
	Email VARCHAR(100),
	Mobile VARCHAR(50),
	Address VARCHAR (100),
	Image VARCHAR (100)	
)
Go
Insert into Teacher (Name,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Amin','Uddin','English','06/01/2010','01/01/1990','amin@gmail.com','017845416','Rangpur','ImageLocation')
Insert into Teacher (Name,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('kamal','Islam','Bangla','06/02/2011','01/01/1991','kamal@gmail.com','01784544','Chittagon','ImageLocation')
Insert into Teacher (Name,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Arif','Uddin','Science','06/01/2010','01/01/1990','amin@gmail.com','017845444','Barishal','ImageLocation')
Insert into Teacher (Name,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Iqbal','Mia','Math','06/02/2011','01/01/1991','kamal@gmail.com','01784555','BashKali','ImageLocation')
Go
Select * From Teacher
UPDATE Teacher SET Name='Iqram' Where TeacherID=4
DELETE Teacher Where TeacherID=4
Select *From Teacher



Drop Table IF Exists Classess
Create table Classess
(
	ClassId INT PRIMARY KEY IDENTITY,
	Name VARCHAR(30),
	SeatCapacity int,
	Section VARCHAR(10),
	TeacherID int FOREIGN KEY REFERENCES Teacher(TeacherID) ON DELETE CASCADE ON UPDATE CASCADE,
	RoomNo int
	
)
Go
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('One',25,'A',1,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Two',25,'B',2,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Three',25,'A',3,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Four',25,'B',3,310)
Go
Select * From Classess
Go
UPDATE Classess SET Name='Five' Where ClassId=4
DELETE Classess Where ClassId=4
Select *From Classess

Drop Table IF Exists Parent
Create table Parent
(
	ParentID INT PRIMARY KEY IDENTITY(1010,1),
	Name VARCHAR(50),
	NID int Unique,
	Phone VARCHAR(50),
	Email VARCHAR(50),
	Occupation VARCHAR(100),
	Income int,
	Address VARCHAR (100)	
)
Go
insert into Parent (Name,NID,Phone,Email,Occupation,Income,Address)Values('Arosh',777777,'014146413','arosh@gmail.com','Teacher',50000,'Rangpur')
insert into Parent (Name,NID,Phone,Email,Occupation,Income,Address)Values('Prodhan',55555,'014146413','prodhan@gmail.com','Student',40000,'Khulna')
insert into Parent (Name,NID,Phone,Email,Occupation,Income,Address)Values('Muttakin',66666,'014146413','Muttakin@gmail.com','Job holder',60000,'Chittagon')
insert into Parent (Name,NID,Phone,Email,Occupation,Income,Address)Values('Romesh',88888,'014146413','Muttakin@gmail.com','Job holder',70000,'Vola')
select * from Parent

UPDATE Parent SET Name='Vobesh' Where ParentID=1011
DELETE Parent Where ParentID=1011
Select *From Parent

--CREATE PROC sp_TeacherandStudentUpdate 
--	@TeacherID INT,
--	@Name VARCHAR(30),
--	@FatherName VARCHAR(30),
--	@Subject VARCHAR(10),
--	@JoiningDate VARCHAR(20),
--	@DOB VARCHAR(100),
--	@Email VARCHAR(20),
--	@Mobile VARCHAR(20),
--	@Address VARCHAR (100),
--	@Image VARCHAR (100)


Drop Table IF Exists Student
Create table Student
(
	StudentID INT PRIMARY KEY IDENTITY,
	firstName VARCHAR(30),
	lastName VARCHAR(30),
	Gender VARCHAR(10),
	DOB Date,
	ClassID int FOREIGN KEY REFERENCES Classess(ClassId) ON DELETE CASCADE ON UPDATE CASCADE,
	Shift VARCHAR(20),
	ParentsNID int FOREIGN KEY REFERENCES Parent(NID) ON DELETE CASCADE ON UPDATE CASCADE,
	Division VARCHAR(100),
	District VARCHAR(100),
	Upazila VARCHAR(100),
	Unions VarChar(100),
	Village VARCHAR(100),
	Image VARCHAR (100)	
)
Go
insert into Student(firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Arosh','Prodhan','Male','08/01/1996',1,'Morning',777777,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Rahim','Uddin','Male','07/01/1996',2,'Day',88888,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Zainuddin','Mia','Male','07/01/1996',3,'Morning',66666,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Mojnu','Mia','Male','07/01/1996',3,'Morning',66666,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
Select *From Student
Go

UPDATE Student SET firstName='Md Arosh' Where StudentID=3
DELETE Student Where StudentID=4
Select *From Student
SELECT firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image,Name FROM [Student] Inner Join Classess On Student.ClassID=Classess.ClassId

