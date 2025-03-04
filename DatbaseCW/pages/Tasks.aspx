<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Tasks.aspx.cs" Inherits="DatbaseCW.Pages.Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List of Task</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" Width="100%" DataKeyNames="TASKID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="TASKID" HeaderText="TASKID" ReadOnly="True" SortExpression="TASKID" />
                <asp:BoundField DataField="TASKNAME" HeaderText="TASKNAME" SortExpression="TASKNAME" />
                <asp:BoundField DataField="TASKSTARTDATE" HeaderText="TASKSTARTDATE" SortExpression="TASKSTARTDATE" />
                <asp:BoundField DataField="TASKDUEDATE" HeaderText="TASKDUEDATE" SortExpression="TASKDUEDATE" />
                <asp:BoundField DataField="TASKSTATUS" HeaderText="TASKSTATUS" SortExpression="TASKSTATUS" />
                <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" SortExpression="MILESTONEID" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;TASKNAME&quot; = :original_TASKNAME) OR (&quot;TASKNAME&quot; IS NULL AND :original_TASKNAME IS NULL)) AND ((&quot;TASKSTARTDATE&quot; = :original_TASKSTARTDATE) OR (&quot;TASKSTARTDATE&quot; IS NULL AND :original_TASKSTARTDATE IS NULL)) AND ((&quot;TASKDUEDATE&quot; = :original_TASKDUEDATE) OR (&quot;TASKDUEDATE&quot; IS NULL AND :original_TASKDUEDATE IS NULL)) AND ((&quot;TASKSTATUS&quot; = :original_TASKSTATUS) OR (&quot;TASKSTATUS&quot; IS NULL AND :original_TASKSTATUS IS NULL)) AND &quot;MILESTONEID&quot; = :original_MILESTONEID AND &quot;PROJECTID&quot; = :original_PROJECTID" InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;TASKID&quot;, &quot;TASKNAME&quot;, &quot;TASKSTARTDATE&quot;, &quot;TASKDUEDATE&quot;, &quot;TASKSTATUS&quot;, &quot;MILESTONEID&quot;, &quot;PROJECTID&quot;) VALUES (:TASKID, :TASKNAME, :TASKSTARTDATE, :TASKDUEDATE, :TASKSTATUS, :MILESTONEID, :PROJECTID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;TASKNAME&quot; = :TASKNAME, &quot;TASKSTARTDATE&quot; = :TASKSTARTDATE, &quot;TASKDUEDATE&quot; = :TASKDUEDATE, &quot;TASKSTATUS&quot; = :TASKSTATUS, &quot;MILESTONEID&quot; = :MILESTONEID, &quot;PROJECTID&quot; = :PROJECTID WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;TASKNAME&quot; = :original_TASKNAME) OR (&quot;TASKNAME&quot; IS NULL AND :original_TASKNAME IS NULL)) AND ((&quot;TASKSTARTDATE&quot; = :original_TASKSTARTDATE) OR (&quot;TASKSTARTDATE&quot; IS NULL AND :original_TASKSTARTDATE IS NULL)) AND ((&quot;TASKDUEDATE&quot; = :original_TASKDUEDATE) OR (&quot;TASKDUEDATE&quot; IS NULL AND :original_TASKDUEDATE IS NULL)) AND ((&quot;TASKSTATUS&quot; = :original_TASKSTATUS) OR (&quot;TASKSTATUS&quot; IS NULL AND :original_TASKSTATUS IS NULL)) AND &quot;MILESTONEID&quot; = :original_MILESTONEID AND &quot;PROJECTID&quot; = :original_PROJECTID">
            <DeleteParameters>
                <asp:Parameter Name="original_TASKID" Type="Decimal" />
                <asp:Parameter Name="original_TASKNAME" Type="String" />
                <asp:Parameter Name="original_TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKSTATUS" Type="String" />
                <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TASKID" Type="Decimal" />
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
                <asp:Parameter Name="original_TASKID" Type="Decimal" />
                <asp:Parameter Name="original_TASKNAME" Type="String" />
                <asp:Parameter Name="original_TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKSTATUS" Type="String" />
                <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
