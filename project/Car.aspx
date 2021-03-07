<%@ Page Title="車輛管理系統" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="masterpage_test.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" EnableViewState="True">
    <h1  style="left:43%; top:50px;position:relative;" >車輛管理系統</h1>
   
    
    <asp:GridView ID="GridView5" runat="server"  style="left:15%;bottom:10px;top:100px; position:relative;text-align:center;font-size:medium" AutoGenerateColumns="False" DataKeyNames="Num" DataSourceID="SqlDataSource1" AllowPaging="True" Width="1100px" Height="200px" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Button" />
            <asp:BoundField DataField="Num" HeaderText="Num" ReadOnly="True" SortExpression="Num" />
            <asp:BoundField DataField="Dimension" HeaderText="Dimension" SortExpression="Dimension" />
            <asp:BoundField DataField="Temperature" HeaderText="Temperature" SortExpression="Temperature" />
            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
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
    

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString18 %>" DeleteCommand="DELETE FROM [Car] WHERE [Num] = @Num" InsertCommand="INSERT INTO [Car] ([Num], [Dimension], [Temperature], [Area]) VALUES (@Num, @Dimension, @Temperature, @Area)" SelectCommand="SELECT * FROM [Car]" UpdateCommand="UPDATE [Car] SET [Dimension] = @Dimension, [Temperature] = @Temperature, [Area] = @Area WHERE [Num] = @Num">
        <DeleteParameters>
            <asp:Parameter Name="Num" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Num" Type="String" />
            <asp:Parameter Name="Dimension" Type="String" />
            <asp:Parameter Name="Temperature" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dimension" Type="String" />
            <asp:Parameter Name="Temperature" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="Num" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    

    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString10 %>" DeleteCommand="DELETE FROM [Car] WHERE [Num] = @Num" InsertCommand="INSERT INTO [Car] ([Num], [Dimension], [Temperature], [Area]) VALUES (@Num, @Dimension, @Temperature, @Area)" SelectCommand="SELECT * FROM [Car]" UpdateCommand="UPDATE [Car] SET [Dimension] = @Dimension, [Temperature] = @Temperature, [Area] = @Area WHERE [Num] = @Num">
        <DeleteParameters>
            <asp:Parameter Name="Num" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Num" Type="String" />
            <asp:Parameter Name="Dimension" Type="String" />
            <asp:Parameter Name="Temperature" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dimension" Type="String" />
            <asp:Parameter Name="Temperature" Type="String" />
            <asp:Parameter Name="Area" Type="String" />
            <asp:Parameter Name="Num" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

    
    
    
     <button style="left:47%;bottom:6%;position:absolute;width:80px;height:40px">新增</button>
    
   

    
</asp:Content>