<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Employee.aspx.cs" Inherits="DatbaseCW.Pages.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List Of Employee</h3>
    <p>
        <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="USERID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <EditItemTemplate>
                USERID:
                <asp:Label ID="USERIDLabel1" runat="server" Text='<%# Eval("USERID") %>' />
                <br />
                USERNAME:
                <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                USEREMAIL:
                <asp:TextBox ID="USEREMAILTextBox" runat="server" Text='<%# Bind("USEREMAIL") %>' />
                <br />
                USERCONTACT:
                <asp:TextBox ID="USERCONTACTTextBox" runat="server" Text='<%# Bind("USERCONTACT") %>' />
                <br />
                ROLE:
                <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <InsertItemTemplate>
                USERID:
                <asp:TextBox ID="USERIDTextBox" runat="server" Text='<%# Bind("USERID") %>' />
                <br />
                USERNAME:
                <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                USEREMAIL:
                <asp:TextBox ID="USEREMAILTextBox" runat="server" Text='<%# Bind("USEREMAIL") %>' />
                <br />
                USERCONTACT:
                <asp:TextBox ID="USERCONTACTTextBox" runat="server" Text='<%# Bind("USERCONTACT") %>' />
                <br />
                ROLE:
                <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                USERID:
                <asp:Label ID="USERIDLabel" runat="server" Text='<%# Eval("USERID") %>' />
                <br />
                USERNAME:
                <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Bind("USERNAME") %>' />
                <br />
                USEREMAIL:
                <asp:Label ID="USEREMAILLabel" runat="server" Text='<%# Bind("USEREMAIL") %>' />
                <br />
                USERCONTACT:
                <asp:Label ID="USERCONTACTLabel" runat="server" Text='<%# Bind("USERCONTACT") %>' />
                <br />
                ROLE:
                <asp:Label ID="ROLELabel" runat="server" Text='<%# Bind("ROLE") %>' />
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" width="100%"  DataKeyNames="USERID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="USEREMAIL" HeaderText="USEREMAIL" SortExpression="USEREMAIL" />
                <asp:BoundField DataField="USERCONTACT" HeaderText="USERCONTACT" SortExpression="USERCONTACT" />
                <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" DeleteCommand="DELETE FROM &quot;USERS&quot; WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;USERNAME&quot; = :original_USERNAME) OR (&quot;USERNAME&quot; IS NULL AND :original_USERNAME IS NULL)) AND ((&quot;USEREMAIL&quot; = :original_USEREMAIL) OR (&quot;USEREMAIL&quot; IS NULL AND :original_USEREMAIL IS NULL)) AND ((&quot;USERCONTACT&quot; = :original_USERCONTACT) OR (&quot;USERCONTACT&quot; IS NULL AND :original_USERCONTACT IS NULL)) AND ((&quot;ROLE&quot; = :original_ROLE) OR (&quot;ROLE&quot; IS NULL AND :original_ROLE IS NULL))" InsertCommand="INSERT INTO &quot;USERS&quot; (&quot;USERID&quot;, &quot;USERNAME&quot;, &quot;USEREMAIL&quot;, &quot;USERCONTACT&quot;, &quot;ROLE&quot;) VALUES (:USERID, :USERNAME, :USEREMAIL, :USERCONTACT, :ROLE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;" UpdateCommand="UPDATE &quot;USERS&quot; SET &quot;USERNAME&quot; = :USERNAME, &quot;USEREMAIL&quot; = :USEREMAIL, &quot;USERCONTACT&quot; = :USERCONTACT, &quot;ROLE&quot; = :ROLE WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;USERNAME&quot; = :original_USERNAME) OR (&quot;USERNAME&quot; IS NULL AND :original_USERNAME IS NULL)) AND ((&quot;USEREMAIL&quot; = :original_USEREMAIL) OR (&quot;USEREMAIL&quot; IS NULL AND :original_USEREMAIL IS NULL)) AND ((&quot;USERCONTACT&quot; = :original_USERCONTACT) OR (&quot;USERCONTACT&quot; IS NULL AND :original_USERCONTACT IS NULL)) AND ((&quot;ROLE&quot; = :original_ROLE) OR (&quot;ROLE&quot; IS NULL AND :original_ROLE IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_USERID" Type="Decimal" />
                <asp:Parameter Name="original_USERNAME" Type="String" />
                <asp:Parameter Name="original_USEREMAIL" Type="String" />
                <asp:Parameter Name="original_USERCONTACT" Type="String" />
                <asp:Parameter Name="original_ROLE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="USERID" Type="Decimal" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="USEREMAIL" Type="String" />
                <asp:Parameter Name="USERCONTACT" Type="String" />
                <asp:Parameter Name="ROLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="USEREMAIL" Type="String" />
                <asp:Parameter Name="USERCONTACT" Type="String" />
                <asp:Parameter Name="ROLE" Type="String" />
                <asp:Parameter Name="original_USERID" Type="Decimal" />
                <asp:Parameter Name="original_USERNAME" Type="String" />
                <asp:Parameter Name="original_USEREMAIL" Type="String" />
                <asp:Parameter Name="original_USERCONTACT" Type="String" />
                <asp:Parameter Name="original_ROLE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    
</asp:Content>
