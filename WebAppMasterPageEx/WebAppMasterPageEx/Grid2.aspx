<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Grid2.aspx.cs" Inherits="WebAppMasterPageEx.Grid2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td><h2 class="text-center">GridView Example Two Drag and Drop</h2></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewCustomer" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="GridViewCustomer_SelectedIndexChanged" PageSize="4">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" ReadOnly="True" SortExpression="CustomerId" />
                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                        <asp:BoundField DataField="CustomerCity" HeaderText="CustomerCity" SortExpression="CustomerCity" />
                        <asp:BoundField DataField="CustomerODLimit" HeaderText="CustomerODLimit" SortExpression="CustomerODLimit" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CustsDbConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @original_CustomerId AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([CustomerCity] = @original_CustomerCity) OR ([CustomerCity] IS NULL AND @original_CustomerCity IS NULL)) AND (([CustomerODLimit] = @original_CustomerODLimit) OR ([CustomerODLimit] IS NULL AND @original_CustomerODLimit IS NULL))" InsertCommand="INSERT INTO [Customer] ([CustomerId], [CustomerName], [CustomerCity], [CustomerODLimit]) VALUES (@CustomerId, @CustomerName, @CustomerCity, @CustomerODLimit)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CustsDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustomerCity] = @CustomerCity, [CustomerODLimit] = @CustomerODLimit WHERE [CustomerId] = @original_CustomerId AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([CustomerCity] = @original_CustomerCity) OR ([CustomerCity] IS NULL AND @original_CustomerCity IS NULL)) AND (([CustomerODLimit] = @original_CustomerODLimit) OR ([CustomerODLimit] IS NULL AND @original_CustomerODLimit IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_CustomerName" Type="String" />
                        <asp:Parameter Name="original_CustomerCity" Type="String" />
                        <asp:Parameter Name="original_CustomerODLimit" Type="Double" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerId" Type="Int32" />
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerCity" Type="String" />
                        <asp:Parameter Name="CustomerODLimit" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="CustomerCity" Type="String" />
                        <asp:Parameter Name="CustomerODLimit" Type="Double" />
                        <asp:Parameter Name="original_CustomerId" Type="Int32" />
                        <asp:Parameter Name="original_CustomerName" Type="String" />
                        <asp:Parameter Name="original_CustomerCity" Type="String" />
                        <asp:Parameter Name="original_CustomerODLimit" Type="Double" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
