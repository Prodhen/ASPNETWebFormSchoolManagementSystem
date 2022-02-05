using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProjectArosh
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ResourceManager rManager;
        CultureInfo cInfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Lang"] == null)
            {
                Session["Lang"] = Request.UserLanguages[0];


            }
            if (!IsPostBack)
            {
                mySelectedLang();
            }
        }
        private void mySelectedLang()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["Lang"].ToString());
            rManager = new ResourceManager("SchoolProjectArosh.App_GlobalResources.Lang", Assembly.GetExecutingAssembly());
            cInfo = Thread.CurrentThread.CurrentCulture;
            txtName.Text = rManager.GetString("Name", cInfo);
            btnSave.Text = rManager.GetString("Save", cInfo);
            btnCancel.Text = rManager.GetString("Cancel",cInfo);
           // btnCancel.Text = resourceManager.GetString("Cancel", cultureInfo);

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList1.SelectedValue;
            mySelectedLang();
        }
    }
}