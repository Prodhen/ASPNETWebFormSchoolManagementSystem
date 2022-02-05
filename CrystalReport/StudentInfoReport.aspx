<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfoReport.aspx.cs" Inherits="SchoolProjectArosh.CrystalReport.StudentInfoReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:Button ID="btnApplicationCopy" runat="server" Text="Application Copy" OnClick="btnApplicationCopy_Click" />
    </div>
    <div>
      <asp:Label ID="lblNIDNumber" runat="server" Visible="false" Text="ID Number"></asp:Label>  <asp:TextBox ID="txtIDNumber" runat="server" Visible="false"></asp:TextBox><br/>
       <asp:Label ID="lblEmail" runat="server" Visible="false" Text="Email Address"/> <asp:TextBox ID="txtEmail" runat="server" Visible="false"></asp:TextBox><br/>
        <asp:Button ID="btnPrint" runat="server" Text="Print"  Visible="false" OnClick="btnPrint_Click" />
    </div>
            <div>

                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
     
            
        </div>
</asp:Content>
