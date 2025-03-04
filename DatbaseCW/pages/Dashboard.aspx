<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Dashboard.aspx.cs" Inherits="DatbaseCW.Pages.Dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Dashboard Overview</h3>

    <!-- Guiding Text for User ID Selection -->
    <div style="margin-bottom: 20px;">
        <label for="ddlUserId" style="font-weight: bold;">Select the User ID:</label>
        <asp:DropDownList ID="ddlUserId" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlUserId_SelectedIndexChanged" Width="120px" Height="50px" Border-Radius="100px">
            <asp:ListItem Text="Select User" Value="" />
        </asp:DropDownList>
    </div>

    <!-- GridView for User Projects -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
        CellPadding="10" ForeColor="Black" GridLines="None" EmptyDataText="No data found" style="margin-bottom: 20px;">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
            <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
            <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
            <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
            <asp:BoundField DataField="PROJECTSTATUS" HeaderText="PROJECTSTATUS" SortExpression="PROJECTSTATUS" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>

    <br /><br />

    <!-- Guiding Text for Project ID Selection -->
    <div style="margin-bottom: 20px;">
        <label for="ddlProjectId" style="font-weight: bold;">Select the Project ID:</label>
        <asp:DropDownList ID="ddlProjectId" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProjectId_SelectedIndexChanged" Width="120px" Height="50px">
            <asp:ListItem Text="Select Project" Value="" />
        </asp:DropDownList>
    </div>

    <!-- GridView for Project Milestones -->
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
        CellPadding="10" DataKeyNames="PROJECTID" ForeColor="Black" GridLines="None" EmptyDataText="No data found" style="margin-bottom: 20px;">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
            <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
            <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
            <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
            <asp:BoundField DataField="MILESTONETITLE" HeaderText="MILESTONETITLE" SortExpression="MILESTONETITLE" />
            <asp:BoundField DataField="MILESTONEDATE" HeaderText="MILESTONEDATE" SortExpression="MILESTONEDATE" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>

</asp:Content>
