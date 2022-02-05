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
using SchoolProjectArosh.Models;

namespace SchoolProjectArosh.Pages.Student
{

    public partial class ParentInformation : System.Web.UI.Page
    {
        ResourceManager resourceManager;
        CultureInfo cultureInfo;
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
            resourceManager = new ResourceManager("SchoolProjectArosh.App_GlobalResources.Lang", Assembly.GetExecutingAssembly());
            cultureInfo = Thread.CurrentThread.CurrentCulture;
            lblName.Text = resourceManager.GetString("Name",cultureInfo);
            lblNationalIDNumber.Text = resourceManager.GetString("National ID Number", cultureInfo);
            lblEmail.Text = resourceManager.GetString("Email",cultureInfo);
            lblRelation.Text = resourceManager.GetString("Relation",cultureInfo);
            lblOccupation.Text = resourceManager.GetString("Occupation",cultureInfo);
            lblAnnualIncome.Text = resourceManager.GetString("Annual Income",cultureInfo);
               

            btnSave.Text = resourceManager.GetString("Save", cultureInfo);
            btnCancel.Text = resourceManager.GetString("Cancel", cultureInfo);
            btnUpdate.Text = resourceManager.GetString("Update",cultureInfo);
            btnRemove.Text = resourceManager.GetString("Remove",cultureInfo);
            CheckBox1.Text = resourceManager.GetString("I Checked all my given informaion",cultureInfo);

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try { 

                ParentInfo p = new ParentInfo();
                p.Name = txtName.Text;
                p.Relation = ddlRelation.SelectedValue;
                p.Email = txtEmail.Text;
                p.NID = Convert.ToInt32(txtNID.Text);
                p.Income = Convert.ToInt32(txtIncome.Text);
                p.Phone = txtPhone.Text;
                p.Address = txtAddress.Text;
                p.Occupation = ddlOccupation.SelectedValue;
                bool Status = p.PInsert();
                if (Status == true)
                {
                    ShowAlert("Registration Process Successfully Completed");
                   

                }
                else
                {
                    ShowAlert("Failed To Registration");
                }
            }
            catch 
            {

                ShowAlert("Failed To Registration Catch");
            }

            GridView1.DataBind();
            ClearControls();

        }
        private void ShowAlert(string msg)
        {
            string str;
            str = "<script language='javascript' type='text/javascript'> alert(' " + msg + " ');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str);

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

                ParentInfo p = new ParentInfo();
                p.ParentID = Convert.ToInt32(lblParentID.Text);
                p.Name = txtName.Text;
                p.Relation = ddlRelation.SelectedValue;
                p.Email = txtEmail.Text;
                p.NID = Convert.ToInt32(txtNID.Text);
                p.Income = Convert.ToInt32(txtIncome.Text);
                p.Phone = txtPhone.Text;
                p.Address = txtAddress.Text;
                p.Occupation = ddlOccupation.SelectedValue;
                bool Status = p.PUpdate();
                if (Status == true)
                {
                    ShowAlert("Update Successful");
                   
                }
                else
                {
                    ShowAlert("Update Not Successful");
                }
            //}
            //catch
            //{
            //    ShowAlert("Update Not Successful");
            //}
            ClearControls();
            GridView1.DataBind();
            

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            try
            {


                ParentInfo p = new ParentInfo();
                p.ParentID = Convert.ToInt32(lblParentID.Text);
                bool Status = p.PDelete();
                if (Status == true)
                {
                    ShowAlert("Remove Successful");

                }
                else
                {
                    ShowAlert("Remove not  Successful");
                }
            }
            catch
            {
                 ShowAlert("Remove not  Successful");

            }
            ClearControls();

            GridView1.DataBind();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearControls();
        }


        private void ClearControls()
        {
            txtName.Text = "";
            //ddlRelation.SelectedValue;
            txtEmail.Text = "";
            txtNID.Text = "";
            txtIncome.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            //ddlOccupation.SelectedValue;
     

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblParentID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtName.Text =GridView1.SelectedRow.Cells[2].Text;
            txtNID.Text = GridView1.SelectedRow.Cells[3].Text;
            txtPhone.Text = GridView1.SelectedRow.Cells[5].Text;
            txtEmail.Text= GridView1.SelectedRow.Cells[6].Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Lang"] = DropDownList1.SelectedValue;
            mySelectedLang();
        }
    }
}