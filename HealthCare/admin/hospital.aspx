<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="hospital.aspx.cs" Inherits="admin_hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<html>
<head>
	<title>s&k healthcare</title>

	<link href="style1.css" rel="stylesheet">	
	<style>
			*
			{
				margin:0px 0px 0px 0px;
				
			}
			.main
			{
				margin:0px 110px 0px 110px;
				
			}
			
				
	</style>
</head>
<body>
	<div class="main">

	<form method="POST" action="feedbackpro.php" style=" padding-top:70px;padding-bottom:70px;padding-left:100px;padding-right:100px;">
	<table style="width:100%" "height=100" align="center" bgcolor="#FFE5B4" border="1" bordercolor="#9B2509">
	<tr style ="width:100%" valign="top">
     </br>
	<td style="width:100%;color:#9B2509;font-size:36px;" colspan="2" align="center">
	<h1 align="center">&nbsp;&nbsp;Add Hospital</h1>
		 		<br>
		<table style ="width:auto height:auto"border="0" bordercolor="white">

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label1" runat="server" Text="Enter Name :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="nm" runat="server" Font-Size="14"/></td>
		</tr>

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label2" runat="server" Text="Enter Address :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="addr" runat="server" Font-Size="14" /></td>
		</tr>

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label3" runat="server" Text="Enter Contact Number :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="cno" runat="server" Font-Size="14"/></td>
		</tr>
            
        <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label4" runat="server" Text="Select City :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:DropDownList ID="city" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [city]"></asp:SqlDataSource>
                </td>
		</tr>

		<tr style="width:100%">
				<td></td>
				<td style="width:50%" align="left"><asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" /><asp:Button ID="Reset" runat="server" Text="Reset"/></td>
		</tr>


		</table>
		</td>
		</tr>
    </table>
		</form>
		</td>
		</table>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="5" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None" CellSpacing="5" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hospital] WHERE [Id] = @Id" InsertCommand="INSERT INTO [hospital] ([name], [address], [contact], [city]) VALUES (@name, @address, @contact, @city)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [name], [address], [contact], [city] FROM [hospital]" UpdateCommand="UPDATE [hospital] SET [name] = @name, [address] = @address, [contact] = @contact, [city] = @city WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="city" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <br />


    </div>
</table>	
</body>
</html>

</asp:Content>

