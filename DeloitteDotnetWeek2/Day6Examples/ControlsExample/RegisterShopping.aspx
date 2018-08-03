<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterShopping.aspx.cs" Inherits="ControlsExample.RegisterShopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 287px;
            border: 1px solid #000000;
            background-color: #00FFFF;
        }
        .auto-style5 {
            width: 127px;
        }
        .auto-style6 {
            width: 72px;
        }
        .auto-style7 {
            width: 72px;
            height: 40px;
        }
        .auto-style8 {
            width: 127px;
            height: 40px;
        }
        .auto-style9 {
            width: 72px;
            height: 88px;
        }
        .auto-style10 {
            width: 127px;
            height: 88px;
        }
        .auto-style11 {
            width: 72px;
            height: 169px;
        }
        .auto-style12 {
            width: 127px;
            height: 169px;
        }
    </style>
</head>
<body style="width: 705px; height: 345px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Enter Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Select Gender</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Select Mmbership</td>
                <td class="auto-style10">
                    <asp:RadioButton ID="rbFree" runat="server" GroupName="membership" Text="Free" />
                    <asp:RadioButton ID="rbPaid" runat="server" GroupName="membership" Text="Paid" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Select shopping preference</td>
                <td class="auto-style12">
                    <asp:CheckBoxList ID="cblShopping" runat="server">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Tablets</asp:ListItem>
                        <asp:ListItem>kitchen</asp:ListItem>
                        <asp:ListItem>apparels</asp:ListItem>
                        <asp:ListItem>cosmetic</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Prefer COD</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="cbCOD" runat="server" Text="Yes" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Enter Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
