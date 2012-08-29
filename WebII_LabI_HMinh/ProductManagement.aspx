<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductManagement.aspx.cs" Inherits="ProductManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FashionStoreConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" 
            InsertCommand="INSERT INTO [Product] ([ProductCode], [CategoryID], [Price], [Status], [MainImage], [SmallImage], [Image1], [Image2], [Image3]) VALUES (@ProductCode, @CategoryID, @Price, @Status, @MainImage, @SmallImage, @Image1, @Image2, @Image3)" 
            SelectCommand="SELECT * FROM [Product]" 
            UpdateCommand="UPDATE [Product] SET [ProductCode] = @ProductCode, [CategoryID] = @CategoryID, [Price] = @Price, [Status] = @Status, [MainImage] = @MainImage, [SmallImage] = @SmallImage, [Image1] = @Image1, [Image2] = @Image2, [Image3] = @Image3 WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductCode" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="MainImage" Type="String" />
                <asp:Parameter Name="SmallImage" Type="String" />
                <asp:Parameter Name="Image1" Type="String" />
                <asp:Parameter Name="Image2" Type="String" />
                <asp:Parameter Name="Image3" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductCode" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="MainImage" Type="String" />
                <asp:Parameter Name="SmallImage" Type="String" />
                <asp:Parameter Name="Image1" Type="String" />
                <asp:Parameter Name="Image2" Type="String" />
                <asp:Parameter Name="Image3" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="10" 
            CellSpacing="10" DataKeyField="ProductID" DataSourceID="SqlDataSource1" 
            GridLines="Vertical" RepeatColumns="5" RepeatDirection="Horizontal" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            ondeletecommand="DataList1_DeleteCommand">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <SelectedItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductCode:
                <asp:Label ID="ProductCodeLabel" runat="server" 
                    Text='<%# Eval("ProductCode") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Eval("CategoryID") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                <br />
                MainImage:
                <asp:Label ID="MainImageLabel" runat="server" Text='<%# Eval("MainImage") %>' />
                <br />
                SmallImage:
                <asp:Label ID="SmallImageLabel" runat="server" 
                    Text='<%# Eval("SmallImage") %>' />
                <br />
                Image1:
                <asp:Label ID="Image1Label" runat="server" Text='<%# Eval("Image1") %>' />
                <br />
                Image2:
                <asp:Label ID="Image2Label" runat="server" Text='<%# Eval("Image2") %>' />
                <br />
                Image3:
                <asp:Label ID="Image3Label" runat="server" Text='<%# Eval("Image3") %>' />
                <br />
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" 
                    CommandArgument='<%# Eval("ProductID") %>' CommandName="Edit">Edit</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                    CommandArgument='<%# Eval("ProductID") %>' CommandName="Delete">Delete</asp:LinkButton>
            </SelectedItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MainImage") %>' />

                <br />
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
</asp:LinkButton></ItemTemplate></asp:DataList></div></form></body></html>