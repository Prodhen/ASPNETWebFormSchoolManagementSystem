using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SchoolProjectArosh.CrystalReport
{
    public partial class StudentReportw : System.Web.UI.Page
    {
        SqlConnection con;
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (con=new SqlConnection(cs))

            {
                string quiry = "Select * From Student";
                SqlDataAdapter da = new SqlDataAdapter(quiry,con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                StudentIReport SR = new StudentIReport();
                SR.Load(Server.MapPath("~/Student"));
                SR.SetDataSource(ds.Tables["Table"]);
             




            }

        }
    }
}