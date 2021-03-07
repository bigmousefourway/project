<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="page.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入</title>
</head>
<body background-color:"white">
    <form id="form1" runat="server">
        <div style="background-color:black;height:500px;width:500px;position:absolute;left:30%;top:10%;">
            <div style="text-align:center;padding-top:90px">
               <span style="font-size:70px;color:red">爭鮮</span>
                <span style="font-size:40px;color:white">配送系統</span>
            </div>
            <div style="text-align:center">
            <p style="font-size:30px;color:white">帳號   <asp:TextBox ID="account" runat="server" style="font-size:30px;color:black;background-color:white;width:300px"></asp:TextBox>
                </p>
            <p style="font-size:30px;color:white">密碼   <asp:TextBox ID="password" runat="server" style="font-size:30px;color:black;background-color:white;width:300px" TextMode="Password"></asp:TextBox></p>
                   
                       <asp:Button ID="login" runat="server" Text="登入" Style="width:90px;height:60px;" OnClick="Iscorrect_Click"/>
          </div>

        </div>
    </form>
</body>
</html>
