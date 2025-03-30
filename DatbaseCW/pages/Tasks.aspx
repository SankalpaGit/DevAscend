<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Tasks.aspx.cs" Inherits="DatbaseCW.Pages.Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>List of Tasks</h3>

    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
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
            <asp:DropDownList ID="PROJECTIDDropDown" runat="server" 
                DataSourceID="SqlDataSourceProjects"
                  DataTextField="PROJECTID" DataValueField="PROJECTID" 
                  SelectedValue='<%# Bind("PROJECTID") %>'>
            </asp:DropDownList>
            <asp:LinkButton ID="UpdateButton" runat="server"  CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>


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
            <asp:DropDownList ID="PROJECTIDDropDown" runat="server" DataSourceID="SqlDataSourceProjects"
                  DataTextField="PROJECTID" DataValueField="PROJECTID" 
                  SelectedValue='<%# Bind("PROJECTID") %>'>
            </asp:DropDownList>
            <asp:LinkButton ID="InsertButton" runat="server"  CommandName="Insert" Text="Insert" />
            ;<asp:LinkButton ID="InsertCancelButton" runat="server"  CommandName="Cancel" Text="Cancel" />
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
            <asp:LinkButton ID="EditButton" runat="server"  CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server"  CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server"  CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" DataKeyNames="TASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TASKID" HeaderText="TASKID" ReadOnly="True" />
            <asp:BoundField DataField="TASKNAME" HeaderText="TASKNAME"/>
            <asp:BoundField DataField="TASKSTARTDATE" HeaderText="TASKSTARTDATE" />
            <asp:BoundField DataField="TASKDUEDATE" HeaderText="TASKDUEDATE"  />
            <asp:BoundField DataField="TASKSTATUS" HeaderText="TASKSTATUS" />
            <asp:TemplateField HeaderText="PROJECTID">
                <ItemTemplate>
                    <asp:Label ID="lblProject" runat="server" Text='<%# Eval("PROJECTID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="PROJECTIDDropDownList" 
                        runat="server" DataSourceID="SqlDataSourceProjects" 
                        DataTextField="ProjectID" DataValueField="ProjectID"
                        SelectedValue='<%# Bind("PROJECTID") %>' />
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSourceProjects" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>"
    ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>"
    SelectCommand="SELECT PROJECTID, PROJECTNAME FROM PROJECT">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" 
    SelectCommand="SELECT * FROM TASK"
    InsertCommand="INSERT INTO TASK (TASKID, TASKNAME, TASKSTARTDATE, TASKDUEDATE, TASKSTATUS, PROJECTID) 
                    VALUES (:TASKID, :TASKNAME, :TASKSTARTDATE, :TASKDUEDATE, :TASKSTATUS, :PROJECTID)"
    DeleteCommand="DELETE FROM TASK WHERE TASKID = :TASKID"
    UpdateCommand="UPDATE TASK SET TASKNAME = :TASKNAME, 
                                    TASKSTARTDATE = :TASKSTARTDATE,
                                    TASKDUEDATE= :TASKDUEDATE, 
                                    TASKSTATUS = :TASKSTATUS, 
                                    PROJECTID = :PROJECTID 
                    WHERE TASKID = :TASKID">
        <DeleteParameters>
            <asp:Parameter Name="TASKID" Type="Decimal" />
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
            <asp:Parameter Name="TASKID" Type="Decimal" />
            <asp:Parameter Name="TASKNAME" Type="String" />
            <asp:Parameter Name="TASKSTARTDATE" Type="DateTime" />
            <asp:Parameter Name="TASKDUEDATE" Type="DateTime" />
            <asp:Parameter Name="TASKSTATUS" Type="String" />
            <asp:Parameter Name="PROJECTID" Type="Decimal" />

 </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
