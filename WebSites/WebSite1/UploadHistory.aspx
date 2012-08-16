<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite1/MasterPage.master" AutoEventWireup="true"
    CodeFile="UploadHistory.aspx.cs" Inherits="UploadHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <form id="form1" runat="server">
    <div id="login">
        <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
        <asp:LinkButton ID="btnLogout" runat="server" onclick="btnLogout_Click">Logout</asp:LinkButton>
    </div>
    </form>
</asp:Content>
