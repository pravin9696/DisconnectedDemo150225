<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="DisconnectedDemo150225.AddEmployee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
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
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Delete By City" />
&nbsp;
                        <br />
                        <br />
                        <asp:Button ID="Button6" runat="server" CausesValidation="False" OnClick="Button6_Click" Text="Delete Employee" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Insert Command" />
                        <br />
                        <br />
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Insert SP" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Update Command" />
                        <br />
                        <br />
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="update Using SP" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1"/>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Delete By SP" />
                        <br />
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">select Item</asp:ListItem>
                            <asp:ListItem>AA</asp:ListItem>
                            <asp:ListItem>BB</asp:ListItem>
                            <asp:ListItem>CC</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
