<%@ Page Title="" Language="C#" MasterPageFile="~/logo.Master" AutoEventWireup="true" CodeBehind="Checkin.aspx.cs" Inherits="ASP_Project_final.Checkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
            height: 36px;
            background-color: #6666FF;
        }
        .auto-style9 {
            width: 150px;
            height: 35px;
            background-color: #CCCCFF;
        }
        .auto-style10 {
            height: 35px;
            background-color: #CCCCFF;
        }
        .auto-style12 {
            height: 33px;
            background-color: #CCCCFF;
        }
        .auto-style13 {
            width: 20%;
            background-color: #CCCCFF;
        }
        .auto-style14 {
            text-align: center;
            width: 17%;
            background-color: #CCCCFF;
        }
        .auto-style16 {
            height: 35px;
            width: 35%;
            background-color: #CCCCFF;
        }
        .auto-style18 {
        height: 33px;
        width: 35%;
        background-color: #CCCCFF;
    }
        .auto-style21 {
        width: 150px;
        height: 33px;
        background-color: #CCCCFF;
    }
        .auto-style22 {
        width: 150px;
        background-color: #CCCCFF;
    }
        .auto-style23 {
            background-color: #CCCCFF;
        }
    .auto-style24 {
        background-color: #CCCCFF;
        text-align: center;
    }
    .auto-style26 {
        width: 41px;
        background-color: #CCCCFF;
        text-align: center;
    }
    .auto-style27 {
        width: 150px;
        background-color: #CCCCFF;
        text-align: center;
    }
    .auto-style28 {
        width: 35%;
        background-color: #CCCCFF;
    }
        .auto-style29 {
            width: 35%;
            background-color: #CCCCFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7" colspan="5">
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Visitor Info"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style10" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtFname" runat="server" Width="198px"></asp:TextBox>
            </td>
            <td class="auto-style16" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter your first name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style12" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter your last name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label5" runat="server" Text="Company"></asp:Label>
            </td>
            <td class="auto-style12" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtComp" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComp" ErrorMessage="Enter your company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label6" runat="server" Text="Visiting"></asp:Label>
            </td>
            <td class="auto-style23" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtVis" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtVis" ErrorMessage="Enter who you are visiting"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label7" runat="server" Text="ID Type"></asp:Label>
            </td>
            <td class="auto-style13" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:DropDownList ID="ddlIDtype" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>PAN Card</asp:ListItem>
                    <asp:ListItem>Drivers Licensce</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style14" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label13" runat="server" Text="ID Num"></asp:Label>
            </td>
            <td class="auto-style26" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtIDnum" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlIDtype" ErrorMessage="Enter your ID type" InitialValue="Select"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIDnum" ErrorMessage="Enter your id number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label8" runat="server" Text="Vehicle Number"></asp:Label>
            </td>
            <td class="auto-style23" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtVehicle" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtVehicle" ErrorMessage="Enter valid vehicle number" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label9" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td class="auto-style23" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtCon" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid number" ValidationExpression="\d{10}" ControlToValidate="txtCon"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCon" ErrorMessage="Enter contact number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Label ID="Label10" runat="server" Text="Purpose of Visit"></asp:Label>
            </td>
            <td class="auto-style23" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:TextBox ID="txtPov" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPov" ErrorMessage="Enter your purpose of visit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22" style="font-family: 'Microsoft Sans Serif'; font-size: large">&nbsp;</td>
            <td class="auto-style23" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">&nbsp;</td>
            <td class="auto-style28" style="font-family: 'Microsoft Sans Serif'; font-size: large">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
            </td>
            <td class="auto-style24" colspan="3" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
            <td class="auto-style29" style="font-family: 'Microsoft Sans Serif'; font-size: large">
                <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Home" />
            </td>
        </tr>
    </table>
</asp:Content>
