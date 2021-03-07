<%@ Page Title="產品管理系統" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="project.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1  style="left:43%;top:50px;position:relative;" >產品管理系統</h1>
    <button style="left:47%;bottom:6%;position:absolute;width:80px;height:40px">新增</button>
    <asp:GridView ID="GridView2" runat="server" style="left:5%;top:100px;position:relative;text-align:center;font-size:medium" Height="300px" Width="1400px" DataKeyNames="num" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="3" AllowSorting="True" AutoGenerateColumns="False" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="num" HeaderText="num" ReadOnly="True" SortExpression="num" />
            <asp:BoundField DataField="temptype" HeaderText="temptype" SortExpression="temptype" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
            <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
            <asp:BoundField DataField="other" HeaderText="other" SortExpression="other" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString19 %>" DeleteCommand="DELETE FROM [Product] WHERE [num] = @num" InsertCommand="INSERT INTO [Product] ([num], [temptype], [name], [length], [width], [height], [weight], [other]) VALUES (@num, @temptype, @name, @length, @width, @height, @weight, @other)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [temptype] = @temptype, [name] = @name, [length] = @length, [width] = @width, [height] = @height, [weight] = @weight, [other] = @other WHERE [num] = @num">
        <DeleteParameters>
            <asp:Parameter Name="num" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="num" Type="String" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="num" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString15 %>" DeleteCommand="DELETE FROM [Product] WHERE [num] = @num" InsertCommand="INSERT INTO [Product] ([num], [temptype], [name], [length], [width], [height], [weight], [other]) VALUES (@num, @temptype, @name, @length, @width, @height, @weight, @other)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [temptype] = @temptype, [name] = @name, [length] = @length, [width] = @width, [height] = @height, [weight] = @weight, [other] = @other WHERE [num] = @num">
        <DeleteParameters>
            <asp:Parameter Name="num" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="num" Type="String" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="length" Type="Int32" />
            <asp:Parameter Name="width" Type="Int32" />
            <asp:Parameter Name="height" Type="Int32" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="num" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    
</asp:Content>
