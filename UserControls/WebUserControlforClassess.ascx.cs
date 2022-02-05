using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SchoolProjectArosh.UserControls
{
    public partial class WebUserControlforClassess : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
         
                lblTime.Text="Time:"+DateTime.Now.ToString();
          
            if (IsPostBack)
            {
                lbltime2.Text = "Time:" + DateTime.Now.ToString();
                FormView1.Visible = true;

            }
        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            ObjectDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtName")).Text;
            ObjectDataSource1.InsertParameters["SeatCapacity"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtSeatCapacity")).Text;
            ObjectDataSource1.InsertParameters["Section"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddlsection")).SelectedValue;
            ObjectDataSource1.InsertParameters["TeacherID"].DefaultValue = ((DropDownList)GridView3.FooterRow.FindControl("ddlAdviser")).SelectedItem.Value;
            ObjectDataSource1.InsertParameters["RoomNO"].DefaultValue = ((TextBox)GridView3.FooterRow.FindControl("txtRoomNo")).Text;
            ObjectDataSource1.Insert();
            GridView3.DataBind();


        }


        protected void ddlAdviser_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection connection=new SqlConnection(cs))
            {
                //connection.Open();
                //SqlCommand cmd = new SqlCommand("Select * From Teacher Where TeacherID='" + Convert.ToInt32(((DropDownList)GridView3.FooterRow.FindControl("ddlAdviser")).SelectedItem.Value) + "'");
                //FormView1.DataSource = cmd.ExecuteReader();
                //FormView1.DataBind();

                string quiry = "Select * From Teacher Where TeacherID='" + Convert.ToInt32(((DropDownList)GridView3.FooterRow.FindControl("ddlAdviser")).SelectedItem.Value) + "'";
                SqlCommand cmd = new SqlCommand(quiry, connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                da.Fill(dataTable);
                FormView1.DataSource = dataTable;
                FormView1.DataBind();

            }


        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            //using (SqlConnection connection = new SqlConnection(cs))
            //{
            //    //connection.Open();
            //    //SqlCommand cmd = new SqlCommand("Select * From Teacher Where TeacherID='" + Convert.ToInt32(((DropDownList)GridView3.FooterRow.FindControl("ddlAdviser")).SelectedItem.Value) + "'");
            //    //FormView1.DataSource = cmd.ExecuteReader();
            //    //FormView1.DataBind();

            //    string quiry = "Select * From Teacher Where TeacherID='" + Convert.ToInt32(TextBox6.Text) + "'";
            //    SqlCommand cmd = new SqlCommand(quiry, connection);
            //    connection.Open();
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    DataTable dataTable = new DataTable();
            //    da.Fill(dataTable);
            //    FormView1.DataSource = dataTable;
            //    FormView1.DataBind();

            //}


        }

        protected void btnCanelFormviw_Click(object sender, EventArgs e)
        {
            FormView1.Visible = false;
        }
    }
}