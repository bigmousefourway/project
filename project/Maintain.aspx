<%@ Page Title="訂單維護" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Maintain.aspx.cs" Inherits="WebApplication1.maintain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1  style="left:45%;top:25%;position:absolute;" >訂單維護</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Gnum,Sname" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Gnum" HeaderText="Gnum" SortExpression="Gnum" />
            <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString23 %>" SelectCommand="SELECT Gnum, Sname FROM goods GROUP BY Gnum, Sname"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Gnum" HeaderText="Gnum" SortExpression="Gnum" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Ptype" HeaderText="Ptype" SortExpression="Ptype" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
        </Columns>
        
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString23 %>" SelectCommand="SELECT * FROM [goods] WHERE ([Gnum] = @Gnum)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Gnum" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString22 %>" SelectCommand="SELECT * FROM [goods] WHERE ([Gnum] = @Gnum)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Gnum" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
