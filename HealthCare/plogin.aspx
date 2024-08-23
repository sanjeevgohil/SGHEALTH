<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="plogin.aspx.cs" Inherits="plogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
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
    
	    <form method="POST" action="dloginpro.php" style=" padding-top:70px;padding-bottom:70px;padding-left:100px;padding-right:100px;">
	    <table style="width:100%" "height=100" align="center" bgcolor="#FFE5B4" border="1" bordercolor="#9B2509">
	    <trstyle ="width:100%" valign="top">
	    <td style="width:100%;color:#9B2509;font-size:36px;" colspan="2" align="center">
	    <h1 align="center">Patient Login</h1>
		 	<br>
		    <table style ="width:auto height:auto"border="0" bordercolor="#9B2509">


		    <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label runat="server" Text="User Name :" font-size="28"/><font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="unm" runat="server" Font-Size="14"/></td>
		    </tr>

		    <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label runat="server" Text="Enter Password :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="pass" runat="server" Font-Size="14" TextMode="Password"/></td>
		    </tr>

            <tr style="width:100%">
				<td></td>
				<td style="width:50%" align="left"><asp:Button ID="Submit" runat="server" Text="Login" OnClick="Submit_Click"/><asp:Button ID="forgotpass" runat="server" Text="Forgot Password" OnClick="forgotpass_Click"/><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="14" PostBackUrl="~/pregistration.aspx" ForeColor="#9B2509">Create New Account</asp:LinkButton></td>
		    </tr>           
		</table>
		</td>
		</tr>
		</table>
		    <br />
		</form>
		</td>
		</table>

</div>
</table>	
</body>
</html>

</asp:Content>