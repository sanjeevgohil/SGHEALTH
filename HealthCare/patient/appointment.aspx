<%@ Page Title="" Language="C#" MasterPageFile="~/patient/pMasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="patient_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        </br>
	<form method="POST" action="feedbackpro.php" style=" padding-top:70px;padding-bottom:70px;padding-left:100px;padding-right:100px;">
	<table style="width:100%" "height=100" align="center" bgcolor="#FFE5B4" border="1" bordercolor="#9B2509">
	<trstyle ="width:100%" valign="top">
	<td style="width:100%;color:#9B2509;font-size:36px;" colspan="2" align="center">
	<h1 align="center">Appointment</h1>
		 		<br>
		<table style ="width:auto height:auto"border="0" bordercolor="white">

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="dnm" runat="server" Font-Size="28" Text="Doctor Name:"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:Label ID="Label1" runat="server" font-size="14"/></td>
		</tr>

        <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label4" runat="server" Text="Patient Name :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="pnm" runat="server" Font-Size="14"/></td>
		</tr>

        <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label5" runat="server" Text="Select Date :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="date" runat="server" Font-Size="14"/></td>
		</tr>

        <tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label6" runat="server" Text="Select Tme :" font-size="28"/></font> </h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="time" runat="server" Font-Size="14"/></td>
		</tr>

		<tr style="width:100%">
				<td style="width:50%; height:50px" align="Left"><h2><font color=#9B2509><asp:Label ID="Label2" runat="server" Text="Mobile Number :" font-size="28"/></font></h2></td>
				<td style="width:50%" align="left"><asp:TextBox ID="mno" runat="server" Font-Size="14" /></td>
		</tr>
            
		<tr style="width:100%">
				<td></td>
				<td style="width:50%" align="left"><asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/><asp:Button ID="Reset" runat="server" Text="Reset"/></td>
		</tr>


		</table>
		</td>
		</tr>
		</table>
		<br />
		</form>
			</td>
			</table>

        <br />

</div>
</table>	
</body>
</html>

</asp:Content>

