﻿SELECT Classess.Name,SeatCapacity,Section,Classess.TeacherID,RoomNo,Teacher.TName FROM Classess Inner Join Teacher On Classess.ClassId=Teacher.TeacherID