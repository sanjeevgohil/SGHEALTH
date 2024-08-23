<%@ Page Title="" Language="C#" MasterPageFile="~/patient/pMasterPage.master" AutoEventWireup="true" CodeFile="doctordetails.aspx.cs" Inherits="patient_doctordetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Text="Doctor Details" Font-Bold="True" Font-Size="25pt" ForeColor="#9B2509"/>
     <br />
     <br />
     <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" style="text-align: center" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="7" ForeColor="Black" CellSpacing="8" HorizontalAlign="Center">
         <AlternatingItemStyle BackColor="PaleGoldenrod" />
         <FooterStyle BackColor="Tan" />
         <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("photo") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="name" runat="server" Text='<%# Eval("name") %>' NavigateUrl='<%# Eval("name","specialistinfo.aspx?n={0}") %>'></asp:HyperLink>    
                    </td></tr></table><br /><br />

        </ItemTemplate>

         <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [specialist]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [specialist]"></asp:SqlDataSource>

     <br />
     <br />
    <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Blog Of Different Doctor" Font-Bold="True" Font-Size="25pt" ForeColor="#9B2509" /></br></br></br>

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" HorizontalAlign="Center">
         <AlternatingRowStyle BackColor="PaleGoldenrod" />
         <Columns>
             <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
             <asp:BoundField DataField="info" HeaderText="Information" SortExpression="info" />
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
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [info] FROM [blog]"></asp:SqlDataSource>
     <br />

     <br />

</asp:Content>

