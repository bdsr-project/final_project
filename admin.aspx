<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 68px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 290px;
        }
        .auto-style6 {
            width: 290px;
        }
        .auto-style7 {
            width: 68px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 68px;
            height: 23px;
        }
        .auto-style10 {
            width: 290px;
            height: 23px;
        }
        .auto-style11 {
            width: 71px;
            height: 23px;
        }
        .auto-style12 {
            width: 71px;
        }
        .auto-style13 {
            height: 26px;
            width: 71px;
        }
    </style>
</head>
<body style="background-color:#CFDAC8">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center; font-family: 'Arial Black'; font-size: 18px;" class="auto-style8">Admin Profile </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left">
                </td>
                <td class="auto-style11" style="font-family: 'Arial Black'; font-size: 18px; text-align: justify;">
                    &nbsp;</td>
                <td class="auto-style10" style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left">
                </td>
                <td class="auto-style11">
                </td>
                <td class="auto-style10">
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="Label1" runat="server" Text="category"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem Value="eproducts">electronics</asp:ListItem>
                        <asp:ListItem Value="hnkproducts">home &amp; kitchen</asp:ListItem>
                        <asp:ListItem Value="bnmproducts">books &amp; magazines</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Products" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: left">
                    <asp:Label ID="p_name_lbl" runat="server" Text="product_name"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="p_name_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="p_price_lbl" runat="server" Text="product_price"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="p_price_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="p_description_lbl" runat="server" Text="product_description"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="p_des_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="p_quantity_lbl" runat="server" Text="product_quantity"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="p_quantity_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="p_img_lbl" runat="server" Text="product_img"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="p_img_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Label ID="p_id_lbl" runat="server" Text="product_id"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="p_id_txtbox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: left">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD_PRODUCT" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UPDATE_PRODUCT" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="DELETE_PRODUCT" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Logout" />
        </p>
    </form>
    </body>
</html>
