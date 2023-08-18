<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="ERPSYSTEM.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="container-fluid">
        <div class="row mt-5">
        </div>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-10 bg-white">
                <div class="row mb-3">
                    <div class="col-6">
                        <div class="row mb-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Category Name" id="catnametb">
                            </div>
                            <div class="row mb-3">
                                <div class="col d-grid">
                                    <asp:Button ID="Button1" runat="server" Text="Edit" class="btn-btn-success btn-block" Style="background-color: #006600" Width="70px" />
                                </div>
                                <div class="col d-grid">
                                    <asp:Button ID="Button2" runat="server" Text="Save" class="btn-btn-primary btn-block" Style="background-color: #0033CC" Width="70px" OnClick="Button2_Click" />
                                </div>
                                <div class="col d-grid">
                                    <asp:Button ID="Button3" runat="server" Text="Delete" class="btn-btn-danger btn-block" Style="background-color: #FF0000" Width="70px" />
                                </div>
                                <div class="col d-grid">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-7">
                        <h2>Categories List</h2>
                        <asp:GridView ID="categorieslist" class="table" runat="server" Width="539px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="cellid" HeaderText="cellid" SortExpression="cellid" />
                                <asp:BoundField DataField="cellname" HeaderText="cellname" SortExpression="cellname" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineConnectionString3 %>" ProviderName="<%$ ConnectionStrings:MedicineConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [medcategeory]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <table class="w-100">
        <tr>
            <td>
                <asp:TextBox ID="txtcategeory" runat="server" Width="253px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #006600" Text="Edit" Width="85px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #0066FF" Text="Save" Width="85px" OnClick="Button2_Click1" />
                <asp:Button ID="Button3" runat="server" CssClass="text-white" style="font-weight: bold; background-color: #CC0000" Text="Delete" Width="85px" OnClick="Button3_Click" />
                <br />
                <br />


                <asp:Label ID="Label1" runat="server" Text="Categeories List"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="cellid" HeaderText="cellid" SortExpression="cellid" />
                        <asp:BoundField DataField="cellname" HeaderText="cellname" SortExpression="cellname" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicineConnectionString17 %>" ProviderName="<%$ ConnectionStrings:MedicineConnectionString17.ProviderName %>" SelectCommand="SELECT * FROM [medcategeory]"></asp:SqlDataSource>
                <br />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
