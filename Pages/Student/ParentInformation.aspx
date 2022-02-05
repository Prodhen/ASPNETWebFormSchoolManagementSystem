<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParentInformation.aspx.cs" Inherits="SchoolProjectArosh.Pages.Student.ParentInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">Change Language</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                         <asp:ListItem Value="en-US" Text="English" />
                        <asp:ListItem Value="hi-IN" Text="Hindi" />
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px; font-size: large;"><strong>Gurdina Information(AdO.NET ENTITY Data Model)</strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 199px; height: 20px"></td>
            <td style="width: 288px; height: 20px">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                :</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 199px; height: 22px"></td>
            <td style="width: 288px; height: 22px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 199px; height: 20px"></td>
            <td style="width: 288px; height: 20px">
                <asp:Label ID="lblNationalIDNumber" runat="server" Text="National ID Number"></asp:Label>
                :</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:TextBox ID="txtNID" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Label ID="lblRelation" runat="server" Text="Relation"></asp:Label>
                :</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:DropDownList ID="ddlRelation" runat="server" Height="17px" Width="142px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Brother</asp:ListItem>
                    <asp:ListItem>Sister</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 199px; height: 20px"></td>
            <td style="width: 288px; height: 20px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                :</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                :</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 199px; height: 20px"></td>
            <td style="width: 288px; height: 20px">
                <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label>
                :</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 199px; height: 22px"></td>
            <td style="width: 288px; height: 22px">
                <asp:DropDownList ID="ddlOccupation" runat="server" Height="16px" Width="141px">
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Bussiness</asp:ListItem>
                    <asp:ListItem>Banker</asp:ListItem>
                    <asp:ListItem>Army</asp:ListItem>
                    <asp:ListItem>Police</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 199px; height: 20px"></td>
            <td style="width: 288px; height: 20px">
                <asp:Label ID="lblAnnualIncome" runat="server" Text="Annual Incom"></asp:Label>
                :</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 199px; height: 22px;"></td>
            <td style="width: 288px; height: 22px;">
                <asp:TextBox ID="txtIncome" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                :</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px"></td>
            <td style="width: 199px; height: 22px"></td>
            <td style="width: 288px; height: 22px">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="I Checked all my given informaion" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">&nbsp;<asp:Button ID="btnSave" runat="server" Text="ADD" OnClick="btnSave_Click" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remove" />
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Label ID="lblParentID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div><center><h3>Reviwe Your Information</h3></center></div>
    <div>
        <center>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ParentID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ParentID" HeaderText="ParentID" InsertVisible="False" ReadOnly="True" SortExpression="ParentID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="NID" HeaderText="NID" SortExpression="NID" />
            <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
            <asp:BoundField DataField="Income" HeaderText="Income" SortExpression="Income" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Parent]"></asp:SqlDataSource>
        </center>
    </div>

</asp:Content>
