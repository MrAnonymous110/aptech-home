<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<script runat="server">

</script>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link href="bowman.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <div id="login">
        <asp:Label ID="Label1" runat="server" Text="Login to Website" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="User name"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <br />
        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
    </div>
    </form>
</asp:Content>
