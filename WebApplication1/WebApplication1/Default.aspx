<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .style1 {font-size:36px;color:red;}
    </style>
    <script>
        function myClick() {
            var input1 = document.getElementById("input1");
            input1.value = parseInt(input1.value) + 10;
            alert(input1.value);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:1024px;border:1px solid red;margin:0 auto;">
            <h1 class="style1">國立金門大學</h1>
            <h1>資訊工程學系</h1>
            <a href="About.html">關於我</a>
            <br />
            <br />
            <input id="input1" type="text" style="width:100px;" />
            <input type="button" value="button" onclick="myClick();" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button1" OnClick="Button1_Click" />
            <br />
            <br />
            <input id="input2" runat="server" type="text" style="width:100px;" />
            <input id="Button2" runat="server" type="button" value="button" onserverclick="Button2_ServerClick" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Button3" OnClick="Button3_Click" style="height: 27px" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
