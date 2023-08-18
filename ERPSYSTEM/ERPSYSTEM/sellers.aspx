<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="sellers.aspx.cs" Inherits="ERPSYSTEM.sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



    <table class="w-100">
        <tr>
            <td class="text-center" colspan="4" style="height: 27px"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="text-white" style="background-color: #990033" Text="Welcome TO Seller Side Details :: Page"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td style="background-color: #999966">
                <asp:Label ID="Label3" runat="server" Text="Seller ID"></asp:Label>
            </td>
            <td style="width: 398px"><strong>
                <asp:TextBox ID="txtseller1" runat="server"></asp:TextBox>
                </strong></td>
            <td style="background-color: #999966">
                <asp:Label ID="Label7" runat="server" Text="Seller Address"></asp:Label>
            </td>
            <td><strong>
                <asp:TextBox ID="txtseller5" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="background-color: #999966">
                <asp:Label ID="Label4" runat="server" Text="Seller Email"></asp:Label>
            </td>
            <td style="width: 398px"><strong>
                <asp:TextBox ID="txtseller2" runat="server" CssClass="offset-sm-0"></asp:TextBox>
                </strong></td>
            <td style="background-color: #999966">
                <asp:Label ID="Label8" runat="server" Text="Seller D.O.B"></asp:Label>
            </td>
            <td><strong>
                <asp:TextBox ID="txtseller6" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="background-color: #999966">
                <asp:Label ID="Label5" runat="server" Text="Seller Name"></asp:Label>
            </td>
            <td style="width: 398px"><strong>
                <asp:TextBox ID="txtseller3" runat="server"></asp:TextBox>
                </strong></td>
            <td style="background-color: #999966">
                <asp:Label ID="Label9" runat="server" Text="Seller Gender"></asp:Label>
            </td>
            <td><strong>
                <asp:TextBox ID="txtseller7" runat="server"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td style="background-color: #999966">
                <asp:Label ID="Label6" runat="server" Text="Seller Password"></asp:Label>
            </td>
            <td style="width: 398px"><strong>
                <asp:TextBox ID="txtseller4" runat="server"></asp:TextBox>
                </strong></td>
            <td style="background-color: #999966">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="4"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="text-white" OnClick="Button1_Click" style="font-weight: bold; background-color: #660033" Text="Save" Width="97px" />
                <asp:Button ID="Button2" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #660033" Text="Search" Width="100px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #660033" Text="Update" Width="100px" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #660033" Text="Delete" Width="100px" OnClick="Button4_Click" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="sellid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="width: 471px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="sellid" HeaderText="sellid" SortExpression="sellid" ReadOnly="True" />
                        <asp:BoundField DataField="sellmail" HeaderText="sellmail" SortExpression="sellmail" />
                        <asp:BoundField DataField="sellname" HeaderText="sellname" SortExpression="sellname" />
                        <asp:BoundField DataField="sellpass" HeaderText="sellpass" SortExpression="sellpass" />
                        <asp:BoundField DataField="selladdress" HeaderText="selladdress" SortExpression="selladdress" />
                        <asp:BoundField DataField="selldob" HeaderText="selldob" SortExpression="selldob" />
                        <asp:BoundField DataField="sellgender" HeaderText="sellgender" SortExpression="sellgender" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineConnectionString9 %>" ProviderName="<%$ ConnectionStrings:MedicineConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [medeseller]"></asp:SqlDataSource>
                <br />
                </strong></td>
        </tr>
    </table>
    



</asp:Content>
