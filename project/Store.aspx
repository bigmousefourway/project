<%@ Page Title="店面管理系統" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="masterpage_test.Store" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" EnableViewState="True">
    <h1  style="left:43%;top:50px;position:relative;" >店面管理系統</h1>
   
    <asp:GridView ID="GridView4" runat="server" style="left:14%;bottom:10px;top:100px; position:relative;text-align:center;font-size:medium" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1100px" Height="200px" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" Width="1200px" Wrap="False" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="name"     HeaderText="name" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="address"     HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="part" HeaderText="part" SortExpression="part" />
            <asp:BoundField DataField="limittime" HeaderText="limittime" SortExpression="limittime" />
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
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString20 %>" DeleteCommand="DELETE FROM [Store] WHERE [name] = @name" InsertCommand="INSERT INTO [Store] ([name], [type], [address], [part], [limittime], [other]) VALUES (@name, @type, @address, @part, @limittime, @other)" SelectCommand="SELECT * FROM [Store]" UpdateCommand="UPDATE [Store] SET [type] = @type, [address] = @address, [part] = @part, [limittime] = @limittime, [other] = @other WHERE [name] = @name">
        <DeleteParameters>
            <asp:Parameter Name="name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="part" Type="String" />
            <asp:Parameter DbType="Time" Name="limittime" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="part" Type="String" />
            <asp:Parameter DbType="Time" Name="limittime" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
   
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString9 %>" DeleteCommand="DELETE FROM [Store] WHERE [name] = @name" InsertCommand="INSERT INTO [Store] ([name], [type], [address], [part], [limittime], [other]) VALUES (@name, @type, @address, @part, @limittime, @other)" SelectCommand="SELECT * FROM [Store]" UpdateCommand="UPDATE [Store] SET [type] = @type, [address] = @address, [part] = @part, [limittime] = @limittime, [other] = @other WHERE [name] = @name">
        <DeleteParameters>
            <asp:Parameter Name="name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="part" Type="String" />
            <asp:Parameter DbType="Time" Name="limittime" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="part" Type="String" />
            <asp:Parameter DbType="Time" Name="limittime" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
   
   <button style="left:47%;bottom:6%;position:absolute;width:80px;height:40px">新增</button>
    
</asp:Content>

