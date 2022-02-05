<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SchoolProjectArosh.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">&nbsp;</td>
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
            <td style="width: 288px; font-size: large;"><strong>Gurdina Information</strong></td>
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
            <td style="width: 288px; height: 20px">Name:</td>
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
            <td style="width: 288px; height: 20px">National ID Number:</td>
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
            <td style="width: 288px">Relation:</td>
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
            <td style="width: 288px; height: 20px">Email:</td>
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
            <td style="width: 288px">Phone:</td>
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
            <td style="width: 288px; height: 20px">Occupation:</td>
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
            <td style="width: 288px; height: 20px">Annual Income:</td>
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
            <td style="width: 288px">Address:</td>
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
            <td style="width: 288px">&nbsp;<asp:Button ID="btnSave" runat="server" Text="ADD" />
                <asp:Button ID="btnUpdate" runat="server"  />
                <asp:Button ID="btnRemove" runat="server" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Label ID="lblParentID" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div><center><h3>Reviwe Your Information</h3></center></div>
    <div>
    </div>
    
</asp:Content>
