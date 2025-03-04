<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="SubTask.aspx.cs" Inherits="DatbaseCW.Pages.SubTask" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="SUBTASKID" HeaderText="SUBTASKID" ReadOnly="True" SortExpression="SUBTASKID" />
            <asp:BoundField DataField="SUBTASKNAME" HeaderText="SUBTASKNAME" SortExpression="SUBTASKNAME" />
            <asp:BoundField DataField="SUBTASKDUE" HeaderText="SUBTASKDUE" SortExpression="SUBTASKDUE" />
            <asp:BoundField DataField="TASKID" HeaderText="TASKID" SortExpression="TASKID" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;SUBTASK&quot; WHERE &quot;SUBTASKID&quot; = :original_SUBTASKID AND ((&quot;SUBTASKNAME&quot; = :original_SUBTASKNAME) OR (&quot;SUBTASKNAME&quot; IS NULL AND :original_SUBTASKNAME IS NULL)) AND ((&quot;SUBTASKDUE&quot; = :original_SUBTASKDUE) OR (&quot;SUBTASKDUE&quot; IS NULL AND :original_SUBTASKDUE IS NULL)) AND &quot;TASKID&quot; = :original_TASKID" InsertCommand="INSERT INTO &quot;SUBTASK&quot; (&quot;SUBTASKID&quot;, &quot;SUBTASKNAME&quot;, &quot;SUBTASKDUE&quot;, &quot;TASKID&quot;) VALUES (:SUBTASKID, :SUBTASKNAME, :SUBTASKDUE, :TASKID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SUBTASK&quot;" UpdateCommand="UPDATE &quot;SUBTASK&quot; SET &quot;SUBTASKNAME&quot; = :SUBTASKNAME, &quot;SUBTASKDUE&quot; = :SUBTASKDUE, &quot;TASKID&quot; = :TASKID WHERE &quot;SUBTASKID&quot; = :original_SUBTASKID AND ((&quot;SUBTASKNAME&quot; = :original_SUBTASKNAME) OR (&quot;SUBTASKNAME&quot; IS NULL AND :original_SUBTASKNAME IS NULL)) AND ((&quot;SUBTASKDUE&quot; = :original_SUBTASKDUE) OR (&quot;SUBTASKDUE&quot; IS NULL AND :original_SUBTASKDUE IS NULL)) AND &quot;TASKID&quot; = :original_TASKID">
        <DeleteParameters>
            <asp:Parameter Name="original_SUBTASKID" Type="Decimal" />
            <asp:Parameter Name="original_SUBTASKNAME" Type="String" />
            <asp:Parameter Name="original_SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="original_TASKID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SUBTASKID" Type="Decimal" />
            <asp:Parameter Name="SUBTASKNAME" Type="String" />
            <asp:Parameter Name="SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="TASKID" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SUBTASKNAME" Type="String" />
            <asp:Parameter Name="SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="TASKID" Type="Decimal" />
            <asp:Parameter Name="original_SUBTASKID" Type="Decimal" />
            <asp:Parameter Name="original_SUBTASKNAME" Type="String" />
            <asp:Parameter Name="original_SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="original_TASKID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

