<%@ Page Title="路線管理系統" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogisticBox.aspx.cs" Inherits="masterpage_test.LogisticBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" EnableViewState="True">
    <h1  style="left:43%;top:50px;position:relative;" >物流箱管理系統</h1>
    <button style="left:47%;bottom:6%;position:absolute;width:80px;height:40px">新增</button>
    <asp:GridView ID="GridView3" runat="server" style="left:12%;bottom:10px;top:100px; position:relative;text-align:center;font-size:medium" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" Width="1200px" Height="200px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
            <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
            <asp:BoundField DataField="temptype" HeaderText="temptype" SortExpression="temptype" />
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
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString21 %>" DeleteCommand="DELETE FROM [LogisticBox] WHERE [id] = @id" InsertCommand="INSERT INTO [LogisticBox] ([id], [type], [length], [width], [height], [weight], [temptype], [other]) VALUES (@id, @type, @length, @width, @height, @weight, @temptype, @other)" SelectCommand="SELECT * FROM [LogisticBox]" UpdateCommand="UPDATE [LogisticBox] SET [type] = @type, [length] = @length, [width] = @width, [height] = @height, [weight] = @weight, [temptype] = @temptype, [other] = @other WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="length" Type="Double" />
            <asp:Parameter Name="width" Type="Double" />
            <asp:Parameter Name="height" Type="Double" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="length" Type="Double" />
            <asp:Parameter Name="width" Type="Double" />
            <asp:Parameter Name="height" Type="Double" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString16 %>" DeleteCommand="DELETE FROM [LogisticBox] WHERE [id] = @id" InsertCommand="INSERT INTO [LogisticBox] ([id], [type], [length], [width], [height], [weight], [temptype], [other]) VALUES (@id, @type, @length, @width, @height, @weight, @temptype, @other)" SelectCommand="SELECT * FROM [LogisticBox]" UpdateCommand="UPDATE [LogisticBox] SET [type] = @type, [length] = @length, [width] = @width, [height] = @height, [weight] = @weight, [temptype] = @temptype, [other] = @other WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="length" Type="Double" />
            <asp:Parameter Name="width" Type="Double" />
            <asp:Parameter Name="height" Type="Double" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="other" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="length" Type="Double" />
            <asp:Parameter Name="width" Type="Double" />
            <asp:Parameter Name="height" Type="Double" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="temptype" Type="String" />
            <asp:Parameter Name="other" Type="String" />
            <asp:Parameter Name="id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
</asp:Content>
