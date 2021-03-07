<%@ Page Title="物流管理" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Logistic.aspx.cs" Inherits="login.Logistic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h1  style="position:relative;left:45%;top:50px;" >物流管理</h1>
           <div style="text-align:center;">
               <asp:Button ID="訂單匯入作業" runat="server" Text="訂單匯入作業" style="width:500px;height:70px;font-size:40px;position:absolute;right:35%;top:40%;" OnClick="Import_Click"/>
               <asp:Button ID="訂單維護作業" runat="server" Text="訂單維護作業" style="width:500px;height:70px;font-size:40px;position:absolute;right:35%;top:53%" OnClick="Maintain_Click"/>
               <asp:Button ID="物流配車作業" runat="server" Text="物流配車作業" style="width:500px;height:70px;font-size:40px;position:absolute;right:35%;top:66%" OnClick="Distribute_Click"/>
              <asp:Button ID="報表管理" runat="server" Text="報表管理" style="width:500px;height:70px;font-size:40px;position:absolute;right:35%;top:79%" OnClick="Report_Click"/>
            </div>
             </asp:Content>   
