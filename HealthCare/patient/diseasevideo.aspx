<%@ Page Title="" Language="C#" MasterPageFile="~/patient/pMasterPage.master" AutoEventWireup="true" CodeFile="diseasevideo.aspx.cs" Inherits="patient_diseasevideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 align="center"><font color="#9B2509">Disease Video</font></h1>
	
	<table border=0 align='center' bordercolor='#FFFFFF' bgcolor='#ffffff' align:'center'>
	<tr>
	<td>	
	<video height="400" width="400" controls>
 	<source src="../image/Malaria.mp4" type="video/mp4">
	</td>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/Monkeypox.mp4" type="video/mp4">
	</td>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/Lungcancer.mp4" type="video/mp4">
	</td>
	</tr>
	<tr>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/HeartAttack.mp4" type="video/mp4">
	</td>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/Corona.mp4" type="video/mp4">
	</td>		
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/bloodcancer.mp4" type="video/mp4">
	</td>
	</tr>
	<tr>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/Asthma.mp4" type="video/mp4">
 	Your browser does not support the video tag.
	</video>
	</td>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/Diabetes.mp4" type="video/mp4">
 	Your browser does not support the video tag.
	</video>
		</td>
	<td>
	<video height="400" width="400" controls>
 	<source src="../image/BloodPressure.mp4" type="video/mp4">
 	Your browser does not support the video tag.
	</video>
	</td>
	</tr>


	</table>

    <br />

</asp:Content>

