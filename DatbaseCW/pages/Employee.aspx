<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Employee.aspx.cs" Inherits="DatbaseCW.Pages.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>List Of Employee</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="10" Width="100%" ForeColor="Black" GridLines="None" AutoGenerateColumns="False"  DataKeyNames="USERID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" /> 
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="USEREMAIL" HeaderText="USEREMAIL" SortExpression="USEREMAIL" />
                <asp:BoundField DataField="USERCONTACT" HeaderText="USERCONTACT" SortExpression="USERCONTACT" />
                <asp:BoundField DataField="USER_ROLE" HeaderText="USER_ROLE" SortExpression="USER_ROLE" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;User&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;User&quot; WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;USERNAME&quot; = :original_USERNAME) OR (&quot;USERNAME&quot; IS NULL AND :original_USERNAME IS NULL)) AND ((&quot;USEREMAIL&quot; = :original_USEREMAIL) OR (&quot;USEREMAIL&quot; IS NULL AND :original_USEREMAIL IS NULL)) AND ((&quot;USERCONTACT&quot; = :original_USERCONTACT) OR (&quot;USERCONTACT&quot; IS NULL AND :original_USERCONTACT IS NULL)) AND ((&quot;USER_ROLE&quot; = :original_USER_ROLE) OR (&quot;USER_ROLE&quot; IS NULL AND :original_USER_ROLE IS NULL))" InsertCommand="INSERT INTO &quot;User&quot; (&quot;USERID&quot;, &quot;USERNAME&quot;, &quot;USEREMAIL&quot;, &quot;USERCONTACT&quot;, &quot;USER_ROLE&quot;) VALUES (:USERID, :USERNAME, :USEREMAIL, :USERCONTACT, :USER_ROLE)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;User&quot; SET &quot;USERNAME&quot; = :USERNAME, &quot;USEREMAIL&quot; = :USEREMAIL, &quot;USERCONTACT&quot; = :USERCONTACT, &quot;USER_ROLE&quot; = :USER_ROLE WHERE &quot;USERID&quot; = :original_USERID AND ((&quot;USERNAME&quot; = :original_USERNAME) OR (&quot;USERNAME&quot; IS NULL AND :original_USERNAME IS NULL)) AND ((&quot;USEREMAIL&quot; = :original_USEREMAIL) OR (&quot;USEREMAIL&quot; IS NULL AND :original_USEREMAIL IS NULL)) AND ((&quot;USERCONTACT&quot; = :original_USERCONTACT) OR (&quot;USERCONTACT&quot; IS NULL AND :original_USERCONTACT IS NULL)) AND ((&quot;USER_ROLE&quot; = :original_USER_ROLE) OR (&quot;USER_ROLE&quot; IS NULL AND :original_USER_ROLE IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_USERID" Type="Decimal" />
                <asp:Parameter Name="original_USERNAME" Type="String" />
                <asp:Parameter Name="original_USEREMAIL" Type="String" />
                <asp:Parameter Name="original_USERCONTACT" Type="String" />
                <asp:Parameter Name="original_USER_ROLE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="USERID" Type="Decimal" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="USEREMAIL" Type="String" />
                <asp:Parameter Name="USERCONTACT" Type="String" />
                <asp:Parameter Name="USER_ROLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="USEREMAIL" Type="String" />
                <asp:Parameter Name="USERCONTACT" Type="String" />
                <asp:Parameter Name="USER_ROLE" Type="String" />
                <asp:Parameter Name="original_USERID" Type="Decimal" />
                <asp:Parameter Name="original_USERNAME" Type="String" />
                <asp:Parameter Name="original_USEREMAIL" Type="String" />
                <asp:Parameter Name="original_USERCONTACT" Type="String" />
                <asp:Parameter Name="original_USER_ROLE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    
</asp:Content>
