<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bankschoice.aspx.cs" Inherits="lab4AdvanceControl.Bankschoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 757px">
    
        <asp:ImageMap ID="imgMap" runat="server" ImageUrl="~/img/united-states-map.gif" 
            onclick="imgMap_Click">
        </asp:ImageMap>
    
        <div style="width: 199px; float: right; clip: rect(0px, auto, auto, auto);">
        <asp:Label ID="lblBranchName" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblAddress" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblStateName" runat="server"></asp:Label>
    </div>
    
    </div>
    <br />
    <div>
        <asp:Label ID="x1" runat="server" Text="Hello "></asp:Label>
        &nbsp;<asp:Label ID="lblName" runat="server"></asp:Label>
        <br />
        <asp:Label ID="x2" runat="server" Text="Today:"></asp:Label>
        <asp:Label ID="lblDateTime" runat="server"></asp:Label>
        <br />
        <asp:Label ID="x" runat="server" Text="Your Account Num:"></asp:Label>
    &nbsp;<asp:Label ID="lblAccountNumber" runat="server"></asp:Label>
    </div>
    
    </form>
</body>
</html>
