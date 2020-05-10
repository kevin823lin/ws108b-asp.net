<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        /*
        $(document).ready(function () {
            $("#Button1").click(function () {
                var id = $("#TextBox1").val();
                var password = $("#TextBox2").val();
                if (id == "" || password == "") {
                    alert("帳號密碼不可為空白");
                    return false;
                }
            });
        })
        function validation() {
            var input1 = document.getElementById("TextBox1");
            var input2 = document.getElementById("TextBox2");
            if (input1.value == "" || input2.value == "") {
                alert("帳號密碼不可為空白");
                return false;
            }
            return true;
        }
        */
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset style="width: 170px; padding: 20px; background-color: aquamarine; border-color: blue;">
            <legend>系統登入</legend>
            <div>
                <asp:Label ID="Label1" runat="server" Text="帳號:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="100"></asp:TextBox>
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="帳號不可為空白" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
            </div>
            <div style="padding-top: 10px;">
                <asp:Label ID="Label2" runat="server" Text="密碼:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="100" TextMode="Password"></asp:TextBox>
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密碼不可為空白" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </p>
            </div>
            <div style="padding-top: 10px; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="登入" Width="160" OnClick="Button1_Click" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_Id], [user_pwd], [user_name], [permission] FROM [Member] WHERE (([user_Id] = @user_Id) AND ([user_pwd] = @user_pwd))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="user_Id" Type="String"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="user_pwd" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </fieldset>
        <p>
            <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>
