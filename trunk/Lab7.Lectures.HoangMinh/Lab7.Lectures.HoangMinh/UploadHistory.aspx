<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadHistory.aspx.cs"
    Inherits="Lab7.Lectures.HoangMinh.UploadHistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="bowman.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="welcomeUser">
        <asp:Label ID="lblUserName" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
    </div>
    </form>
</body>
</html>
