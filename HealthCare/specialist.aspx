<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="specialist.aspx.cs" Inherits="specialist" %>

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
	    <table style="width:100%" "height=100" align="center" bgcolor="#C0C0C0" border="1" bordercolor="#000000">
	    <trstyle ="width:100%" valign="top">
	    <td style="width:100%;color:#000000;font-size:36px;" colspan="2" align="center">
	    <h1 align="center"><font color=#000000>Enter Specialist</font></h1>
		 	<br>
		    <table style ="width:auto height:auto"border="0" bordercolor="white">

		    <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#000000><asp:Label ID="Label1" runat="server" Text="Enter Specialist :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="spe" runat="server" Font-Size="14"/></td>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [specialist] WHERE [Id] = @Id" InsertCommand="INSERT INTO [specialist] ([name]) VALUES (@name)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [name] FROM [specialist]" UpdateCommand="UPDATE [specialist] SET [name] = @name WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </body>
    </html>

</div>

</asp:Content>

