﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchoolProjectArosh.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="aspnet-SchoolProjectArosh-20210917073145")]
	public partial class MyLINQtoSQLTeacherDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertTeacher(Teacher instance);
    partial void UpdateTeacher(Teacher instance);
    partial void DeleteTeacher(Teacher instance);
    #endregion
		
		public MyLINQtoSQLTeacherDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public MyLINQtoSQLTeacherDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyLINQtoSQLTeacherDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyLINQtoSQLTeacherDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public MyLINQtoSQLTeacherDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Teacher> Teachers
		{
			get
			{
				return this.GetTable<Teacher>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Teacher")]
	public partial class Teacher : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _TeacherID;
		
		private string _TName;
		
		private string _FatherName;
		
		private string _Subject;
		
		private System.Nullable<System.DateTime> _JoiningDate;
		
		private System.Nullable<System.DateTime> _DOB;
		
		private string _Email;
		
		private string _Mobile;
		
		private string _Address;
		
		private string _Image;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnTeacherIDChanging(int value);
    partial void OnTeacherIDChanged();
    partial void OnTNameChanging(string value);
    partial void OnTNameChanged();
    partial void OnFatherNameChanging(string value);
    partial void OnFatherNameChanged();
    partial void OnSubjectChanging(string value);
    partial void OnSubjectChanged();
    partial void OnJoiningDateChanging(System.Nullable<System.DateTime> value);
    partial void OnJoiningDateChanged();
    partial void OnDOBChanging(System.Nullable<System.DateTime> value);
    partial void OnDOBChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnMobileChanging(string value);
    partial void OnMobileChanged();
    partial void OnAddressChanging(string value);
    partial void OnAddressChanged();
    partial void OnImageChanging(string value);
    partial void OnImageChanged();
    #endregion
		
		public Teacher()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TeacherID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int TeacherID
		{
			get
			{
				return this._TeacherID;
			}
			set
			{
				if ((this._TeacherID != value))
				{
					this.OnTeacherIDChanging(value);
					this.SendPropertyChanging();
					this._TeacherID = value;
					this.SendPropertyChanged("TeacherID");
					this.OnTeacherIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TName", DbType="VarChar(50)")]
        public string TName
        {
            get
            {
                return this._TName;
            }
            set
            {
                if ((this._TName != value))
                {
                    this.OnTNameChanging(value);
                    this.SendPropertyChanging();
                    this._TName = value;
                    this.SendPropertyChanged("TName");
                    this.OnTNameChanged();
                }
            }
        }

        [global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FatherName", DbType="VarChar(50)")]
		public string FatherName
		{
			get
			{
				return this._FatherName;
			}
			set
			{
				if ((this._FatherName != value))
				{
					this.OnFatherNameChanging(value);
					this.SendPropertyChanging();
					this._FatherName = value;
					this.SendPropertyChanged("FatherName");
					this.OnFatherNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Subject", DbType="VarChar(50)")]
		public string Subject
		{
			get
			{
				return this._Subject;
			}
			set
			{
				if ((this._Subject != value))
				{
					this.OnSubjectChanging(value);
					this.SendPropertyChanging();
					this._Subject = value;
					this.SendPropertyChanged("Subject");
					this.OnSubjectChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_JoiningDate", DbType="Date")]
		public System.Nullable<System.DateTime> JoiningDate
		{
			get
			{
				return this._JoiningDate;
			}
			set
			{
				if ((this._JoiningDate != value))
				{
					this.OnJoiningDateChanging(value);
					this.SendPropertyChanging();
					this._JoiningDate = value;
					this.SendPropertyChanged("JoiningDate");
					this.OnJoiningDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DOB", DbType="Date")]
		public System.Nullable<System.DateTime> DOB
		{
			get
			{
				return this._DOB;
			}
			set
			{
				if ((this._DOB != value))
				{
					this.OnDOBChanging(value);
					this.SendPropertyChanging();
					this._DOB = value;
					this.SendPropertyChanged("DOB");
					this.OnDOBChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(100)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Mobile", DbType="VarChar(50)")]
		public string Mobile
		{
			get
			{
				return this._Mobile;
			}
			set
			{
				if ((this._Mobile != value))
				{
					this.OnMobileChanging(value);
					this.SendPropertyChanging();
					this._Mobile = value;
					this.SendPropertyChanged("Mobile");
					this.OnMobileChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address", DbType="VarChar(100)")]
		public string Address
		{
			get
			{
				return this._Address;
			}
			set
			{
				if ((this._Address != value))
				{
					this.OnAddressChanging(value);
					this.SendPropertyChanging();
					this._Address = value;
					this.SendPropertyChanged("Address");
					this.OnAddressChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Image", DbType="VarChar(100)")]
		public string Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				if ((this._Image != value))
				{
					this.OnImageChanging(value);
					this.SendPropertyChanging();
					this._Image = value;
					this.SendPropertyChanged("Image");
					this.OnImageChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
