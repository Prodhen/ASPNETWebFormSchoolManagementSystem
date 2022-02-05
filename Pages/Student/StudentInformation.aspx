<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInformation.aspx.cs" Inherits="SchoolProjectArosh.Pages.Student.StudentInformation" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 

  
    <div><center>
        <h2>Student Information(Sql Data Source)</h2></center></div>
               Before filling up this Form you must be provide your Guardian Informatin <a href="ParentInfo">here</a> 
    
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
   


        <table class="nav-justified">

            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 335px; height: 25px; font-size: small;">First Name</td>
                <td class="modal-sm" style="width: 428px; height: 25px;">
                    <asp:TextBox ID="txtfirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field can not be empty" ForeColor="Red" ControlToValidate="txtfirstName" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Name field can not be empty" ForeColor="Red" ControlToValidate="txtfirstName" ValidationGroup="Update">*</asp:RequiredFieldValidator>

                </td>
                <td style="height: 25px"></td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Last Name</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:TextBox ID="txtlastName" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">GuardianID</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:DropDownList ID="ddlParentNID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="NID" Height="16px" Width="178px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [NID], [Relation], [Phone], [Email], [Occupation], [Income], [Address] FROM [Parent]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 335px; height: 18px">Gender</td>
                <td style="width: 428px; height: 18px">
                    <asp:RadioButtonList ID="rblGender" runat="server" Height="16px" Width="178px" Font-Size="7pt" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td colspan="2" rowspan="5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Font-Size="9pt">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True"  />
                            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                            <asp:BoundField DataField="Hobies" HeaderText="Hobies" SortExpression="Hobies" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date" SortExpression="AdmissionDate" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:TemplateField HeaderText="ClassID" SortExpression="ClassID">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<% #Eval("Name")%>'></asp:Label>
                              
                                 
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift" />
                            <asp:BoundField DataField="ParentsNID" HeaderText="ParentsNID" SortExpression="ParentsNID" />
                            <asp:BoundField DataField="Division" HeaderText="Division" SortExpression="Division" />
                            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                            <asp:BoundField DataField="Upazila" HeaderText="Upazila" SortExpression="Upazila" />
                            <asp:BoundField DataField="Unions" HeaderText="Unions" SortExpression="Unions" />
                            <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" />
                        <%--    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />--%>
                            <asp:ImageField  HeaderText="Image" SortExpression="Image" DataImageUrlField="Image"  ControlStyle-Width="50px" ControlStyle-Height="50px"></asp:ImageField>
                       
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT StudentID,Student.firstName,lastName,Hobies,Email,Mobile,Gender,DOB,AdmissionDate,Student.ClassID,Shift,ParentsNID,Division,District,Upazila,Unions,Village,Image,Name FROM [Student] Inner Join Classess On Student.ClassID=Classess.ClassId"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px; font-size: x-small;">Date Of Birth</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="178px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date Of Bith field can not be empty" ForeColor="Red" ControlToValidate="txtDOB" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date must be 2000-2020" ForeColor="Red" MaximumValue="2018-01-01" MinimumValue="2000-01-01" ValidationGroup="Save" Display="Dynamic" Font-Size="7pt"></asp:RangeValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date Of Bith field can not be empty" ForeColor="Red" ControlToValidate="txtDOB" ValidationGroup="Update">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date must be 2000-2020" ForeColor="Red" MaximumValue="2018-01-01" MinimumValue="2000-01-01" ValidationGroup="Update" Display="Dynamic" Font-Size="7pt"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Hobies</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:CheckBoxList ID="cblHobies" runat="server" Height="16px" Width="206px" Font-Size="5pt" RepeatDirection="Horizontal">
                        <asp:ListItem>Writting</asp:ListItem>
                        <asp:ListItem>Reading</asp:ListItem>
                        <asp:ListItem>Drawing</asp:ListItem>
                        <asp:ListItem>Travaling</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 335px; height: 22px;">Email</td>
                <td class="modal-sm" style="width: 428px; height: 22px;">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email field can not be empty" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Save" Font-Size="7pt">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Save" Display="Dynamic" Font-Size="7pt">Email is not Valid</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Email field can not be empty" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Update" Font-Size="7pt">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Update" Display="Dynamic" Font-Size="7pt">Email is not Valid</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Mobile</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mobile field can not be empty" ForeColor="Red" ControlToValidate="txtMobile" ValidationGroup="Save" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Mobile field can not be empty" ForeColor="Red" ControlToValidate="txtMobile" ValidationGroup="Update" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Must be 11 Digit" OnServerValidate="CustomValidator1_ServerValidate" ValidationGroup="Save" Display="Dynamic">Must be 11 Digit</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 335px; height: 25px; font-size: x-small;">Confirm Mobile</td>
                <td class="modal-sm" style="width: 428px; height: 25px;">
                    <asp:TextBox ID="txtConfirmMobile" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Font-Size="10px" ControlToCompare="txtMobile" ControlToValidate="txtConfirmMobile" ForeColor="Red" ValidationGroup="Save" Display="Dynamic">Moblie Number not Match</asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" Font-Size="10px" ControlToCompare="txtMobile" ControlToValidate="txtConfirmMobile" ForeColor="Red" ValidationGroup="Update" Display="Dynamic">Moblie Number not Match</asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 335px; height: 22px; font-size: x-small;">Adimission Date</td>
                <td class="modal-sm" style="width: 428px; height: 22px">
                    <asp:TextBox ID="txtAdmissionDate" runat="server" ></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Calender.png" Width="20px" CausesValidation="False" OnClick="ImageButton1_Click" />
                    <asp:Calendar ID="calAdmissionDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px" OnSelectionChanged="calAdmissionDate_SelectionChanged">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                  

                <td class="modal-sm" style="width: 335px">Class</td>
                <td class="modal-sm" style="width: 428px">
                  
                    <asp:DropDownList ID="ddlClass" runat="server" Height="16px" Width="178px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ClassId" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged">
<%--                        <asp:ListItem>One</asp:ListItem>
                        <asp:ListItem>Two</asp:ListItem>
                        <asp:ListItem>Three</asp:ListItem>
                        <asp:ListItem>Four</asp:ListItem>--%>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ClassId], [Name], [SeatCapacity], [Section], [TeacherID], [RoomNo] FROM [Classess]"></asp:SqlDataSource>
                    
                </td>
                
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Shift</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:DropDownList ID="ddlShift" runat="server" Height="16px" Width="178px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Day</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="modal-sm" style="width: 335px">Division</td>
                <td class="modal-sm" style="width: 428px">


                    <asp:DropDownList ID="ddlDivision" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="DName" DataValueField="DivisionID" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" Width="178px">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Division]"></asp:SqlDataSource>


                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">District</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="True" DataTextField="DisName" DataValueField="DistrictID" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" Height="17px" Width="178px">
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Upazila</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:DropDownList ID="ddlUazila" runat="server" DataTextField="UName" DataValueField="UName" Width="178px">
                    </asp:DropDownList>
                </td>
            </tr>
                                           
            <tr>
                <td class="modal-sm" style="width: 335px">Union</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:TextBox ID="txtUnion" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Village</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:TextBox ID="txtVillage" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">Picture</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:FileUpload ID="FileUploadPicture" runat="server" Width="178px" Height="27px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUploadPicture" ErrorMessage="Picture is Required" ForeColor="Red" ValidationGroup="Save" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUploadPicture" ErrorMessage="Picture is Required" ForeColor="Red" ValidationGroup="Update" Display="Dynamic">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">&nbsp;</td>
            </tr>
        


   
            <tr>
                <td class="modal-sm" style="width: 335px">
                    <asp:Label ID="lblStudentID" runat="server"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 428px">
                    <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="Save" OnClick="btnSave_Click" BackColor="#006600" ForeColor="White" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" ValidationGroup="Update" BackColor="Yellow" ForeColor="Black" OnClick="btnUpdate_Click" Visible="False" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CausesValidation="False" BackColor="Red" ForeColor="White" OnClick="btnDelete_Click" Visible="False" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" ForeColor="#FF0066" OnClick="btnCancel_Click" Visible="False" />
                </td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Save" ForeColor="Red" HeaderText="Save" />
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="Update" ForeColor="Red" HeaderText="Update" />
                </td>
                <td>
                   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 335px">&nbsp;</td>
                <td class="modal-sm" style="width: 428px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
        </table>
            
      </ContentTemplate>   
         <Triggers>
             <asp:PostBackTrigger ControlID="btnSave" />
             <asp:PostBackTrigger ControlID="btnUpdate" />
              <asp:PostBackTrigger ControlID="btnCancel" />
             <asp:PostBackTrigger ControlID="btnDelete" />
          

         </Triggers>
</asp:UpdatePanel>



    </div>
<%--     <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="false" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" />--%>

        
</asp:Content>
