<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/dMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="doctor_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
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

	<form method="POST" action="feedbackpro.php" style=" padding-top:70px;padding-bottom:70px;padding-left:100px;padding-right:100px;">
	<table style="width:100%" "height=100" align="center" bgcolor="#FFE5B4" border="1" bordercolor="#9B2509">
	<trstyle ="width:100%" valign="top">
	<td style="width:100%;color:#9B2509;font-size:36px;" colspan="2" align="center">
	<h1 align="center">FeedBack Form</h1>
		 		<br>
		<table style ="width:auto height:auto"border="0" bordercolor="white">

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label1" runat="server" Text="Enter Name :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="nm" runat="server" Font-Size="14"/></td>
		</tr>

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label2" runat="server" Text="Mobile Number :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="mno" runat="server" Font-Size="14" /></td>
		</tr>

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label3" runat="server" Text="Enter Feedback :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="feed" runat="server" Font-Size="14"/></td>
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
			<br />
        <br />
			</td>
			</table>

</div>
</table>	
</body>
</html>

</asp:Content>

