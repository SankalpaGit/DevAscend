<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Milestone.aspx.cs" Inherits="DatbaseCW.Pages.Milestone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>List of Milestone</h3>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
            <asp:BoundField DataField="MILESTONETITLE" HeaderText="MILESTONETITLE" SortExpression="MILESTONETITLE" />
            <asp:BoundField DataField="MILESTONEDATE" HeaderText="MILESTONEDATE" SortExpression="MILESTONEDATE" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MILESTONE&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;MILESTONE&quot; WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONETITLE&quot; = :original_MILESTONETITLE) OR (&quot;MILESTONETITLE&quot; IS NULL AND :original_MILESTONETITLE IS NULL)) AND ((&quot;MILESTONEDATE&quot; = :original_MILESTONEDATE) OR (&quot;MILESTONEDATE&quot; IS NULL AND :original_MILESTONEDATE IS NULL))" InsertCommand="INSERT INTO &quot;MILESTONE&quot; (&quot;MILESTONEID&quot;, &quot;MILESTONETITLE&quot;, &quot;MILESTONEDATE&quot;) VALUES (:MILESTONEID, :MILESTONETITLE, :MILESTONEDATE)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;MILESTONE&quot; SET &quot;MILESTONETITLE&quot; = :MILESTONETITLE, &quot;MILESTONEDATE&quot; = :MILESTONEDATE WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONETITLE&quot; = :original_MILESTONETITLE) OR (&quot;MILESTONETITLE&quot; IS NULL AND :original_MILESTONETITLE IS NULL)) AND ((&quot;MILESTONEDATE&quot; = :original_MILESTONEDATE) OR (&quot;MILESTONEDATE&quot; IS NULL AND :original_MILESTONEDATE IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="original_MILESTONETITLE" Type="String" />
            <asp:Parameter Name="original_MILESTONEDATE" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="MILESTONETITLE" Type="String" />
            <asp:Parameter Name="MILESTONEDATE" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MILESTONETITLE" Type="String" />
            <asp:Parameter Name="MILESTONEDATE" Type="DateTime" />
            <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
            <asp:Parameter Name="original_MILESTONETITLE" Type="String" />
            <asp:Parameter Name="original_MILESTONEDATE" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>

</asp:Content>
