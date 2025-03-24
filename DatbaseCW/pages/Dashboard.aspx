<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/layout/Layout.Master" CodeBehind="Dashboard.aspx.cs" Inherits="DatbaseCW.Pages.Dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    .grid-container {
       
        text-align: center;
    }
</style>


    <h3>Dashboard Overview</h3>
   
   
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="USERNAME" width="100px" Height="50px" DataValueField="USERID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
 
        <br />
    <br />
   

        <div class="grid-container">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="12" DataKeyNames="USERID" DataSourceID="SqlDataSource3" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" Width="100%" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID"  />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
            <asp:BoundField DataField="USEREMAIL" HeaderText="USEREMAIL" SortExpression="USEREMAIL" />
            <asp:BoundField DataField="USERCONTACT" HeaderText="USERCONTACT" SortExpression="USERCONTACT" />
            <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</div>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot; WHERE (&quot;USERID&quot; = :USERID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="USERID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />

   <div class="grid-container">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
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
       </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT PROJECT.PROJECTID, PROJECT.PROJECTNAME,  PROJECT.PROJECTSTARTDATE, PROJECT.PROJECTDUEDATE, PROJECT.PROJECTSTATUS FROM USERPROJECT, PROJECT, USERS WHERE USERPROJECT.PROJECTID = PROJECT.PROJECTID AND USERPROJECT.USERID = USERS.USERID AND (USERS.USERID = :USERID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="USERID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
   
  <br />
    <br />

        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="PROJECTNAME" width="100px" Height="50px"  DataValueField="PROJECTID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
    
    <br /><br />
    <div class="grid-container">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource6" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot; WHERE (&quot;PROJECTID&quot; = :PROJECTID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="PROJECTID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
 
    <br /><br />
    <div class="grid-container">
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="MILESTONEID" DataSourceID="SqlDataSource7" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="MILESTONEID" HeaderText="MILESTONEID" ReadOnly="True" SortExpression="MILESTONEID" />
                <asp:BoundField DataField="PROJECTID" HeaderText="PROJECTID" SortExpression="PROJECTID" />
                <asp:BoundField DataField="MILESTONENAME" HeaderText="MILESTONENAME" SortExpression="MILESTONENAME" />
                <asp:BoundField DataField="MILESTONEDATE" HeaderText="MILESTONEDATE" SortExpression="MILESTONEDATE" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT MILESTONE.MILESTONEID, MILESTONE.PROJECTID, MILESTONE.MILESTONENAME, MILESTONE.MILESTONEDATE FROM MILESTONE, PROJECT WHERE MILESTONE.PROJECTID = PROJECT.PROJECTID AND (PROJECT.PROJECTID = :PROJECTID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="PROJECTID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
 

    <br />
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource8" DataTextField="PROJECTNAME" DataValueField="PROJECTID"  width="100px" Height="50px">
    </asp:DropDownList>
    <p></p>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
    <div class="grid-container">
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECTID" DataSourceID="SqlDataSource10" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
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
        </div>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot; WHERE (&quot;PROJECTID&quot; = :PROJECTID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="PROJECTID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <div class="grid-container">
    <asp:GridView ID="GridView5" runat="server" DataSourceID="SqlDataSource9" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="10" Width="100%" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
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
        </div>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringmain %>" ProviderName="<%$ ConnectionStrings:ConnectionStringmain.ProviderName %>" SelectCommand="SELECT * FROM (SELECT u.USERID, u.USERNAME, COUNT(t.TASKID) AS noofcompletedtask FROM USERS u JOIN USERTASK tu ON u.USERID = tu.USERID JOIN TASK t ON tu.TASKID = t.TASKID JOIN PROJECT p ON t.PROJECTID = p.PROJECTID WHERE t.TASKSTATUS = 'completed' AND p.PROJECTID = :PROJECTID GROUP BY u.USERID, u.USERNAME ORDER BY noofcompletedtask DESC)WHERE ROWNUM &lt; =3">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" DefaultValue="" Name="PROJECTID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
 
    <br />
    <br />
 
</asp:Content>
