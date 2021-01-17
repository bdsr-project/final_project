<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #CFDAC8">
    <form id="form1" runat="server">
        <div style="height: 1230px; width: 944px;">
            <table style="width:100%;">
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                    </td>
                    <td style="text-align: left">
                        <asp:Button ID="btnSignup" runat="server" OnClick="btnSignup_Click" Text="SignUp" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        Unable to recall?
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Forget Password" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
