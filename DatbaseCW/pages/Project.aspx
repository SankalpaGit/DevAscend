<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Project.aspx.cs" Inherits="DatbaseCW.Pages.Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List of Project</h3>
    <p>
        <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <EditItemTemplate>
                PROJECTID:
                <asp:Label ID="PROJECTIDLabel1" runat="server" Text='<%# Eval("PROJECTID") %>' />
                <br />
                PROJECTNAME:
                <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' />
                <br />
                PROJECTSTARTDATE:
                <asp:TextBox ID="PROJECTSTARTDATETextBox" runat="server" Text='<%# Bind("PROJECTSTARTDATE") %>' />
                <br />
                PROJECTDUEDATE:
                <asp:TextBox ID="PROJECTDUEDATETextBox" runat="server" Text='<%# Bind("PROJECTDUEDATE") %>' />
                <br />
                PROJECTSTATUS:
                <asp:TextBox ID="PROJECTSTATUSTextBox" runat="server" Text='<%# Bind("PROJECTSTATUS") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <InsertItemTemplate>
                PROJECTID:
                <asp:TextBox ID="PROJECTIDTextBox" runat="server" Text='<%# Bind("PROJECTID") %>' />
                <br />
                PROJECTNAME:
                <asp:TextBox ID="PROJECTNAMETextBox" runat="server" Text='<%# Bind("PROJECTNAME") %>' />
                <br />
                PROJECTSTARTDATE:
                <asp:TextBox ID="PROJECTSTARTDATETextBox" runat="server" Text='<%# Bind("PROJECTSTARTDATE") %>' />
                <br />
                PROJECTDUEDATE:
                <asp:TextBox ID="PROJECTDUEDATETextBox" runat="server" Text='<%# Bind("PROJECTDUEDATE") %>' />
                <br />
                PROJECTSTATUS:
                <asp:TextBox ID="PROJECTSTATUSTextBox" runat="server" Text='<%# Bind("PROJECTSTATUS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PROJECTID:
                <asp:Label ID="PROJECTIDLabel" runat="server" Text='<%# Eval("PROJECTID") %>' />
                <br />
                PROJECTNAME:
                <asp:Label ID="PROJECTNAMELabel" runat="server" Text='<%# Bind("PROJECTNAME") %>' />
                <br />
                PROJECTSTARTDATE:
                <asp:Label ID="PROJECTSTARTDATELabel" runat="server" Text='<%# Bind("PROJECTSTARTDATE") %>' />
                <br />
                PROJECTDUEDATE:
                <asp:Label ID="PROJECTDUEDATELabel" runat="server" Text='<%# Bind("PROJECTDUEDATE") %>' />
                <br />
                PROJECTSTATUS:
                <asp:Label ID="PROJECTSTATUSLabel" runat="server" Text='<%# Bind("PROJECTSTATUS") %>' />
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" ReadOnly="True" SortExpression="PROJECTID" />
                <asp:BoundField DataField="PROJECTNAME" HeaderText="PROJECTNAME" SortExpression="PROJECTNAME" />
                <asp:BoundField DataField="PROJECTSTARTDATE" HeaderText="PROJECTSTARTDATE" SortExpression="PROJECTSTARTDATE" />
                <asp:BoundField DataField="PROJECTDUEDATE" HeaderText="PROJECTDUEDATE" SortExpression="PROJECTDUEDATE" />
                <asp:BoundField DataField="PROJECTSTATUS" HeaderText="PROJECTSTATUS" SortExpression="PROJECTSTATUS" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;PROJECTNAME&quot; = :original_PROJECTNAME) OR (&quot;PROJECTNAME&quot; IS NULL AND :original_PROJECTNAME IS NULL)) AND ((&quot;PROJECTSTARTDATE&quot; = :original_PROJECTSTARTDATE) OR (&quot;PROJECTSTARTDATE&quot; IS NULL AND :original_PROJECTSTARTDATE IS NULL)) AND ((&quot;PROJECTDUEDATE&quot; = :original_PROJECTDUEDATE) OR (&quot;PROJECTDUEDATE&quot; IS NULL AND :original_PROJECTDUEDATE IS NULL)) AND ((&quot;PROJECTSTATUS&quot; = :original_PROJECTSTATUS) OR (&quot;PROJECTSTATUS&quot; IS NULL AND :original_PROJECTSTATUS IS NULL))" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECTID&quot;, &quot;PROJECTNAME&quot;, &quot;PROJECTSTARTDATE&quot;, &quot;PROJECTDUEDATE&quot;, &quot;PROJECTSTATUS&quot;) VALUES (:PROJECTID, :PROJECTNAME, :PROJECTSTARTDATE, :PROJECTDUEDATE, :PROJECTSTATUS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECTNAME&quot; = :PROJECTNAME, &quot;PROJECTSTARTDATE&quot; = :PROJECTSTARTDATE, &quot;PROJECTDUEDATE&quot; = :PROJECTDUEDATE, &quot;PROJECTSTATUS&quot; = :PROJECTSTATUS WHERE &quot;PROJECTID&quot; = :original_PROJECTID AND ((&quot;PROJECTNAME&quot; = :original_PROJECTNAME) OR (&quot;PROJECTNAME&quot; IS NULL AND :original_PROJECTNAME IS NULL)) AND ((&quot;PROJECTSTARTDATE&quot; = :original_PROJECTSTARTDATE) OR (&quot;PROJECTSTARTDATE&quot; IS NULL AND :original_PROJECTSTARTDATE IS NULL)) AND ((&quot;PROJECTDUEDATE&quot; = :original_PROJECTDUEDATE) OR (&quot;PROJECTDUEDATE&quot; IS NULL AND :original_PROJECTDUEDATE IS NULL)) AND ((&quot;PROJECTSTATUS&quot; = :original_PROJECTSTATUS) OR (&quot;PROJECTSTATUS&quot; IS NULL AND :original_PROJECTSTATUS IS NULL))">
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
    <p>
        &nbsp;</p>
    
</asp:Content>
