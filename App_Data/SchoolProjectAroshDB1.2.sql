
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
Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Amin','Uddin','English','06/01/2010','01/01/1990','amin@gmail.com','017845416','Rangpur','ImageLocation')
Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('kamal','Islam','Bangla','06/02/2011','01/01/1991','kamal@gmail.com','01784544','Chittagon','ImageLocation')
Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Arif','Uddin','Science','06/01/2010','01/01/1990','amin@gmail.com','017845444','Barishal','ImageLocation')
Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values('Iqbal','Mia','Math','06/02/2011','01/01/1991','kamal@gmail.com','01784555','BashKali','ImageLocation')
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
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('One',25,'A',44,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Two',25,'B',45,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Three',25,'A',46,250)
Insert into Classess (Name,SeatCapacity,Section,TeacherID,RoomNo)Values('Four',25,'B',45,310)
Go
Select * From Classess
Go
UPDATE Classess SET Name='Five' Where ClassId=4
DELETE Classess Where ClassId=4
Select *From Classess
SELECT Classess.ClassId,Classess.Name,SeatCapacity,Section,Classess.TeacherID,RoomNo,Teacher.TName FROM Classess Inner Join Teacher On Classess.TeacherID=Teacher.TeacherID
SELECT Classess.ClassId,Classess.Name,SeatCapacity,Section,Teacher.TName,RoomNo FROM Classess Inner Join Teacher On Classess.TeacherID=Teacher.TeacherID



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
	Hobies   VARCHAR(100),
	Email VarChar (100),
	Gender VARCHAR(10),
	DOB Date,
	AdmissionDate Date         NULL,
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
insert into Student(firstName,lastName,Gender,DOB,AdmissionDate,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Arosh','Prodhan','Male','08/01/1996','06/01/1990',22,'Morning',777777,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,AdmissionDate,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Rahim','Uddin','Male','07/01/1996','06/01/1990',23,'Day',454544,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,AdmissionDate,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Zainuddin','Mia','Male','07/01/1996','06/01/1990',24,'Morning',45,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,AdmissionDate,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Mojnu','Mia','Male','07/01/1996','06/01/1990',25,'Morning',77777841,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
insert into Student(firstName,lastName,Gender,DOB,AdmissionDate,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image)Values('Mojnu','Mia','Male','07/01/1996','06/01/1990',25,'Morning',77777841,'Chittagon','Chittagon','Bayezid','Wazediya','Oxygen','ImagePath')
Select *From Student
Go
SELECT Student.firstName,lastName,Gender,DOB,Student.ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image,Name FROM [Student] Inner Join Classess On Student.ClassID=Classess.ClassId
if exists (select * from sys.objects where name = 'SP_DeleteStudent') drop proc SP_DeleteStudent
go
Create Proc SP_DeleteStudent
@StudnetID INT
As
Set NoCount On
Begin
DELETE FROM Student WHERE StudentID=@StudnetID
End
Go
Exec SP_DeleteStudent @StudnetID=29

UPDATE Student SET firstName='Md Arosh' Where StudentID=3
DELETE Student Where StudentID=4
Select *From Student
SELECT firstName,lastName,Gender,DOB,ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image,Name FROM [Student] Inner Join Classess On Student.ClassID=Classess.ClassId
Drop Table IF Exists [Division]
CREATE TABLE [Division] (
    [DivisionID] INT          IDENTITY (0, 1) NOT NULL,
    [DName]      VARCHAR (50) NOT NULL Unique,
    PRIMARY KEY CLUSTERED ([DivisionID] ASC) 
);
Drop Table IF Exists [District]
CREATE TABLE [District] (
    [DistrictID] INT          IDENTITY (1, 1) NOT NULL,
    [DisName]    VARCHAR (50) NULL,
    [DivisionID] INT          NULL,
    PRIMARY KEY CLUSTERED ([DistrictID] ASC),
    FOREIGN KEY ([DivisionID]) REFERENCES [Division] ([DivisionID]) ON Delete Cascade On Update Cascade
);

Drop Table IF Exists [Upazila]
CREATE TABLE [Upazila] (
    [UpazilaID]  INT          IDENTITY (1, 1) NOT NULL,
    [UName]      VARCHAR (50) NOT NULL,
    [DistrictID] INT          NULL,
    PRIMARY KEY CLUSTERED ([UpazilaID] ASC),
    FOREIGN KEY ([DistrictID]) REFERENCES [District] ([DistrictID]) ON Delete Cascade On Update Cascade
);
Insert Into Division Values('--Select Division--'),('Chattagram'),('Rajshahi'),('Khulna'),('Barishal'),('Sylhet'),('Dhaka'),('Rangpur'),('Mymensingh');

Select * From Division

Insert Into [District] Values
('Comilla',1),
('Feni',1),
('Brahmanbaria', 1),
('Rangamati', 1),
('Noakhali',1),
('Chandpur', 1),
('Lakshmipur', 1),
('Chattogram', 1),
('Coxsbazar',1),
('Khagrachhari',1),
('Bandarban',1),
('Sirajganj', 2),
('Pabna', 2),
('Bogura', 2),
('Rajshahi',2),
('Natore', 2),
('Joypurhat', 2),
('Chapainawabganj',2),
('Naogaon',2),
('Jashore',3),
('Satkhira',3),
('Meherpur',3),
('Narail',3),
('Chuadanga',3),
('Kushtia',3),
('Magura',3),
('Khulna',3),
('Bagerhat',3),
('Jhenaidah',3),
('Jhalakathi',4),
('Patuakhali',4),
('Pirojpur',4),
('Barisal',4),
('Bhola',4),
('Barguna',4),
('Sylhet',5),
('Moulvibazar',5),
('Habiganj',5),
('Sunamganj',5),
('Narsingdi', 6),
('Gazipur', 6),
('Shariatpur', 6),
('Narayanganj',6),
('Tangail', 6),
('Kishoreganj', 6),
('Manikganj', 6),
('Dhaka', 6),
('Munshiganj',6),
('Rajbari', 6),
('Madaripur', 6),
('Gopalganj', 6),
('Faridpur', 6),
('Panchagarh', 7),
('Dinajpur', 7),
('Lalmonirhat',7),
('Nilphamari',7),
('Gaibandha',7),
('Thakurgaon', 7),
('Rangpur', 7),
('Kurigram',7),
('Sherpur', 8),
('Mymensingh',8),
('Jamalpur', 8),
('Netrokona', 8);
Select * From District
Insert into Upazila (DistrictID,UName) Values
(1, 'Debidwar'),
(1, 'Barura'),
(1, 'Brahmanpara'),
(1, 'Chandina'),
(1, 'Chauddagram'),
(1, 'Daudkandi'),
(1, 'Homna'),
(1, 'Laksam'),
(1, 'Muradnagar'),
(1, 'Nangalkot'),
(1, 'Comilla Sadar'),
(1, 'Meghna'),
(1, 'Monohargonj'),
(1, 'Sadarsouth'),
(1, 'Titas'),
(1, 'Burichang'),
(1, 'Lalmai'),
(2, 'Chhagalnaiya'),
(2, 'Feni Sadar'),

(8, 'Rangunia'),
(8, 'Sitakunda'),
(8, 'Mirsharai'),
(8, 'Patiya'),
(8, 'Sandwip'),
(8, 'Banshkhali'),
(8, 'Boalkhali'),
(8, 'Anwara'),
(8, 'Chandanaish'),
(8, 'Satkania'),
(8, 'Lohagara'),
(8, 'Hathazari'),
(8, 'Fatikchhari'),
(8, 'Raozan'),
(8, 'Karnafuli'),
(8, 'Bayazid Bostami'),
(9, 'Coxsbazar Sadar'),

( 59, 'Rangpur Sadar'),
( 59, 'Gangachara'),
( 59, 'Taragonj'),
( 59, 'Badargonj'),
( 59, 'Mithapukur'),
( 59, 'Pirgonj'),
( 59, 'Kaunia'),
( 59, 'Pirgacha'),
( 60, 'Kurigram Sadar'),
( 60, 'Nageshwari'),
( 60, 'Bhurungamari'),
( 60, 'Phulbari'),
( 60, 'Rajarhat'),
( 60, 'Ulipur'),
( 60, 'Chilmari'),
( 60, 'Rowmari'),
( 60, 'Charrajibpur');

Select * From Upazila
