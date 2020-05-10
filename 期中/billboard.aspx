<%@ Page Language="C#" AutoEventWireup="true" CodeFile="billboard.aspx.cs" Inherits="billboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <script>
        function sidebtn() {
            var sidebar = document.getElementsByClassName("sidebar");
            var content = document.getElementsByClassName("content");
            if (sidebar[0].style.width == "0px") {
                for (let i = 0; i < sidebar.length; i++)
                    sidebar[i].style.width = "140px";
                for (let i = 0; i < content.length; i++)
                    content[i].style.left = "140px";
            }
            else {
                for (let i = 0; i < sidebar.length; i++)
                    sidebar[i].style.width = "0px";
                for (let i = 0; i < content.length; i++)
                    content[i].style.left = "0px";
            }
        }

        function disableBtn(btn1) {
            document.getElementById(btn1).remove();
            if (btn1 == "btn_logout")
                document.getElementById("logout").remove();
        }
    </script>
        <div class="navbar">
            <button id="sidebtn" style="background: none;" onclick="sidebtn()">
                <i class="fa fa-bars"
                    style="color: white;"></i>
            </button>
            <a href="billboard.aspx">公布欄</a>
            <div class="dropdown">
                <button class="dropbtn" id="btn_login" onclick="document.location.href='Login.aspx'">登入</button>
                <button class="dropbtn" id="btn_logout"><%=Session["name"]%><i class="fa fa-caret-down"></i></button>
                <div class="dropdown-content" id="logout" hidden="true">
                    <li><a href="Logout.aspx">&nbsp;登出</a></li>
                </div>
            </div>
        </div>
        
        <div class="sidebar" style="width: 0px;">
            <ul>
                <li>侑</li>
                <li>儒</li>
                <li>好</li>
                <li>胖</li>
            </ul>
        </div>
    <form id="form1" runat="server">
        <div class="content">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                    <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content"></asp:BoundField>
                    <asp:BoundField DataField="Editor" HeaderText="Editor" SortExpression="Editor"></asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Billboard] ORDER BY [Time] DESC" DeleteCommand="DELETE FROM [Billboard] WHERE [code] = @code" InsertCommand="INSERT INTO [Billboard] ([code], [Title], [Content], [Editor], [Time]) VALUES (@code, @Title, @Content, @Editor, @Time)" UpdateCommand="UPDATE [Billboard] SET [Title] = @Title, [Content] = @Content, [Editor] = @Editor, [Time] = @Time WHERE [code] = @code">
                <DeleteParameters>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Editor" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Time" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Editor" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Time" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="code" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code"></asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                    <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content"></asp:BoundField>
                    <asp:BoundField DataField="Editor" HeaderText="Editor" SortExpression="Editor"></asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Billboard] WHERE ([code] = @code)" DeleteCommand="DELETE FROM [Billboard] WHERE [code] = @code" InsertCommand="INSERT INTO [Billboard] ([code], [Title], [Content], [Editor], [Time]) VALUES (@code, @Title, @Content, @Editor, @Time)" UpdateCommand="UPDATE [Billboard] SET [Title] = @Title, [Content] = @Content, [Editor] = @Editor, [Time] = @Time WHERE [code] = @code">
                <DeleteParameters>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Editor" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Time" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="code" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Editor" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Time" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="code" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
