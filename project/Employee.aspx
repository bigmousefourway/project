<%@ Page Title="人員管理系統" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs"  Inherits="masterpage_test.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1  style="left:3%; top:50px;position:relative;" >人員管理系統</h1>
    <asp:Label ID="Label_contentPage" runat="server" ></asp:Label><br/>
    <asp:Button ID="新增" runat="server"  visible="true"  OnClick="上傳資料_Click" Text="新增"  style="left:47%;bottom:6%;position:absolute;width:80px;height:40px" />
     <div runat="server" visible="false" id="add">
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnect %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [password], [name], [idnum], [gender], [age], [position]) VALUES (@memid, @account, @password, @name, @idnum, @gender, @age, @position)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [password] = @password, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position WHERE [memid] = @memid">
             <DeleteParameters>
                 <asp:Parameter Name="memid" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="memid" Type="String" />
                 <asp:Parameter Name="account" Type="String" />
                 <asp:Parameter Name="password" Type="String" />
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="idnum" Type="String" />
                 <asp:Parameter Name="gender" Type="String" />
                 <asp:Parameter Name="age" Type="String" />
                 <asp:Parameter Name="position" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="account" Type="String" />
                 <asp:Parameter Name="password" Type="String" />
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="idnum" Type="String" />
                 <asp:Parameter Name="gender" Type="String" />
                 <asp:Parameter Name="age" Type="String" />
                 <asp:Parameter Name="position" Type="String" />
                 <asp:Parameter Name="memid" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
        
    </div>
    
    <asp:GridView ID="GridView1" runat="server" style="left:5%;top:70px;position:relative;text-align:center;font-size:medium" Height="300px" Width="1400px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5"  CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="memid" OnPageIndexChanging="GridView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" Width="1200px" Wrap="False" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('確認刪除此筆資料嗎?')" Text="刪除"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="memid" HeaderText="memid" ReadOnly="True" SortExpression="memid" />
            <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="idnum" HeaderText="idnum" SortExpression="idnum" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
            <asp:BoundField DataField="authority" HeaderText="authority" SortExpression="authority" />
            <asp:TemplateField ShowHeader="False"></asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" Wrap="False" />
        <EmptyDataRowStyle Wrap="True" />
        <EmptyDataTemplate>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="memid" DataSourceID="SqlDataSource6" DefaultMode="Insert" Height="50px" Width="206px">
                <Fields>
                    <asp:BoundField DataField="memid" HeaderText="memid" ReadOnly="True" SortExpression="memid" />
                    <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="idnum" HeaderText="idnum" SortExpression="idnum" />
                    <asp:TemplateField HeaderText="gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("gender") %>'>
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:TemplateField HeaderText="position" SortExpression="position">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("position") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("position") %>'>
                                <asp:ListItem>一般職員</asp:ListItem>
                                <asp:ListItem>行銷部門主管</asp:ListItem>
                                <asp:ListItem>測試員</asp:ListItem>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("position") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="authority" SortExpression="authority">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("authority") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("authority") %>'>
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>N</asp:ListItem>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("authority") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowCancelButton="False" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString18 %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [password], [name], [idnum], [gender], [age], [position]) VALUES (@memid, @account, @password, @name, @idnum, @gender, @age, @position)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [password] = @password, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position WHERE [memid] = @memid">
                <DeleteParameters>
                    <asp:Parameter Name="memid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="memid" Type="String" />
                    <asp:Parameter Name="account" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="idnum" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="String" />
                    <asp:Parameter Name="position" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="account" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="idnum" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="age" Type="String" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="memid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:Button ID="bntBack" runat="server" OnClick="bntBack_Click" Text="返回" />
        </EmptyDataTemplate>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <PagerTemplate>
            <table>
                <tr>
                    <td style="text-align: right">第&nbsp;<asp:Label ID="lblPageIndex" runat="server" Text="<%#((GridView)Container.Parent.Parent).PageIndex + 1 %>" ForeColor="Blue"></asp:Label>&nbsp;頁，
                                共&nbsp;<asp:Label ID="lblPageCount" runat="server" Text="<%# ((GridView)Container.Parent.Parent).PageCount %>" ForeColor="Blue"></asp:Label>&nbsp;頁，
                                <asp:LinkButton ID="btnFirst" runat="server" CausesValidation="False" CommandArgument="First" CommandName="Page" Text="第一頁"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:LinkButton ID="btnPrev" runat="server" CausesValidation="False" CommandArgument="Prev" CommandName="Page" Text="上一頁"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:LinkButton ID="btnNext" runat="server" CausesValidation="False" CommandArgument="Next" CommandName="Page" Text="下一頁"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:LinkButton ID="btnLast" runat="server" CausesValidation="False" CommandArgument="Last" CommandName="Page" Text="最後一頁"></asp:LinkButton>&nbsp;&nbsp;
                                <asp:TextBox ID="txtNewPageIndex" runat="server" Text="<%# ((GridView)Container.Parent.Parent).PageIndex + 1%>" Width="120px"></asp:TextBox>
                        <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-1" CommandName="Page" Text="GO"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </PagerTemplate>
        <RowStyle BackColor="#EFF3FB" Wrap="True" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    
    
    
 
    
    
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:new %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [name], [idnum], [gender], [age], [position], [authority]) VALUES (@memid, @account, @name, @idnum, @gender, @age, @position, @authority)" SelectCommand="SELECT [memid], [account], [name], [idnum], [gender], [age], [position], [authority] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position, [authority] = @authority WHERE [memid] = @memid">
        <DeleteParameters>
            <asp:Parameter Name="memid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="memid" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="authority" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="authority" Type="String" />
            <asp:Parameter Name="memid" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    
    
    
 
    
    
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString22 %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [name], [idnum], [gender], [age], [position]) VALUES (@memid, @account, @name, @idnum, @gender, @age, @position)" SelectCommand="SELECT [memid], [account], [name], [idnum], [gender], [age], [position] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position WHERE [memid] = @memid">
        <DeleteParameters>
            <asp:Parameter Name="memid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="memid" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="memid" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    
    
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString17 %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [password], [name], [idnum], [gender], [age], [position]) VALUES (@memid, @account, @password, @name, @idnum, @gender, @age, @position)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [password] = @password, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position WHERE [memid] = @memid">
        <DeleteParameters>
            <asp:Parameter Name="memid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="memid" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="memid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString5 %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [name], [idnum], [gender], [age], [position]) VALUES (@memid, @account, @name, @idnum, @gender, @age, @position)" SelectCommand="SELECT [memid], [account], [name], [idnum], [gender], [age], [position] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position WHERE [memid] = @memid">
        <DeleteParameters>
            <asp:Parameter Name="memid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="memid" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="memid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:DetailsView ID="DetailsView3" runat="server" DataSourceID="SqlDataSource6" style="left:47%;bottom:15%;position:absolute" Height="200px" Visible="False" Width="250px" AutoGenerateRows="False" DataKeyNames="memid">
        <Fields>
            <asp:BoundField DataField="memid" HeaderText="memid" ReadOnly="True" SortExpression="memid" />
            <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="idnum" HeaderText="idnum" SortExpression="idnum" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
            <asp:BoundField DataField="authority" HeaderText="authority" SortExpression="authority" />
        </Fields>
    </asp:DetailsView>
    
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:new %>" DeleteCommand="DELETE FROM [Employee] WHERE [memid] = @memid" InsertCommand="INSERT INTO [Employee] ([memid], [account], [password], [name], [idnum], [gender], [age], [position], [authority]) VALUES (@memid, @account, @password, @name, @idnum, @gender, @age, @position, @authority)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [account] = @account, [password] = @password, [name] = @name, [idnum] = @idnum, [gender] = @gender, [age] = @age, [position] = @position, [authority] = @authority WHERE [memid] = @memid">
        <DeleteParameters>
            <asp:Parameter Name="memid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="memid" Type="String" />
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="authority" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="account" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="idnum" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="authority" Type="String" />
            <asp:Parameter Name="memid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
