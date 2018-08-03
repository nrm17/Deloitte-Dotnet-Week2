<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="binding6.aspx.cs" Inherits="WebProjects.binding6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table border =" 1">
                    <tr>
                         <td style =" background-color:aqua;font-size:x-large">Register Shopping data </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table border =" 1" style ="background-color:burlywood;font-size:x-large">
                    <tr>
                        <th> Id</th>
                        <th> Name</th>
                        <th>Shopping Preference</th>
                          <th>Membership</th>
                          <th>Gender</th>
                          <th>Cod</th>
                          <th>Password</th>
                       
                                            </tr>

                    <tr>
                        <td> <%# Eval("Id") %></td>
                        <td> <%# Eval("Name") %></td>
                        
                            <td> <%# Eval("ShoppingPreference") %></td>
                           <td>  <%# Eval("Membership") %></td>
                            <td> <%# Eval("Gender") %></td>
                            
                           <td>  <%# Eval("COD") %></td>
                           
                            <td>
                            <%# Eval("Password") %>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <h1> End of data</h1>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" DeleteCommand="DELETE FROM [RegisterShopping] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND (([COD] = @original_COD) OR ([COD] IS NULL AND @original_COD IS NULL)) AND [Password] = @original_Password" InsertCommand="INSERT INTO [RegisterShopping] ([Name], [Gender], [Membership], [ShoppingPreference], [COD], [Password]) VALUES (@Name, @Gender, @Membership, @ShoppingPreference, @COD, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RegisterShopping]" UpdateCommand="UPDATE [RegisterShopping] SET [Name] = @Name, [Gender] = @Gender, [Membership] = @Membership, [ShoppingPreference] = @ShoppingPreference, [COD] = @COD, [Password] = @Password WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND (([COD] = @original_COD) OR ([COD] IS NULL AND @original_COD IS NULL)) AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
