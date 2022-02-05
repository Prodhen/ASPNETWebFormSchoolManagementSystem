using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;
using System.Net;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace SchoolProjectArosh.Pages.Student
{
    public partial class StudentInformation : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!IsPostBack)
            {
                ddlDistrict.Items.Insert(0, new ListItem("Select District", "0"));
                ddlUazila.Items.Insert(0, new ListItem("Select Upazila", "0"));

                ddlDistrict.Enabled = false;
                ddlUazila.Enabled = false;
                calAdmissionDate.Visible = false;
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string checkboxlist = "";
            for (int i = 0; i < cblHobies.Items.Count; i++)
            {
                if (cblHobies.Items[i].Selected)
                {
                    if (checkboxlist == "")
                    {
                        checkboxlist = cblHobies.Items[i].Text;

                    }
                    else
                    {
                        checkboxlist += "," + cblHobies.Items[i].Text;
                    }
                }

            }

            if (txtfirstName != null)
            {
                using (con = new SqlConnection(cs))
                {
                    string fileName = Path.GetFileName(FileUploadPicture.PostedFile.FileName);
                    FileUploadPicture.SaveAs(Server.MapPath("~/Images/" + fileName));

                    string quirey = "insert into Student Values('"+txtfirstName.Text+"','"+txtlastName.Text+"','"+checkboxlist+"','"+txtEmail.Text+"','"+txtMobile.Text+"','"+rblGender.SelectedValue+"','"+txtDOB.Text+"','"+Convert.ToDateTime(txtAdmissionDate.Text).ToString("yyyy-MM-dd")+"','"+ddlClass.Text+"', '"+ddlShift.SelectedValue+"', '"+ddlParentNID.SelectedValue+"', '"+ddlDivision.SelectedItem.Text+"', '"+ddlDistrict.SelectedItem.Text+"', '"+ddlUazila.SelectedItem.Text+"','"+txtUnion.Text+"','"+txtVillage.Text+"', '"+ "~/Images/" + fileName + "')";

                    cmd = new SqlCommand(quirey, con);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    SendToStudent();
                    SendToAdmin();
                    GridView1.DataBind();
                    ShowAlert("We have sent you Conformation Email Please Chack Your Email");


                }
            }
            ControlClear();
            DetailsView1.Visible = false;

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string checkboxlist = "";
            for (int i = 0; i < cblHobies.Items.Count; i++)
            {
                if (cblHobies.Items[i].Selected)
                {
                    if (checkboxlist == "")
                    {
                        checkboxlist = cblHobies.Items[i].Text;

                    }
                    else
                    {
                        checkboxlist += "," + cblHobies.Items[i].Text;
                    }
                }

            }

            string fileName = Path.GetFileName(FileUploadPicture.PostedFile.FileName);
            FileUploadPicture.SaveAs(Server.MapPath("~/Images/" + fileName));
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand();
                con.Open();
                cmd.CommandText = "UPDATE Student SET firstName=@firstName,lastName=@lastName,Hobies=@Hobies,Email=@Email,Mobile=@Mobile,Gender=@Gender,DOB=@DOB,AdmissionDate=@AdmissionDate,ClassID=@ClassID,Shift=@Shift,ParentsNID=@ParentsNID,Division=@Division,District=@District,Upazila=@Upazila,Unions=@Unions,Village=@Village,Image=@Image Where StudentID=@StudentID";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@StudentID",lblStudentID.Text);
                cmd.Parameters.AddWithValue("@firstName", txtfirstName.Text);
                cmd.Parameters.AddWithValue("@lastName", txtlastName.Text);
                cmd.Parameters.AddWithValue("@Hobies", checkboxlist);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@AdmissionDate", Convert.ToDateTime(txtAdmissionDate.Text).ToString("yyyy-MM-dd"));
                cmd.Parameters.AddWithValue("@ClassID", ddlClass.Text);
                cmd.Parameters.AddWithValue("@Shift", ddlShift.SelectedValue);
                cmd.Parameters.AddWithValue("@ParentsNID", ddlParentNID.SelectedValue);
                cmd.Parameters.AddWithValue("@Division", ddlDivision.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@District", ddlDistrict.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Upazila", ddlUazila.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Unions", txtUnion.Text);
                cmd.Parameters.AddWithValue("@Village", txtVillage.Text);
                cmd.Parameters.AddWithValue("@Image", "~/Images/" + fileName);
               
                cmd.ExecuteNonQuery();

                con.Close();

                GridView1.DataBind();

            }
            ControlClear();
            btnSave.Visible = true;
            btnDelete.Visible = false;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {

                int sid = Convert.ToInt32(lblStudentID.Text);
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_DeleteStudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudnetID", sid);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();

            }
            ControlClear();
            btnSave.Visible = true;
            btnDelete.Visible = false;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ControlClear();          
            btnSave.Visible = true;
            btnDelete.Visible = false;
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            GridView1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            calAdmissionDate.Visible = true;

        }

        protected void calAdmissionDate_SelectionChanged(object sender, EventArgs e)
        {
            txtAdmissionDate.Text = calAdmissionDate.SelectedDate.ToString("d");
            calAdmissionDate.Visible = false;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public string GetName(int classId)
        {

            using (con=new SqlConnection(cs))
            {
                string quiry = "Select Name FROM Classess Where ClassId=classId";
                cmd = new SqlCommand(quiry,con);
                con.Open();
          
                //cmd.Connection = con;
                
               // cmd.ExecuteReader();
                return Convert.ToString( cmd.ExecuteReader());

            }
              
        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(cs);
            string quiry="Select * From Classess Where ClassId='"+ddlClass.SelectedValue+"'";
            cmd = new SqlCommand(quiry, connection);
            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dataTable = new DataTable();
            da.Fill(dataTable);
            DetailsView1.DataSource = dataTable;
            DetailsView1.DataBind();
        }

        protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDivision.SelectedIndex == 0)
            {

                ddlDistrict.SelectedIndex = 0;
                ddlDistrict.Enabled = false;

            }
            else
            {
                ddlDistrict.Enabled = true;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    //int ddlDivisionId = Convert.ToInt32(ddlDivision.SelectedValue);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select DistrictID,DisName From District Where DivisionID='" + ddlDivision.SelectedItem.Value + "'", con);
                    ddlDistrict.DataSource = cmd.ExecuteReader();
                    ddlDistrict.DataBind();
                    //ddlDistrict.DataTextField = "DisName";
                    //ddlDistrict.DataValueField = "DistrictID";
                    ddlDistrict.Items.Insert(0, new ListItem("Select District", "0"));
                    ddlDistrict.SelectedIndex = 0;
                    ddlUazila.SelectedIndex = 0;
                    ddlUazila.Enabled = false;

                }

            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDistrict.SelectedIndex == 0)
            {
                //DropDownList3.SelectedIndex = 0;
                //DropDownList3.Enabled = true;

            }
            else
            {
                ddlUazila.Enabled = true;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select UpazilaID,UName From Upazila Where DistrictID='" +Convert.ToInt32(ddlDistrict.SelectedValue) + "'", con);
                    ddlUazila.DataSource = cmd.ExecuteReader();
                    ddlUazila.DataBind();
                    ddlUazila.Items.Insert(0, new ListItem("Select Upazila", "0"));
                }

            }

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lblStudentID.Text = GridView1.SelectedRow.Cells[1].Text;

            txtfirstName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtlastName.Text = GridView1.SelectedRow.Cells[3].Text;
            //cblHobies.Text = GridView1.SelectedRow.Cells[4].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[5].Text;
            txtMobile.Text = GridView1.SelectedRow.Cells[6].Text;
            rblGender.Text = GridView1.SelectedRow.Cells[7].Text;
            txtDOB.Text = GridView1.SelectedRow.Cells[8].Text;
            //txtAdmissionDate.Text = GridView1.SelectedRow.Cells[9].Text;
            //ddlClass.Text = GridView1.SelectedRow.Cells[10].Text;
            //ddlShift.Text = GridView1.SelectedRow.Cells[11].Text;
            ddlParentNID.Text = GridView1.SelectedRow.Cells[12].Text;
            //ddlDivision.Text= GridView1.SelectedRow.Cells[13].Text;
            //ddlDistrict.Text= GridView1.SelectedRow.Cells[14].Text;
            //ddlUazila.Text= GridView1.SelectedRow.Cells[15].Text;
            txtUnion.Text = GridView1.SelectedRow.Cells[16].Text;
            txtVillage.Text = GridView1.SelectedRow.Cells[17].Text;








            btnDelete.Visible = true;
            btnUpdate.Visible = true;
            btnCancel.Visible = true;
            btnSave.Visible = false;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs e)
        {
            if (e.Value.Length == 11)
                e.IsValid = true;
            else
                e.IsValid = false;
        }


        private void SendToStudent()
        {
            var fromAddress = "aroshprodhanisdb@gmail.com";
            const string fromPassword ="aroshprodhanisdb1234@";
            var toAddress = txtEmail.Text.ToString();
            string subject = "Confirmation of Registration";
            string body="Dear"+txtfirstName.Text+""+"\n";
            body += "Thank you for your Registration for Admission"+"\n";
            body += "We have Received Your Registration"+"\n";
            body += "If you face problem please contact to "+ fromAddress + "" + "\n";
            body += "Thanks" + "\n";
            body += "Forward Thinking School and Collage" + "\n";

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);

            smtp.Timeout = 20000;
            smtp.Send(fromAddress,toAddress,subject,body);

        }


        private void SendToAdmin()
        {
            var fromAddress = "aroshprodhanisdb@gmail.com";
            const string fromPassword = "aroshprodhanisdb1234@";
            var toAddress = "aroshprodhanisdb@gmail.com";
            string subject = "Confirmation of Registration";
            string body = "Dear Admin" + "\n";
            body += "Mr"+txtfirstName+" Wants to Admit" + "\n";
            body += "Please Check his/her Information and Confirm his Admission\n";
            body += "Thanks" + "\n";
            body += "Forward Thinking School and Collage" + "\n";

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);

            smtp.Timeout = 20000;
            smtp.Send(fromAddress, toAddress, subject, body);

        }
        private void ControlClear()
        {
            lblStudentID.Text =  "";
            lblStudentID.Text = "";
            txtfirstName.Text = "";
            txtlastName.Text = "";
            cblHobies.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtConfirmMobile.Text = "";
            rblGender.Text = "";
            txtDOB.Text = "";
            txtAdmissionDate.Text = "";
            //ddlClass.Text = "";
            ddlShift.Text = "";
            //ddlParentNID.Text = "";
            ddlDivision.SelectedItem.Text = "";
            ddlDistrict.SelectedItem.Text = "";
            ddlUazila.SelectedItem.Text = "";
            txtUnion.Text = "";
            txtVillage.Text = "";
        }

        private void ShowAlert(string msg)
        {
            string str;
            str = "<script language='javascript' type='text/javascript'> alert(' " + msg + " ');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str);

        }

       
    }
}