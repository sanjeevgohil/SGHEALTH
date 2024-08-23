<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="admin_doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="5" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None" CellSpacing="5" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="specialist" HeaderText="specialist" SortExpression="specialist" />
            <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
            <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:TemplateField HeaderText="photo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("photo") %>' Tooltip='<%# Eval("photo") %>' ></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("photo") %>' ImageUrl='<%# Eval("photo") %>' Width="100" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [doctor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [doctor] ([name], [username], [password], [specialist], [education], [experience], [mobile], [city], [photo], [status]) VALUES (@name, @username, @password, @specialist, @education, @experience, @mobile, @city, @photo, @status)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [name], [username], [password], [specialist], [education], [experience], [mobile], [city], [photo], [status] FROM [doctor]" UpdateCommand="UPDATE [doctor] SET [name] = @name, [username] = @username, [password] = @password, [specialist] = @specialist, [education] = @education, [experience] = @experience, [mobile] = @mobile, [city] = @city, [photo] = @photo, [status] = @status WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="specialist" Type="String" />
            <asp:Parameter Name="education" Type="String" />
            <asp:Parameter Name="experience" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="specialist" Type="String" />
            <asp:Parameter Name="education" Type="String" />
            <asp:Parameter Name="experience" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />

</asp:Content>

