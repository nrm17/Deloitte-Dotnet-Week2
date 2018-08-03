<%@ Page Title="" Language="C#" MasterPageFile="~/logo.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ASP_Project_final.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="119px" ImageUrl="~/depositphotos_70281165-stock-illustration-enter-button-icon.jpg" OnClick="ImageButton2_Click" Width="123px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="123px" ImageUrl="~/Exit-PNG-Picture.png" OnClick="ImageButton1_Click" Width="381px" />
            </td>
        </tr>
    </table>
</asp:Content>
