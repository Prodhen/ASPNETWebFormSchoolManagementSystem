using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SchoolProjectArosh.Models
{
    public class ParentInfo
    {

        private int _parentID;
        private string _name;
        private int _nID;
        private string _relation;
        private string _phone;
        private string _email;
        private string _occupation;
        private int _income;
        private string _address;


        public int ParentID { get=>_parentID; set=>_parentID=value; }
        public string Name { get=>_name; set=>_name=value; }
        public int NID { get=>_nID; set=>_nID=value; }
        public string Relation { get => _relation; set => _relation = value; }
        public string Phone { get => _phone; set => _phone = value; }
        public string Email { get => _email; set => _email = value; }
        public string Occupation { get => _occupation; set => _occupation = value; }
        public int Income { get => _income; set => _income = value; }
        public string Address { get => _address; set => _address = value; }


        public bool PInsert()
        {

            try
            {
                Parent P = new Parent();
                P.ParentInsert(Name, NID, Relation, Phone, Email, Occupation, Income, Address);
                return true;

            }
            catch
            {
                throw new Exception("Not Performed");

            }



        }

        public bool PUpdate()
        {

            try
            {
                Parent P = new Parent();
                P.ParentUpdate(ParentID,Name, NID, Relation, Phone, Email, Occupation, Income, Address);
                return true;

            }
            catch
            {
                throw new Exception("Not Performed");

            }
            finally
            {


            }

        }
        public bool PDelete()
        {

            try
            {
                Parent P = new Parent();
                P.ParentDelet(ParentID);
                return true;

            }
            catch
            {
                throw new Exception("Not Performed");

            }
            finally
            {


            }

        }
    }
}