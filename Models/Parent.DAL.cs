using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SchoolProjectArosh.Models
{
    public class Parent
    {
       static string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);

        public bool ParentInsert(string name,int nid,string relation,string phone,string email,string occupation,int income,string address)
        {
            con.Open();
            try
            {
                string quiry = "INSERT INTO Parent Values('"+name+ "','" + nid + "','" + relation + "','" + phone + "','" + email+ "','" + occupation+ "','" + income + "','" + address + "')";
                SqlCommand cmd = new SqlCommand(quiry,con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch(Exception e)
            {
                throw new Exception(e.Message.ToString());

            }
            finally
            {
                con.Close();
            }
        }

        public bool ParentUpdate(int parentID,string name, int nid, string relation, string phone, string email, string occupation, int income, string address)
        {
            con.Open();
            try
            {
                string quiry = "UPDATE Parent SET Name='"+name+"',NID='"+nid+ "',Relation='" + relation + "',Phone='" + phone + "',Email='" + email + "',Occupation='" + occupation + "',Income='" + income + "',Address='" + address + "' Where ParentID='" + parentID + "' ";
                SqlCommand cmd = new SqlCommand(quiry, con);
                cmd.ExecuteNonQuery();


                return true;
            }
            catch(Exception e)
            {
                throw new Exception(e.Message.ToString());

            }
            finally
            {
                con.Close();
            }
        }


        public bool ParentDelet(int parentID)
        {
            con.Open();
            try
            {
                string quiry = "DELETE FROM Parent Where ParentID='"+parentID+"'";
                SqlCommand cmd = new SqlCommand(quiry, con);
                cmd.ExecuteNonQuery();


                return true;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message.ToString());

            }
            finally
            {
                con.Close();
            }
        }


    }
}