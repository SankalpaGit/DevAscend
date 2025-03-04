<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Project.aspx.cs" Inherits="DatbaseCW.Pages.Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List of Project</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" Width="100%" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
                <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
                <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
                <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
                <asp:BoundField DataField="PROJECTSTATUS" HeaderText="PROJECTSTATUS" SortExpression="PROJECTSTATUS" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;PROJECTNAME&quot; = :original_PROJECTNAME) OR (&quot;PROJECTNAME&quot; IS NULL AND :original_PROJECTNAME IS NULL)) AND ((&quot;PROJECTSTARTDATE&quot; = :original_PROJECTSTARTDATE) OR (&quot;PROJECTSTARTDATE&quot; IS NULL AND :original_PROJECTSTARTDATE IS NULL)) AND ((&quot;PROJECTDUEDATE&quot; = :original_PROJECTDUEDATE) OR (&quot;PROJECTDUEDATE&quot; IS NULL AND :original_PROJECTDUEDATE IS NULL)) AND ((&quot;PROJECTSTATUS&quot; = :original_PROJECTSTATUS) OR (&quot;PROJECTSTATUS&quot; IS NULL AND :original_PROJECTSTATUS IS NULL))" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECTID&quot;, &quot;PROJECTNAME&quot;, &quot;PROJECTSTARTDATE&quot;, &quot;PROJECTDUEDATE&quot;, &quot;PROJECTSTATUS&quot;) VALUES (:PROJECTID, :PROJECTNAME, :PROJECTSTARTDATE, :PROJECTDUEDATE, :PROJECTSTATUS)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECTNAME&quot; = :PROJECTNAME, &quot;PROJECTSTARTDATE&quot; = :PROJECTSTARTDATE, &quot;PROJECTDUEDATE&quot; = :PROJECTDUEDATE, &quot;PROJECTSTATUS&quot; = :PROJECTSTATUS WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;PROJECTNAME&quot; = :original_PROJECTNAME) OR (&quot;PROJECTNAME&quot; IS NULL AND :original_PROJECTNAME IS NULL)) AND ((&quot;PROJECTSTARTDATE&quot; = :original_PROJECTSTARTDATE) OR (&quot;PROJECTSTARTDATE&quot; IS NULL AND :original_PROJECTSTARTDATE IS NULL)) AND ((&quot;PROJECTDUEDATE&quot; = :original_PROJECTDUEDATE) OR (&quot;PROJECTDUEDATE&quot; IS NULL AND :original_PROJECTDUEDATE IS NULL)) AND ((&quot;PROJECTSTATUS&quot; = :original_PROJECTSTATUS) OR (&quot;PROJECTSTATUS&quot; IS NULL AND :original_PROJECTSTATUS IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
                <asp:Parameter Name="original_PROJECTNAME" Type="String" />
                <asp:Parameter Name="original_PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTSTATUS" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
                <asp:Parameter Name="PROJECTNAME" Type="String" />
                <asp:Parameter Name="PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTSTATUS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PROJECTNAME" Type="String" />
                <asp:Parameter Name="PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTSTATUS" Type="String" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
                <asp:Parameter Name="original_PROJECTNAME" Type="String" />
                <asp:Parameter Name="original_PROJECTSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTSTATUS" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    
</asp:Content>
