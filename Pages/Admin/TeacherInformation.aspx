<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherInformation.aspx.cs" Inherits="SchoolProjectArosh.Pages.Admin.TeacherInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 88px;
    }
    .auto-style3 {
        width: 489px;
    }
    .auto-style4 {
        width: 88px;
        height: 23px;
    }
    .auto-style5 {
        height: 23px;
    }
    .auto-style6 {
        width: 489px;
        height: 23px;
    }

</style>
    <br />
    <br />
    <div><center><h3>Teacher Information(LINQ to Sql Data Source)</h3></center></div>
    <div>
<table class="auto-style1">



  
    

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="TeacherID" DataSourceID="LinqDataSource1" 
        InsertItemPosition="LastItem" 
        OnItemCommand="ListView1_ItemCommand" Class="table table-responsive table-striped table-hover" >
       <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td  style="white-space:nowrap">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                </td>
                <td >
                    <asp:Label ID="TNameLabel" runat="server" Text='<%# Eval("TName") %>' />
                </td>
                <td>
                    <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                </td>
                <td>
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                </td>
                <td>
                    <asp:Label ID="JoiningDateLabel" runat="server" Text='<%# Eval("JoiningDate") %>' />
                </td>
                <td>
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                     <asp:Image ID="Image12" runat="server" ImageUrl='<%#Bind("Image") %>' Width="100px" Height="100px"/>
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color:black; width:fit-content">
                <td style="white-space:nowrap">
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="TeacherIDLabel1" runat="server" Text='<%# Eval("TeacherID") %>' />
                </td>
                <td >
                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                </td>
                <td>
<%--                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />--%>
                   <asp:DropDownList ID="ddlSubject" runat="server" SelectedValue='<%# Bind("Subject") %>'>
                        <asp:ListItem Text="Select" Value="Select" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Bangla" Value="Bangla"></asp:ListItem>
                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                        <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="JoiningDateTextBox" runat="server" TextMode="Date" Text='<%# Bind("JoiningDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DOBTextBox" runat="server" TextMode="Date" Text='<%# Bind("DOB") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>

                     <asp:Image ID="Image12" runat="server" ImageUrl='<%#Bind("Image") %>' Width="100px" Height="100px"/>
                </td>

            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>


        <InsertItemTemplate>
            <tr style="">
                <td style="white-space:nowrap">
                    <asp:Button ID="InsertButton" runat="server" CommandName="Add" Text="Insert" />

                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td style="width:fit-content">
                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' Width="100px" />
                </td>
                <td>
                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' Width="100%" />
                </td>
                <td>

                 <asp:DropDownList ID="ddlSubject1" runat="server" SelectedValue='<%# Bind("Subject") %>'>
                        <asp:ListItem Text="Select" Value="Select" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Bangla" Value="Bangla"></asp:ListItem>
                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                        <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' TextMode="Date" Width="110px" />
                </td>
                <td>
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' TextMode="Date" Width="110px" />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' Width="100%" />
                </td>
                <td>
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' Width="100%"/>
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' Width="100%" />
                </td>
                <td>

                    <asp:FileUpload ID="FileUploadImage1" runat="server" Width="100%" />
                </td>
            </tr>
        </InsertItemTemplate>



        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;" class="">
                <td style="white-space:nowrap">
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                  <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />



                </td>
                <td>
                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                </td>
                <td style="width:10px">
                    <asp:Label ID="TNameLabel" runat="server" Text='<%# Eval("TName") %>' />
                </td>
                <td>
                    <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                </td>
                <td>
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                </td>
                <td>
                    <asp:Label ID="JoiningDateLabel" runat="server" Text='<%# Eval("JoiningDate") %>' />
                </td>
                <td>
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Image ID="Image12" runat="server" ImageUrl='<%#Bind("Image") %>' Width="100px" Height="100px"/>

                 
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                
                                <th style="width: 150px" runat="server">Action</th>
                                <th runat="server">TeacherID</th>
                                <th runat="server">Name</th>
                                <th runat="server">FatherName</th>
                                <th runat="server">Subject</th>
                                <th runat="server">JoiningDate</th>
                                <th runat="server">DOB</th>
                                <th runat="server">Email</th>
                                <th runat="server">Mobile</th>
                                <th runat="server">Address</th>
                                <th runat="server">Image</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>

    </asp:ListView>


    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SchoolProjectArosh.Models.MyLINQtoSQLTeacherDataContext" EntityTypeName="" TableName="Teachers" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
    </asp:LinqDataSource>
    </table>
  </div>
</asp:Content>
