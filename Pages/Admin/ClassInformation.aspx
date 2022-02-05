<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassInformation.aspx.cs" Inherits="SchoolProjectArosh.Pages.Admin.ClassInformation" %>

<%@ Register Src="~/UserControls/WebUserControlforClassess.ascx" TagPrefix="uc1" TagName="WebUserControlforClassess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WebUserControlforClassess runat="server" id="WebUserControlforClassess" />
</asp:Content>
