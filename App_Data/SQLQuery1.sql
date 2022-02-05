SELECT Student.firstName,lastName,Gender,DOB,Student.ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image,Name FROM [Student] Inner Join Classess On Student.ClassID=Classess.ClassId
SELECT Classess.Name,SeatCapacity,Section,TeacherID,RoomNo,Teacher.TName FROM Classess Inner Join Teacher On Classess.ClassID=Teacher.ClassId
