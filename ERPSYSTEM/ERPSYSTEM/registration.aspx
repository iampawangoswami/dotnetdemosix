<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="ERPSYSTEM.login" %>
<!DOCTYPE html>
<head>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
        }
        .auto-style2 {
            text-align: left;
            background-color: #666633;
        }
        .auto-style5 {
            background-color: #666633;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #009933;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            background-color: #990033;
        }
    </style>
</head>

<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="User_Name"></asp:Label>
                </strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Email"></asp:Label>
                </strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Password"></asp:Label>
                </strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2"><strong><asp:Button ID="btnregister" runat="server" CssClass="auto-style7" Height="34px" OnClick="btnregister_Click" Text="Signup " Width="177px" />
                <asp:Button ID="btnlogin" runat="server" CssClass="auto-style8" Height="34px" Text="Login" Width="85px" OnClick="btnlogin_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server">Don&#39;t Have Account Register Now</asp:HyperLink>
            </td>
        </tr>
    </table>
</form>

