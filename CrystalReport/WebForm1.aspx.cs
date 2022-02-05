using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace SchoolProjectArosh.CrystalReport
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);

            
                con.Open();
             //   string quiry = "Select * From Student";
                SqlDataAdapter da = new SqlDataAdapter("Select * From Student", con);
                DataSet ds = new DataSet();
                da.Fill(ds);



            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("CrystalReport1.rpt"));

            rpt.SetDataSource(ds.Tables["Table"]);
                CrystalReportViewer1.ReportSource = rpt;
            CrystalReportViewer1.RefreshReport();

             rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat,Response,false,"Student Information");

            //https://www.youtube.com/watch?v=YFKj89bsVMY





        }
    }
}