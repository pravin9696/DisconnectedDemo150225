<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="DisconnectedDemo150225.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add Employee</h1>


            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Employee" />
                    </td>
                    <td class="auto-style3">&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Enabled="False" OnClick="Button3_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Enabled="False" OnClick="Button4_Click" Text="Update" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
