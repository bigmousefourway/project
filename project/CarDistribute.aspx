<%@ Page Title="物流配車作業" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CarDistribute.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="新增" Style="bottom:10%;left:47%;position:absolute;width:80px;height:40px" />
        <asp:Button ID="Button2" runat="server" Text="下一步" Style="bottom:10%;left:80%;position:absolute;width:80px;height:40px" />
        <h1  style="left:43%;top:50px;position:relative;" >物流配車作業</h1>
     <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" Style="text-align:center;top:40%;left:28%;position:absolute;height:30%;width:40%;" CellPadding="4" DataKeyNames="carnum" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="carnum" HeaderText="車牌" SortExpression="carnum" ReadOnly="True" />
             <asp:BoundField DataField="driver" HeaderText="司機" SortExpression="driver" />
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
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString12 %>" DeleteCommand="DELETE FROM [Driver] WHERE [carnum] = @carnum" InsertCommand="INSERT INTO [Driver] ([carnum], [driver]) VALUES (@carnum, @driver)" SelectCommand="SELECT * FROM [Driver]" UpdateCommand="UPDATE [Driver] SET [driver] = @driver WHERE [carnum] = @carnum">
            <DeleteParameters>
                <asp:Parameter Name="carnum" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="carnum" Type="String" />
                <asp:Parameter Name="driver" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="driver" Type="String" />
                <asp:Parameter Name="carnum" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

