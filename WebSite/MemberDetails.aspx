<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="MemberDetails" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
                    <asp:TemplateField HeaderText="密碼" SortExpression="user_pwd">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("user_pwd") %>' ID="TextBox1"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("user_pwd") %>' ID="TextBox1" TextMode="Password"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("user_pwd") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="license" HeaderText="身分證字號" SortExpression="license"></asp:BoundField>
                    <asp:TemplateField HeaderText="生日" SortExpression="birth">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="TextBox2"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="TextBox2"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="性別" SortExpression="sex">
                        <EditItemTemplate>
                            <asp:RadioButton ID="RadioButton2" Text="男" GroupName="sex" Checked='<%# Eval("sex").ToString() == "1" ? true : false%>' runat="server" />
                            <asp:RadioButton ID="RadioButton1" Text="女" GroupName="sex" Checked='<%# Eval("sex").ToString() == "0" ? true : false%>' runat="server" />
                            <%--<asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox> --%>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("sex").ToString() == "1" ? "男" : "女" %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="權限" SortExpression="permission"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_pwd], [user_name], [license], [birth], [sex], [address], [tel], [permission]) VALUES (@user_id, @user_pwd, @user_name, @license, @birth, @sex, @address, @tel, @permission)" UpdateCommand="UPDATE [Member] SET [user_pwd] = @user_pwd, [user_name] = @user_name, [license] = @license, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel, [permission] = @permission WHERE [user_id] = @user_id">
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
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="user_id" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_pwd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="license" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="Member2.aspx">返回</a>
        </div>
    </form>
</body>
</html>
