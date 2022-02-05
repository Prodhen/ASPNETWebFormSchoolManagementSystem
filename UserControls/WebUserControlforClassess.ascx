<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlforClassess.ascx.cs" Inherits="SchoolProjectArosh.UserControls.WebUserControlforClassess" %>
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
<div><center><h2>&nbsp;</h2>
    <h2>Class Information(Object Data Source)</h2>
    <asp:Label ID="lblTime" runat="server"></asp:Label>
     </center>

</div>

<div>
    
</div>

   <asp:UpdatePanel ID="up1" runat="server">
        <ContentTemplate>


<table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">
            
            <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td colspan="2" rowspan="7">
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="ClassId" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="None" ShowFooter="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" AllowSorting="True">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                    
                    <asp:TemplateField HeaderText="ClassId" InsertVisible="False" SortExpression="ClassId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ClassId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ClassId") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click" Text="ADD" ValidationGroup="Save"></asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field can not be empty" ForeColor="Red" ControlToValidate="txtName" ValidationGroup="Save">*</asp:RequiredFieldValidator>

                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SeatCapacity" SortExpression="SeatCapacity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SeatCapacity") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("SeatCapacity") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSeatCapacity" runat ="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Section" SortExpression="Section">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlsection" runat="server" SelectedValue='<%# Bind("Section") %>'>
                                <asp:ListItem Text="Select" Value="Select" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                  <asp:ListItem Text="C" Value="C"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Section") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="ddlsection" runat="server" SelectedValue='<%# Bind("Section") %>'>
                                <asp:ListItem Text="Select" Value="Select" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                  <asp:ListItem Text="C" Value="C"></asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Adviser" SortExpression="TeacherID">

                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlAdviser" runat="server" DataTextField="TName" DataValueField="TeacherID"  DataSourceID="SqlDataSourceTeacherID" SelectedValue='<%# Bind("TeacherID") %>' OnSelectedIndexChanged="ddlAdviser_SelectedIndexChanged" >
                            </asp:DropDownList>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Bind("TName") %>'></asp:Label>
                            

                        </ItemTemplate>

                        <FooterTemplate>                            
                            <asp:DropDownList ID="ddlAdviser" runat="server" DataSourceID="SqlDataSourceTeacherID" DataTextField="TName" DataValueField="TeacherID" AutoPostBack="true" >
                            </asp:DropDownList>
                        </FooterTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="RoomNo" SortExpression="RoomNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("RoomNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("RoomNo") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtRoomNo" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceTeacherID" runat="server" ConnectionString="<%$ConnectionStrings:DefaultConnection%>" SelectCommand="Select* From Teacher"></asp:SqlDataSource>


            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteClasses" InsertMethod="InsertClass"  SelectMethod="GetClasses" TypeName="SchoolProjectArosh.Models.Classess_Dal" UpdateMethod="UpdateClassess" >
                <DeleteParameters>
                    <asp:Parameter Name="classId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="seatCapacity" Type="String" />
                    <asp:Parameter Name="section" Type="String" />
                    <asp:Parameter Name="TeacherID" Type="Int32" />
                    <asp:Parameter Name="roomNo" Type="String" />
                </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="classId" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="seatCapacity" Type="String" />
                    <asp:Parameter Name="section" Type="String" />
                    <asp:Parameter Name="teacherID" Type="Int32" />
                    <asp:Parameter Name="roomNo" Type="String" />
                </UpdateParameters>


            </asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style3">&nbsp; <asp:Label ID="lbltime2" runat="server" ></asp:Label></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="auto-style3">
            <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" GridLines="Both">
                <EditItemTemplate>
                    TeacherID:
                    <asp:Label ID="TeacherIDLabel1" runat="server" Text='<%# Eval("TeacherID") %>' />
                    <br />
                    TName:
                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                    <br />
                    FatherName:
                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    JoiningDate:
                    <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    TName:
                    <asp:TextBox ID="TNameTextBox" runat="server" Text='<%# Bind("TName") %>' />
                    <br />
                    FatherName:
                    <asp:TextBox ID="FatherNameTextBox" runat="server" Text='<%# Bind("FatherName") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    JoiningDate:
                    <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    TeacherID:
                    <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
                    <br />
                    TName:
                    <asp:Label ID="TNameLabel" runat="server" Text='<%# Bind("TName") %>' />
                    <br />
                    FatherName:
                    <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Bind("FatherName") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    JoiningDate:
                    <asp:Label ID="JoiningDateLabel" runat="server" Text='<%# Bind("JoiningDate") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Mobile:
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Image:
<%--                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>'/>--%>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Image") %>'/>
                    <br />
                    <asp:Button ID="btnCanelFormviw" runat="server" OnClick="btnCanelFormviw_Click" />
                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Teacher] WHERE ([TName] = @TName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox6" Name="TName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
</table>
                    </ContentTemplate>
    </asp:UpdatePanel>

<asp:ValidationSummary ID="ValidationS1" runat="server" ValidationGroup="Save" />
