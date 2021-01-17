<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword_bdsr.aspx.cs" Inherits="ChangePassword_bdsr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 58px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            height: 58px;
            width: 197px;
        }
        .auto-style7 {
            width: 197px;
        }
        .auto-style8 {
            height: 31px;
            width: 197px;
        }
        .auto-style10 {
            height: 92px;
            width: 197px;
        }
        .auto-style11 {
            height: 92px;
        }
        .auto-style12 {
            height: 92px;
            width: 196px;
        }
        .auto-style13 {
            width: 196px;
        }
        .auto-style14 {
            height: 31px;
            width: 196px;
        }
        .auto-style15 {
            height: 58px;
            width: 196px;
        }
    </style>
</head>
<body style="background-color: #CFDAC8">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style10"style="font-size:26px">Reset Password</td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="username:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Current Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcurrentpassword" runat="server" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="New Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnewpassword" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style14"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Confirm New Password :"></asp:Label>
                 </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtconfirmnewpassword" runat="server" Width="204px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpassword" ControlToValidate="txtconfirmnewpassword" ErrorMessage="Passwords are not matching"></asp:CompareValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style15"></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" />
                 </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
