<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Milestone.aspx.cs" Inherits="DatbaseCW.Pages.Milestone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h3>Add/Update Milestone</h3>

   
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="MILESTONEID" 
                  DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="4"  GridLines="Horizontal">
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
            PROJECT ID:
            <asp:DropDownList ID="PROJECTIDDropDown" runat="server" DataSourceID="SqlDataSourceProjects"
                              DataTextField="PROJECTID" DataValueField="PROJECTID" 
                              SelectedValue='<%# Bind("PROJECTID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
            PROJECT ID:
            <asp:DropDownList ID="PROJECTIDDropDownInsert" runat="server" DataSourceID="SqlDataSourceProjects"
                              DataTextField="PROJECTID" DataValueField="PROJECTID"
                              SelectedValue='<%# Bind("PROJECTID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>

        <ItemTemplate>
            MILESTONEID:
            <asp:Label ID="MILESTONEIDLabel" runat="server" Text='<%# Eval("MILESTONEID") %>' />
            <br />
            MILESTONENAME:
            <asp:Label ID="MILESTONENAMELabel" runat="server" Text='<%# Eval("MILESTONENAME") %>' />
            <br />
            MILESTONEDATE:
            <asp:Label ID="MILESTONEDATELabel" runat="server" Text='<%# Eval("MILESTONEDATE") %>' />
            <br />
            PROJECT ID:
            <asp:Label ID="PROJECTIDLabel" runat="server" Text='<%# Eval("PROJECTID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            <asp:LinkButton ID="NewButton" runat="server" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>

      <br />
  <h3>Milestone List</h3>
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                  DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Width="100%" CellPadding="10" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" />
            <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" />
            <asp:BoundField DataField="MILESTONEDATE" HeaderText="MILESTONEDATE" />
            <asp:TemplateField HeaderText="PROJECT ID">
                <EditItemTemplate>
                    <asp:DropDownList ID="PROJECTIDDropDownGrid" runat="server" DataSourceID="SqlDataSourceProjects"
                                      DataTextField="PROJECTID" DataValueField="PROJECTID" 
                                      SelectedValue='<%# Bind("PROJECTID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="PROJECTIDLabelGrid" runat="server" Text='<%# Eval("PROJECTID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
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

   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>"
    ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>"
    SelectCommand="SELECT * FROM MILESTONE"
    InsertCommand="INSERT INTO MILESTONE (MILESTONEID, MILESTONENAME, MILESTONEDATE, PROJECTID) 
                   VALUES (:MILESTONEID, :MILESTONENAME, :MILESTONEDATE, :PROJECTID)"
    UpdateCommand="UPDATE MILESTONE SET MILESTONENAME = :MILESTONENAME, 
                                        MILESTONEDATE = :MILESTONEDATE, 
                                        PROJECTID = :PROJECTID 
                   WHERE MILESTONEID = :MILESTONEID"
    DeleteCommand="DELETE FROM MILESTONE WHERE MILESTONEID = :MILESTONEID">

    <DeleteParameters>
        <asp:Parameter Name="MILESTONEID" Type="Decimal" />
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
        <asp:Parameter Name="MILESTONEID" Type="Decimal" /> 
    </UpdateParameters>
</asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSourceProjects" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>"
        SelectCommand="SELECT PROJECTID, PROJECTNAME FROM PROJECT">
    </asp:SqlDataSource>

</asp:Content>
