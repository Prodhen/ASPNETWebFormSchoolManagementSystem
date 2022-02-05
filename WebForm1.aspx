<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SchoolProjectArosh.WebForm1" %>
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
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1">
                        
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                                </td>
                                <td>
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
                                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="TeacherIDLabel1" runat="server" Text='<%# Eval("TeacherID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
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
                                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
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
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
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
                                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        
                        <ItemTemplate>
                            <tr style="background-color: #DCDCDC; color: #000000;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                                </td>
                                <td>
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
                                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th runat="server"></th>
                                                <th runat="server">TeacherID</th>
                                                <th runat="server">TName</th>
                                                <th runat="server">FatherName</th>
                                                <th runat="server">Subject</th>
                                                <th runat="server">JoiningDate</th>
                                                <th runat="server">DOB</th>
                                                <th runat="server">Email</th>
                                                <th runat="server">Mobile</th>
                                                <th runat="server">Address</th>
                                                <th runat="server">Image</th>
                                            </tr>
                                            <tr runat="server" id="itemPlaceholder">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                                </td>
                                <td>
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
                                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                        
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @TeacherID" InsertCommand="INSERT INTO [Teacher] ([TName], [FatherName], [Subject], [JoiningDate], [DOB], [Email], [Mobile], [Address], [Image]) VALUES (@TName, @FatherName, @Subject, @JoiningDate, @DOB, @Email, @Mobile, @Address, @Image)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [TName] = @TName, [FatherName] = @FatherName, [Subject] = @Subject, [JoiningDate] = @JoiningDate, [DOB] = @DOB, [Email] = @Email, [Mobile] = @Mobile, [Address] = @Address, [Image] = @Image WHERE [TeacherID] = @TeacherID">
                        <DeleteParameters>
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TName" Type="String" />
                            <asp:Parameter Name="FatherName" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter DbType="Date" Name="JoiningDate" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TName" Type="String" />
                            <asp:Parameter Name="FatherName" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter DbType="Date" Name="JoiningDate" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
