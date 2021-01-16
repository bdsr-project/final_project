<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 224px;
        }
        .auto-style2 {
            height: 45px;
        }
        .auto-style3 {
            width: 784px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4" style="text-align: center">
                <asp:Label ID="Label9" style="font-size:28px" runat="server" Text="Your Profile"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" rowspan="2" style="text-align: center">&nbsp;</td>
                <td colspan="2" style="text-align: justify">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" GridLines="None" Height="601px" Width="549px">
                        <Fields>
                            <asp:BoundField DataField="username" HeaderText="User Name :" SortExpression="username" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name :" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name :" SortExpression="LastName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender :" SortExpression="Gender" />
                            <asp:BoundField DataField="mobile_number" HeaderText="Mobile number :" SortExpression="mobile_number" />
                            <asp:BoundField DataField="email" HeaderText="Email Id :" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="Address :" SortExpression="address" />
                            <asp:BoundField DataField="Country" HeaderText="Country :" SortExpression="Country" />
                        </Fields>
                    </asp:DetailsView>
                    <br />
                </td>
                <td rowspan="2" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="text-align: right">&nbsp;</td>
                <td class="auto-style4" style="text-align: left">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdsrConnectionString %>" SelectCommand="SELECT [username], [FirstName], [LastName], [Gender], [mobile_number], [email], [address], [Country] FROM [users] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="uname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 100%;">
            <tr>
                <td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnhome" runat="server" OnClick="Button4_Click" Text="&lt;&lt;Back To Home" />
&nbsp;
                    <asp:Button ID="btnchangepassword" runat="server" OnClick="btnchangepassword_Click" Text="Change Password" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
