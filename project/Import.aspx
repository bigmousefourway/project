<%@ Page Title="訂單匯入" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Import.aspx.cs" Inherits="WebApplication1.import" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1  style="left:45%;top:25%;position:absolute;" >訂單匯入</h1>
        <p>
            &nbsp;</p>
        
             <div style="background-color:white;height:450px;width:500px;position:absolute;left:33.5%;top:320px;">
                 <div style="text-align:center;padding-top:90px">
               <span style="font-size:70px;color:red">爭鮮</span>
                <span style="font-size:40px;color:white">匯入系統</span>
                     
            </div>
            <asp:Button ID="Button1" runat="server" Height="60px"   Text="瀏覽" Width="100px" font-size="Medium" Style="position:relative;top:100px;left:192px;"  />

            <asp:Button ID="Button2" runat="server" Height="60px"  Text="匯入" Width="100px" font-size="Medium" Style="position:relative;top:180px;left:95px;" OnClick="Button2_Click"  />
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                 
                 </div>
</asp:Content>
