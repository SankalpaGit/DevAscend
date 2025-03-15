<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="SubTask.aspx.cs" Inherits="DatbaseCW.Pages.SubTask" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <EditItemTemplate>
            SUBTASKID:
            <asp:Label ID="SUBTASKIDLabel1" runat="server" Text='<%# Eval("SUBTASKID") %>' />
            <br />
            SUBTASKNAME:
            <asp:TextBox ID="SUBTASKNAMETextBox" runat="server" Text='<%# Bind("SUBTASKNAME") %>' />
            <br />
            SUBTASKDUE:
            <asp:TextBox ID="SUBTASKDUETextBox" runat="server" Text='<%# Bind("SUBTASKDUE") %>' />
            <br />
            TASKID:
            <asp:TextBox ID="TASKIDTextBox" runat="server" Text='<%# Bind("TASKID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <InsertItemTemplate>
            SUBTASKID:
            <asp:TextBox ID="SUBTASKIDTextBox" runat="server" Text='<%# Bind("SUBTASKID") %>' />
            <br />
            SUBTASKNAME:
            <asp:TextBox ID="SUBTASKNAMETextBox" runat="server" Text='<%# Bind("SUBTASKNAME") %>' />
            <br />
            SUBTASKDUE:
            <asp:TextBox ID="SUBTASKDUETextBox" runat="server" Text='<%# Bind("SUBTASKDUE") %>' />
            <br />
            TASKID:
            <asp:TextBox ID="TASKIDTextBox" runat="server" Text='<%# Bind("TASKID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SUBTASKID:
            <asp:Label ID="SUBTASKIDLabel" runat="server" Text='<%# Eval("SUBTASKID") %>' />
            <br />
            SUBTASKNAME:
            <asp:Label ID="SUBTASKNAMELabel" runat="server" Text='<%# Bind("SUBTASKNAME") %>' />
            <br />
            SUBTASKDUE:
            <asp:Label ID="SUBTASKDUELabel" runat="server" Text='<%# Bind("SUBTASKDUE") %>' />
            <br />
            TASKID:
            <asp:Label ID="TASKIDLabel" runat="server" Text='<%# Bind("TASKID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SUBTASKID" HeaderText="SUBTASKID" ReadOnly="True" SortExpression="SUBTASKID" />
            <asp:BoundField DataField="SUBTASKNAME" HeaderText="SUBTASKNAME" SortExpression="SUBTASKNAME" />
            <asp:BoundField DataField="SUBTASKDUE" HeaderText="SUBTASKDUE" SortExpression="SUBTASKDUE" />
            <asp:BoundField DataField="TASKID" HeaderText="TASKID" SortExpression="TASKID" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" DeleteCommand="DELETE FROM &quot;SUBTASK&quot; WHERE &quot;SUBTASKID&quot; = :original_SUBTASKID AND ((&quot;SUBTASKNAME&quot; = :original_SUBTASKNAME) OR (&quot;SUBTASKNAME&quot; IS NULL AND :original_SUBTASKNAME IS NULL)) AND ((&quot;SUBTASKDUE&quot; = :original_SUBTASKDUE) OR (&quot;SUBTASKDUE&quot; IS NULL AND :original_SUBTASKDUE IS NULL)) AND &quot;TASKID&quot; = :original_TASKID" InsertCommand="INSERT INTO &quot;SUBTASK&quot; (&quot;SUBTASKID&quot;, &quot;SUBTASKNAME&quot;, &quot;SUBTASKDUE&quot;, &quot;TASKID&quot;) VALUES (:SUBTASKID, :SUBTASKNAME, :SUBTASKDUE, :TASKID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;SUBTASK&quot;" UpdateCommand="UPDATE &quot;SUBTASK&quot; SET &quot;SUBTASKNAME&quot; = :SUBTASKNAME, &quot;SUBTASKDUE&quot; = :SUBTASKDUE, &quot;TASKID&quot; = :TASKID WHERE &quot;SUBTASKID&quot; = :original_SUBTASKID AND ((&quot;SUBTASKNAME&quot; = :original_SUBTASKNAME) OR (&quot;SUBTASKNAME&quot; IS NULL AND :original_SUBTASKNAME IS NULL)) AND ((&quot;SUBTASKDUE&quot; = :original_SUBTASKDUE) OR (&quot;SUBTASKDUE&quot; IS NULL AND :original_SUBTASKDUE IS NULL)) AND &quot;TASKID&quot; = :original_TASKID">
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
    <br />
    </asp:Content>

