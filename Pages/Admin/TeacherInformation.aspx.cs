using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SchoolProjectArosh.Models;

namespace SchoolProjectArosh.Pages.Admin
{
    public partial class TeacherInformation : System.Web.UI.Page
    {
        MyLINQtoSQLTeacherDataContext dataContext;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        //{


        //    //if (e.CommandName == "Insert")

        //    using (dataContext = new MyLINQtoSQLTeacherDataContext())
        //    {

        //        ListViewItem item = (ListViewItem)e.Item;
        //        var img = item.FindControl("FileUploadImage1") as FileUpload;

        //        string fileName = Path.GetFileName(img.PostedFile.FileName);
        //        img.SaveAs(Server.MapPath("~/Images/" + fileName));
        //        string link = "~/Images/" + fileName;


        //        string tName = (item.FindControl("TNameTexTBox") as TextBox).Text;
        //        string fatherName = (item.FindControl("FatherNameTextBox") as TextBox).Text;
        //        // var Subject = (item.FindControl("SubjectTextBox") as TextBox).Text;
        //        var Subject = (item.FindControl("ddlSubject1") as DropDownList).SelectedValue;
        //        string JDate = (item.FindControl("JoiningDateTextBox") as TextBox).Text;
        //        string dob = (item.FindControl("DOBTextBox") as TextBox).Text;
        //        string email = (item.FindControl("EmailTextBox") as TextBox).Text;
        //        string mobile = (item.FindControl("MobileTextBox") as TextBox).Text;
        //        string address = (item.FindControl("AddressTextBox") as TextBox).Text;


        //        Teacher t = new Teacher()
        //        {

        //            TName = tName,
        //            FatherName = fatherName,
        //            Subject = Subject,
        //            JoiningDate = Convert.ToDateTime(JDate),
        //            DOB = Convert.ToDateTime(dob),
        //            Email = email,
        //            Mobile = mobile,
        //            Address = address,
        //            Image = "~/Images/" + fileName
        //        };
        //        dataContext.Teachers.InsertOnSubmit(t);
        //        dataContext.SubmitChanges();
        //        ListView1.DataBind();
        //        //string quiry = "Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values()";



        //    }

        //}

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                using (dataContext = new MyLINQtoSQLTeacherDataContext())
                {

                    ListViewItem item = (ListViewItem)e.Item;
                    var img = item.FindControl("FileUploadImage1") as FileUpload;

                    string fileName = Path.GetFileName(img.PostedFile.FileName);
                    img.SaveAs(Server.MapPath("~/Images/" + fileName));
                    string link = "~/Images/" + fileName;


                    string tName = (item.FindControl("TNameTexTBox") as TextBox).Text;
                    string fatherName = (item.FindControl("FatherNameTextBox") as TextBox).Text;
                    // var Subject = (item.FindControl("SubjectTextBox") as TextBox).Text;
                    var Subject = (item.FindControl("ddlSubject1") as DropDownList).SelectedValue;
                    string JDate = (item.FindControl("JoiningDateTextBox") as TextBox).Text;
                    string dob = (item.FindControl("DOBTextBox") as TextBox).Text;
                    string email = (item.FindControl("EmailTextBox") as TextBox).Text;
                    string mobile = (item.FindControl("MobileTextBox") as TextBox).Text;
                    string address = (item.FindControl("AddressTextBox") as TextBox).Text;


                    Teacher t = new Teacher()
                    {

                        TName = tName,
                        FatherName = fatherName,
                        Subject = Subject,
                        JoiningDate = Convert.ToDateTime(JDate),
                        DOB = Convert.ToDateTime(dob),
                        Email = email,
                        Mobile = mobile,
                        Address = address,
                        Image = "~/Images/" + fileName
                    };
                    dataContext.Teachers.InsertOnSubmit(t);
                    dataContext.SubmitChanges();
                    ListView1.DataBind();
                    //string quiry = "Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values()";


                }
            }
        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            //using (dataContext = new MyLINQtoSQLTeacherDataContext())
            //{

            //   // ListViewItem item = ListView1.Items[9];
            //    string img =((FileUpload) ListView1.FindControl("FileUploadImage1")).;

            //    string fileName = Path.GetFileName(img.PostedFile.FileName);
            //    img.SaveAs(Server.MapPath("~/Images/" + fileName));
            //    string link = "~/Images/" + fileName;


            //    string tName = (ListView1.FindControl("TNameTexTBox") as TextBox).Text;
            //    string fatherName = (ListView1.FindControl("FatherNameTextBox") as TextBox).Text;
            //    // var Subject = (item.FindControl("SubjectTextBox") as TextBox).Text;
            //    var Subject = (ListView1.FindControl("ddlSubject1") as DropDownList).SelectedValue;
            //    string JDate = (ListView1.FindControl("JoiningDateTextBox") as TextBox).Text;
            //    string dob = (ListView1.FindControl("DOBTextBox") as TextBox).Text;
            //    string email = (ListView1.FindControl("EmailTextBox") as TextBox).Text;
            //    string mobile = (ListView1.FindControl("MobileTextBox") as TextBox).Text;
            //    string address = (ListView1.FindControl("AddressTextBox") as TextBox).Text;


            //    Teacher t = new Teacher()
            //    {

            //        TName = tName,
            //        FatherName = fatherName,
            //        Subject = Subject,
            //        JoiningDate = Convert.ToDateTime(JDate),
            //        DOB = Convert.ToDateTime(dob),
            //        Email = email,
            //        Mobile = mobile,
            //        Address = address,
            //        Image = "~/Images/" + fileName
            //    };
            //    dataContext.Teachers.InsertOnSubmit(t);
            //    dataContext.SubmitChanges();
            //    ListView1.DataBind();
            //    //string quiry = "Insert into Teacher (TName,FatherName,Subject,JoiningDate,DOB,Email,Mobile,Address,Image) Values()";



        }

    }
}
