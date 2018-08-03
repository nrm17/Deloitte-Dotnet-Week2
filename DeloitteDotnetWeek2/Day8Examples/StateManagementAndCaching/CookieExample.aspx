<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieExample.aspx.cs" Inherits="StateManagementAndCaching.CookieExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="font-family: 'Arial Black'; font-size: large">
            <tr>
                <td class="auto-style2">Enter username</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Cookie" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnRead" runat="server" OnClick="btnRead_Click" Text="Read Cookie" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
