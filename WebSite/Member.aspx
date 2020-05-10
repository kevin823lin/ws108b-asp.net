<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員管理頁面</h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="你好，歡迎光臨"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登出" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" PageSize="2" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" SortExpression="user_id" ReadOnly="True" />
                    <asp:BoundField DataField="user_pwd" HeaderText="密碼" SortExpression="user_pwd" />
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [user_pwd], [user_name], [tel] FROM [Member]" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_pwd], [user_name], [tel]) VALUES (@user_id, @user_pwd, @user_name, @tel)" UpdateCommand="UPDATE [Member] SET [user_pwd] = @user_pwd, [user_name] = @user_name, [tel] = @tel WHERE [user_id] = @user_id">
                <DeleteParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_pwd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_pwd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource2" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
                    <asp:BoundField DataField="user_pwd" HeaderText="密碼" SortExpression="user_pwd"></asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="license" HeaderText="身分證字號" SortExpression="license"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="生日" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="性別" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_pwd], [user_name], [license], [birth], [sex], [address], [tel]) VALUES (@user_id, @user_pwd, @user_name, @license, @birth, @sex, @address, @tel)" SelectCommand="SELECT * FROM [Member] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [Member] SET [user_pwd] = @user_pwd, [user_name] = @user_name, [license] = @license, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel WHERE [user_id] = @user_id">
                <DeleteParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_pwd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="license" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="user_id" Type="String"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_pwd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="license" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
