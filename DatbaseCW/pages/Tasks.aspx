<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Tasks.aspx.cs" Inherits="DatbaseCW.Pages.Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List of Task</h3>
    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <EditItemTemplate>
            TASKID:
            <asp:Label ID="TASKIDLabel1" runat="server" Text='<%# Eval("TASKID") %>' />
            <br />
            TASKNAME:
            <asp:TextBox ID="TASKNAMETextBox" runat="server" Text='<%# Bind("TASKNAME") %>' />
            <br />
            TASKSTARTDATE:
            <asp:TextBox ID="TASKSTARTDATETextBox" runat="server" Text='<%# Bind("TASKSTARTDATE") %>' />
            <br />
            TASKDUEDATE:
            <asp:TextBox ID="TASKDUEDATETextBox" runat="server" Text='<%# Bind("TASKDUEDATE") %>' />
            <br />
            TASKSTATUS:
            <asp:TextBox ID="TASKSTATUSTextBox" runat="server" Text='<%# Bind("TASKSTATUS") %>' />
            <br />
            PROJECTID:
            <asp:TextBox ID="PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECTID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <InsertItemTemplate>
            TASKID:
            <asp:TextBox ID="TASKIDTextBox" runat="server" Text='<%# Bind("TASKID") %>' />
            <br />
            TASKNAME:
            <asp:TextBox ID="TASKNAMETextBox" runat="server" Text='<%# Bind("TASKNAME") %>' />
            <br />
            TASKSTARTDATE:
            <asp:TextBox ID="TASKSTARTDATETextBox" runat="server" Text='<%# Bind("TASKSTARTDATE") %>' />
            <br />
            TASKDUEDATE:
            <asp:TextBox ID="TASKDUEDATETextBox" runat="server" Text='<%# Bind("TASKDUEDATE") %>' />
            <br />
            TASKSTATUS:
            <asp:TextBox ID="TASKSTATUSTextBox" runat="server" Text='<%# Bind("TASKSTATUS") %>' />
            <br />
            PROJECTID:
            <asp:TextBox ID="PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECTID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            TASKID:
            <asp:Label ID="TASKIDLabel" runat="server" Text='<%# Eval("TASKID") %>' />
            <br />
            TASKNAME:
            <asp:Label ID="TASKNAMELabel" runat="server" Text='<%# Bind("TASKNAME") %>' />
            <br />
            TASKSTARTDATE:
            <asp:Label ID="TASKSTARTDATELabel" runat="server" Text='<%# Bind("TASKSTARTDATE") %>' />
            <br />
            TASKDUEDATE:
            <asp:Label ID="TASKDUEDATELabel" runat="server" Text='<%# Bind("TASKDUEDATE") %>' />
            <br />
            TASKSTATUS:
            <asp:Label ID="TASKSTATUSLabel" runat="server" Text='<%# Bind("TASKSTATUS") %>' />
            <br />
            PROJECTID:
            <asp:Label ID="PROJECTIDLabel" runat="server" Text='<%# Bind("PROJECTID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TASKID" HeaderText="TASKID" ReadOnly="True" SortExpression="TASKID" />
                <asp:BoundField DataField="TASKNAME" HeaderText="TASKNAME" SortExpression="TASKNAME" />
                <asp:BoundField DataField="TASKSTARTDATE" HeaderText="TASKSTARTDATE" SortExpression="TASKSTARTDATE" />
                <asp:BoundField DataField="TASKDUEDATE" HeaderText="TASKDUEDATE" SortExpression="TASKDUEDATE" />
                <asp:BoundField DataField="TASKSTATUS" HeaderText="TASKSTATUS" SortExpression="TASKSTATUS" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;TASKNAME&quot; = :original_TASKNAME) OR (&quot;TASKNAME&quot; IS NULL AND :original_TASKNAME IS NULL)) AND ((&quot;TASKSTARTDATE&quot; = :original_TASKSTARTDATE) OR (&quot;TASKSTARTDATE&quot; IS NULL AND :original_TASKSTARTDATE IS NULL)) AND ((&quot;TASKDUEDATE&quot; = :original_TASKDUEDATE) OR (&quot;TASKDUEDATE&quot; IS NULL AND :original_TASKDUEDATE IS NULL)) AND ((&quot;TASKSTATUS&quot; = :original_TASKSTATUS) OR (&quot;TASKSTATUS&quot; IS NULL AND :original_TASKSTATUS IS NULL)) AND &quot;PROJECTID&quot; = :original_PROJECTID" InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;TASKID&quot;, &quot;TASKNAME&quot;, &quot;TASKSTARTDATE&quot;, &quot;TASKDUEDATE&quot;, &quot;TASKSTATUS&quot;, &quot;PROJECTID&quot;) VALUES (:TASKID, :TASKNAME, :TASKSTARTDATE, :TASKDUEDATE, :TASKSTATUS, :PROJECTID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;" UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;TASKNAME&quot; = :TASKNAME, &quot;TASKSTARTDATE&quot; = :TASKSTARTDATE, &quot;TASKDUEDATE&quot; = :TASKDUEDATE, &quot;TASKSTATUS&quot; = :TASKSTATUS, &quot;PROJECTID&quot; = :PROJECTID WHERE &quot;TASKID&quot; = :original_TASKID AND ((&quot;TASKNAME&quot; = :original_TASKNAME) OR (&quot;TASKNAME&quot; IS NULL AND :original_TASKNAME IS NULL)) AND ((&quot;TASKSTARTDATE&quot; = :original_TASKSTARTDATE) OR (&quot;TASKSTARTDATE&quot; IS NULL AND :original_TASKSTARTDATE IS NULL)) AND ((&quot;TASKDUEDATE&quot; = :original_TASKDUEDATE) OR (&quot;TASKDUEDATE&quot; IS NULL AND :original_TASKDUEDATE IS NULL)) AND ((&quot;TASKSTATUS&quot; = :original_TASKSTATUS) OR (&quot;TASKSTATUS&quot; IS NULL AND :original_TASKSTATUS IS NULL)) AND &quot;PROJECTID&quot; = :original_PROJECTID">
            <DeleteParameters>
                <asp:Parameter Name="original_TASKID" Type="Decimal" />
                <asp:Parameter Name="original_TASKNAME" Type="String" />
                <asp:Parameter Name="original_TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKSTATUS" Type="String" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TASKID" Type="Decimal" />
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TASKNAME" Type="String" />
                <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="TASKSTATUS" Type="String" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
                <asp:Parameter Name="original_TASKID" Type="Decimal" />
                <asp:Parameter Name="original_TASKNAME" Type="String" />
                <asp:Parameter Name="original_TASKSTARTDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKDUEDATE" Type="DateTime" />
                <asp:Parameter Name="original_TASKSTATUS" Type="String" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
