<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertUserInfo.aspx.cs" Inherits="WebProjects.InsertUserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            border: 2px solid #99CCFF;
            background-color: #FF9966;
        }
        .auto-style2 {
            width: 379px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: &quot;Bahnschrift Light Condensed&quot;; font-size: x-large">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Enter Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Status</td>
                <td>
                    <asp:TextBox ID="txtStatus" runat="server" Enabled="False">Inactive</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
