using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SchoolProjectArosh.Models
{
    public class Classess
    {
        public int ClassId { get; set; }
        public string Name { get; set; }
        public string SeatCapacity { get; set; }
        public string Section { get; set; }
        public int TeacherID { get; set; }
        //public string TName { get; set; }
        public string RoomNo { get; set; }

    }

    [DataObject(true)]
    public class Classess_Dal
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        [DataObjectMethod(DataObjectMethodType.Select)]
        public DataSet GetClasses()
        {

            SqlConnection sqlcon = new SqlConnection(cs);
            string query = "  SELECT Classess.ClassId,Classess.Name,SeatCapacity,Section,Classess.TeacherID,RoomNo,Teacher.TName FROM Classess Inner Join Teacher On Classess.TeacherID = Teacher.TeacherID";

           // string query = "SELECT Classess.ClassId,Classess.Name,SeatCapacity,Section,Teacher.TName,RoomNo FROM Classess Inner Join Teacher On Classess.TeacherID=Teacher.TeacherID";
           //string query = "SELECT * FROM Classess";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            sqlcmd.Connection = sqlcon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }




        public static string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public static SqlConnection con;
        public static SqlCommand cmd;
        // for assisting the object datasource configuration

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static int InsertClass(string name, string seatCapacity, string section, int teacherID, string roomNo)
        {

            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("INSERT INTO Classess (Name,SeatCapacity,Section,TeacherID,RoomNo) VALUES (@name,@seatCapacity,@section,@teacherID,@roomNo)", con);
                cmd.Parameters.AddWithValue("name", name);
                cmd.Parameters.AddWithValue("seatCapacity", seatCapacity);
                cmd.Parameters.AddWithValue("section", section);
                cmd.Parameters.AddWithValue("teacherID", teacherID);
                cmd.Parameters.AddWithValue("roomNo", roomNo);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public static int UpdateClassess(int classId, string name, string seatCapacity, string section, int teacherID, string roomNo)
        {
            using (con = new SqlConnection(conString))
            {

                cmd = new SqlCommand("UPDATE Classess SET Name=@name,SeatCapacity=@seatCapacity,Section=@section,TeacherID=@teacherID,RoomNo=@roomNo Where ClassId=@classId", con);
                cmd.Parameters.AddWithValue("classId", classId);
                cmd.Parameters.AddWithValue("name", name);
                cmd.Parameters.AddWithValue("seatCapacity", seatCapacity);
                cmd.Parameters.AddWithValue("section", section);
                cmd.Parameters.AddWithValue("teacherID", teacherID);
                cmd.Parameters.AddWithValue("roomNo", roomNo);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static int DeleteClasses(int classId)
        {
            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("DELETE FROM Classess WHERE ClassId = @classId", con);
                cmd.Parameters.AddWithValue("classId", classId);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }




    }
}