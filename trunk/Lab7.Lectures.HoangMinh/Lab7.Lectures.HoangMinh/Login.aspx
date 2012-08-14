<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab7.Lectures.HoangMinh._Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<link href="bowman.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
    
        <asp:Label ID="Label1" runat="server" Text="Login to Website" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="User name"></asp:Label>
        
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me"/>
        
        <br />
        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
            Text="Login" />
        <br />
        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
