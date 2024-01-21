<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 27%;
            height: 341px;
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        .auto-style2 {
            width: 23px;
        }
        .auto-style3 {
            position: absolute;
            top: 347px;
            left: 5px;
            z-index: 1;
            width: 486px;
        }
        .auto-style4 {
            width: 23px;
            height: 61px;
        }
        .auto-style5 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">USERNAME</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2">PASSWORD</td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="394px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem Selected="True">User</asp:ListItem>
                </asp:DropDownList></td>
            
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="CLEAR" OnClick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="SIGN IN" OnClick="Button2_Click" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button3" runat="server" Text="DONT HAVE ACCOUNT" /></td>
            
        </tr>
    </table>
                </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text=""></asp:Label>
</form>
</body>
</html>
