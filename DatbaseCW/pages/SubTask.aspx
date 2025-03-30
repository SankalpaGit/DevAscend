<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="SubTask.aspx.cs" Inherits="DatbaseCW.Pages.SubTask" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <br />

    <h3>Subtasks List</h3>

    <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
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
            <asp:DropDownList ID="TASKIDDropDown" runat="server"
                DataSourceID="SqlDataSourceTaskList"
                DataTextField="TaskID"
                DataValueField="TaskID"
                SelectedValue='<%# Bind("TASKID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>

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
            <asp:DropDownList ID="TASKIDDropDown" runat="server"
                DataSourceID="SqlDataSourceTaskList"
                DataTextField="TASKID"
                DataValueField="TaskID"
                SelectedValue='<%# Bind("TASKID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>

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
            <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            <asp:LinkButton ID="NewButton" runat="server" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:FormView>

    <br />


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%"
        DataKeyNames="SUBTASKID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SUBTASKID" HeaderText="SUBTASKID" ReadOnly="True" SortExpression="SUBTASKID" />
            <asp:BoundField DataField="SUBTASKNAME" HeaderText="SUBTASKNAME" SortExpression="SUBTASKNAME" />
            <asp:BoundField DataField="SUBTASKDUE" HeaderText="SUBTASKDUE" SortExpression="SUBTASKDUE" />
            <asp:TemplateField HeaderText="TASKID">
                <ItemTemplate>
                    <asp:Label ID="TASKIDLabel" runat="server" Text='<%# Eval("TASKID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="TASKIDDropDown" runat="server"
                        DataSourceID="SqlDataSourceTaskList"
                        DataTextField="TASKID"
                        DataValueField="TASKID"
                        SelectedValue='<%# Bind("TASKID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
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
        SelectCommand="SELECT * FROM SUBTASK"
        InsertCommand="INSERT INTO SUBTASK (SUBTASKID, SUBTASKNAME, SUBTASKDUE, TASKID) VALUES (:SUBTASKID, :SUBTASKNAME, :SUBTASKDUE, :TASKID)"
        UpdateCommand="UPDATE SUBTASK SET SUBTASKNAME = :SUBTASKNAME, 
                                            SUBTASKDUE = :SUBTASKDUE, 
                                            TASKID = :TASKID 
                        WHERE SUBTASKID = :SUBTASKID"
        DeleteCommand="DELETE FROM SUBTASK WHERE SUBTASKID = :SUBTASKID">

        <DeleteParameters>
            <asp:Parameter Name="SUBTASKID" Type="Decimal" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="SUBTASKID" Type="Decimal" />
            <asp:Parameter Name="SUBTASKNAME" Type="String" />
            <asp:Parameter Name="SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="TASKID" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SUBTASKID" Type="Decimal" />
            <asp:Parameter Name="SUBTASKNAME" Type="String" />
            <asp:Parameter Name="SUBTASKDUE" Type="DateTime" />
            <asp:Parameter Name="TASKID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceTaskList" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>"
        SelectCommand="SELECT TASKID, TASKNAME FROM TASK"></asp:SqlDataSource>

</asp:Content>
