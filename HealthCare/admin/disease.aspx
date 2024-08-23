<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="disease.aspx.cs" Inherits="admin_disease" %>

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
        <br />
	    <form method="POST" action="citypro.php" style=" padding-top:70px;padding-bottom:70px;padding-left:100px;padding-right:100px;">
	    <table style="width:100%" "height=100" align="center" bgcolor="#FFE5B4" border="1" bordercolor="#9B2509">
	    <trstyle ="width:100%" valign="top">
	    <td style="width:100%;color:#9B2509;font-size:36px;" colspan="2" align="center">
	    <h1 align="center"><font color=#9B2509>Enter Disease</font></h1>
		 	<br>
		    <table style ="width:auto height:auto"border="0" bordercolor="white">

		    <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label1" runat="server" Text="Enter Disease :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="nm" runat="server" Font-Size="14"/></td>
		    </tr>

            <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label2" runat="server" Text="Enter Disease Sign:" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="sign" runat="server" Font-Size="14"/></td>
		    </tr>

		    <tr style="width:100%">
				<td></td>
				<td style="width:50%" align="left"><asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
		    </tr>

		    </table>
		    </td>
		    </tr>
        </table>
		    </form>
		</td>
		</table>

        
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="12" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None" HorizontalAlign="Center" CellSpacing="12">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="sign" HeaderText="sign" SortExpression="sign" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [disease] WHERE [Id] = @Id" InsertCommand="INSERT INTO [disease] ([name], [sign]) VALUES (@name, @sign)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [name], [sign] FROM [disease]" UpdateCommand="UPDATE [disease] SET [name] = @name, [sign] = @sign WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="sign" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="sign" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        
            <br />

        
        <br />

        </div>
</table>	
</body>
</html>
</asp:Content>

