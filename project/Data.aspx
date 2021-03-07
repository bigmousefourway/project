<%@ Page Title="基本資料維護" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="login.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1  style="position:relative;left:43%;top:50px;" >基本資料維護</h1>
             <div style="text-align:center;">
                    <asp:Button ID="人員" runat="server" Text="人員" style="width:300px;height:50px;font-size:30px;position:absolute;right:42%;top:40%;" OnClick="Employee_Click" />
                    <asp:Button ID="產品" runat="server" Text="產品" style="width:300px;height:50px;font-size:30px;position:absolute;right:42%;top:50%;" OnClick="Product_Click"/>
                    <asp:Button ID="店面" runat="server" Text="店面" style="width:300px;height:50px;font-size:30px;position:absolute;right:42%;top:60%;" OnClick="Store_Click"/>
                    <asp:Button ID="車輛" runat="server" Text="車輛" style="width:300px;height:50px;font-size:30px;position:absolute;right:42%;top:70%;" OnClick="Car_Click"/>
                    <asp:Button ID="物流箱" runat="server" Text="物流箱" style="width:300px;height:50px;font-size:30px;position:absolute;right:42%;top:80%;" OnClick="LogisticBox_Click"/>
            </div>
</asp:Content>
