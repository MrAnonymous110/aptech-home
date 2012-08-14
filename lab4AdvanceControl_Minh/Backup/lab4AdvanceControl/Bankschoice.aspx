<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bankschoice.aspx.cs" Inherits="lab4AdvanceControl.Bankschoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageMap ID="imgMap" runat="server" ImageUrl="~/img/united-states-map.gif" 
            onclick="imgMap_Click">
        </asp:ImageMap>
    
    </div>
    <br />
    <div>
        <asp:Label ID="lblBranchName" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblStateName" runat="server" Text=""></asp:Label>
    </div>
    
    </form>
</body>
</html>
