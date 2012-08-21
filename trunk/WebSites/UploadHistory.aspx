<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UploadHistory.aspx.cs" Inherits="UploadHistory" %>

<asp:Content ID="Welcome" ContentPlaceHolderID="Login" runat="server">

    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
        <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click">Logout</asp:LinkButton>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
