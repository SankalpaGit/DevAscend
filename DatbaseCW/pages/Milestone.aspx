<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Milestone.aspx.cs" Inherits="DatbaseCW.Pages.Milestone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>List of Milestone</h3>
<p>
    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <EditItemTemplate>
            MILESTONEID:
            <asp:Label ID="MILESTONEIDLabel1" runat="server" Text='<%# Eval("MILESTONEID") %>' />
            <br />
            MILESTONENAME:
            <asp:TextBox ID="MILESTONENAMETextBox" runat="server" Text='<%# Bind("MILESTONENAME") %>' />
            <br />
            MILESTONEDATE:
            <asp:TextBox ID="MILESTONEDATETextBox" runat="server" Text='<%# Bind("MILESTONEDATE") %>' />
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
            MILESTONEID:
            <asp:TextBox ID="MILESTONEIDTextBox" runat="server" Text='<%# Bind("MILESTONEID") %>' />
            <br />
            MILESTONENAME:
            <asp:TextBox ID="MILESTONENAMETextBox" runat="server" Text='<%# Bind("MILESTONENAME") %>' />
            <br />
            MILESTONEDATE:
            <asp:TextBox ID="MILESTONEDATETextBox" runat="server" Text='<%# Bind("MILESTONEDATE") %>' />
            <br />
            PROJECTID:
            <asp:TextBox ID="PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECTID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MILESTONEID:
            <asp:Label ID="MILESTONEIDLabel" runat="server" Text='<%# Eval("MILESTONEID") %>' />
            <br />
            MILESTONENAME:
            <asp:Label ID="MILESTONENAMELabel" runat="server" Text='<%# Bind("MILESTONENAME") %>' />
            <br />
            MILESTONEDATE:
            <asp:Label ID="MILESTONEDATELabel" runat="server" Text='<%# Bind("MILESTONEDATE") %>' />
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
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
                <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
                <asp:BoundField DataField="MILESTONEDATE" HeaderText="MILESTONEDATE" SortExpression="MILESTONEDATE" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" DeleteCommand="DELETE FROM &quot;MILESTONE&quot; WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONENAME&quot; = :original_MILESTONENAME) OR (&quot;MILESTONENAME&quot; IS NULL AND :original_MILESTONENAME IS NULL)) AND ((&quot;MILESTONEDATE&quot; = :original_MILESTONEDATE) OR (&quot;MILESTONEDATE&quot; IS NULL AND :original_MILESTONEDATE IS NULL)) AND &quot;PROJECTID&quot; = :original_PROJECTID" InsertCommand="INSERT INTO &quot;MILESTONE&quot; (&quot;MILESTONEID&quot;, &quot;MILESTONENAME&quot;, &quot;MILESTONEDATE&quot;, &quot;PROJECTID&quot;) VALUES (:MILESTONEID, :MILESTONENAME, :MILESTONEDATE, :PROJECTID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;MILESTONE&quot;" UpdateCommand="UPDATE &quot;MILESTONE&quot; SET &quot;MILESTONENAME&quot; = :MILESTONENAME, &quot;MILESTONEDATE&quot; = :MILESTONEDATE, &quot;PROJECTID&quot; = :PROJECTID WHERE &quot;MILESTONEID&quot; = :original_MILESTONEID AND ((&quot;MILESTONENAME&quot; = :original_MILESTONENAME) OR (&quot;MILESTONENAME&quot; IS NULL AND :original_MILESTONENAME IS NULL)) AND ((&quot;MILESTONEDATE&quot; = :original_MILESTONEDATE) OR (&quot;MILESTONEDATE&quot; IS NULL AND :original_MILESTONEDATE IS NULL)) AND &quot;PROJECTID&quot; = :original_PROJECTID">
            <DeleteParameters>
                <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="original_MILESTONENAME" Type="String" />
                <asp:Parameter Name="original_MILESTONEDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="MILESTONENAME" Type="String" />
                <asp:Parameter Name="MILESTONEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MILESTONENAME" Type="String" />
                <asp:Parameter Name="MILESTONEDATE" Type="DateTime" />
                <asp:Parameter Name="PROJECTID" Type="Decimal" />
                <asp:Parameter Name="original_MILESTONEID" Type="Decimal" />
                <asp:Parameter Name="original_MILESTONENAME" Type="String" />
                <asp:Parameter Name="original_MILESTONEDATE" Type="DateTime" />
                <asp:Parameter Name="original_PROJECTID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>

</asp:Content>
