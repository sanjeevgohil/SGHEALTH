<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/dMasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="doctor_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="margin-left: 520px">
        <br />
&nbsp;&nbsp;
        <asp:Label ID="appointment" runat="server" Text="Your Appointment" Font-Size="25pt" ForeColor="#9B2509" Font-Bold="True" />
    </div>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="3px" CellPadding="8" ForeColor="Black" HorizontalAlign="Center" RepeatColumns="2" RepeatDirection="Horizontal" CellSpacing="16">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
           
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' Visible="false" />
            <br />
            doctorname:
            <asp:Label ID="doctornameLabel" runat="server" Text='<%# Eval("doctorname") %>' />
            <br />
            patientname:
            <asp:Label ID="patientnameLabel" runat="server" Text='<%# Eval("patientname") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            time:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booapp] WHERE ([doctorname] = @doctorname)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="doctorname" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />


</asp:Content>

