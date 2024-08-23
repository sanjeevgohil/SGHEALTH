<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="specialistinfo.aspx.cs" Inherits="specialistinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" style="text-align: center" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" HorizontalAlign="Center">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="spe" runat="server" Text='<%# Eval("specialist") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="edu" runat="server" Text='<%# Eval("education") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="exp" runat="server" Text='<%# Eval("experience") %>'></asp:Label></td>
                    <td>
                        <asp:Label ID="mobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="city" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="75px" Width="75px" />
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [doctor] WHERE ([specialist] = @specialist)">
        <SelectParameters>
            <asp:QueryStringParameter Name="specialist" QueryStringField="n" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

