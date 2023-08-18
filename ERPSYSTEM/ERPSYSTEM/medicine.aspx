<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="medicine.aspx.cs" Inherits="ERPSYSTEM.medicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">
    <asp:Label ID="Label7" runat="server" Text="Medicine Code"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">

    <asp:Label ID="Label8" runat="server" Text="Medicine Name"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">
    <asp:Label ID="Label9" runat="server" Text="Medicine Price"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">
    <asp:Label ID="Label4" runat="server" Text="Medicine Stock"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">
    <asp:Label ID="Label10" runat="server" Text="Medicine Expiry Date"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 161px; background-color: #669999 !important;" class="bg-white">
    <asp:Label ID="Label11" runat="server" Text="Medicine Categeory"></asp:Label>
            </td>
            <td class="bg-white">
    <asp:TextBox ID="txt6" runat="server"></asp:TextBox>
        </td>
        </tr>       
        <tr>
            <td colspan="2" style="height: 10px">
                <strong>
                <asp:Button ID="savebtn" runat="server" Text="Save" CssClass="text-white" OnClick="savebtn_Click1" style="font-weight: bold; background-color: #3366FF" Width="75px" />
                <asp:Button ID="btnsearch" runat="server" CssClass="text-white" OnClick="btnsearch_Click" style="font-weight: bold; background-color: #993399" Text="Search" />
                <asp:Button ID="updatebtn" runat="server" Text="Update" CssClass="text-white" style="font-weight: bold; background-color: #006600" Width="75px" OnClick="updatebtn_Click" />
                <asp:Button ID="deletebtn" runat="server" Text="Delete" CssClass="text-white" style="font-weight: bold; background-color: #CC0000" Width="75px" OnClick="deletebtn_Click" />
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="text-white" OnClick="Button1_Click" style="font-weight: bold; background-color: #FF9933" Text="Search Show GRB" />
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <h2>Medicine List</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="medcode" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="medcode" HeaderText="medcode" ReadOnly="True" SortExpression="medcode" />
                <asp:BoundField DataField="medname" HeaderText="medname" SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="medprice" SortExpression="medprice" />
                <asp:BoundField DataField="medstock" HeaderText="medstock" SortExpression="medstock" />
                <asp:BoundField DataField="medexpdate" HeaderText="medexpdate" SortExpression="medexpdate" />
                <asp:BoundField DataField="medcategeory" HeaderText="medcategeory" SortExpression="medcategeory" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:ButtonField Text="Button1" CommandName="1" />
                <asp:ButtonField Text="Button2" CommandName="2" />
                <asp:ButtonField CommandName="3" Text="Button3" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineConnectionString11 %>" ProviderName="<%$ ConnectionStrings:MedicineConnectionString11.ProviderName %>" SelectCommand="SELECT * FROM [medicinetbl]" ></asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="medcode" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="medcode" HeaderText="medcode" ReadOnly="True" SortExpression="medcode" />
                <asp:BoundField DataField="medname" HeaderText="medname" SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="medprice" SortExpression="medprice" />
                <asp:BoundField DataField="medstock" HeaderText="medstock" SortExpression="medstock" />
                <asp:BoundField DataField="medexpdate" HeaderText="medexpdate" SortExpression="medexpdate" />
                <asp:BoundField DataField="medcategeory" HeaderText="medcategeory" SortExpression="medcategeory" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineConnectionString14 %>" ProviderName="<%$ ConnectionStrings:MedicineConnectionString14.ProviderName %>" SelectCommand="SELECT * FROM [medicinetbl]"></asp:SqlDataSource>
    </p>
                        </asp:Content>
