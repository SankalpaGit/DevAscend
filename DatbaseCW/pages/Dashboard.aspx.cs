using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;  // Use this instead of System.Data.OracleClient

namespace DatbaseCW.Pages
{
    public partial class Dashboard : Page
    {
        private string connectionString = "User Id=sankalpa;Password=123;Data Source=localhost:1521/XE";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserDropdown();
                LoadProjectDropdown();
                BindGridData();
            }
        }

        private void LoadUserDropdown()
        {
            string query = "SELECT USERID FROM \"User\"";
            using (OracleConnection con = new OracleConnection(connectionString))
            {
                con.Open();
                using (OracleCommand cmd = new OracleCommand(query, con))
                using (OracleDataReader reader = cmd.ExecuteReader())
                {
                    ddlUserId.Items.Clear();
                    while (reader.Read())
                    {
                        ddlUserId.Items.Add(new ListItem(reader["USERID"].ToString(), reader["USERID"].ToString()));
                    }
                }
            }
        }

        private void LoadProjectDropdown()
        {
            string query = "SELECT PROJECTID FROM PROJECT";
            using (OracleConnection con = new OracleConnection(connectionString))
            {
                con.Open();
                using (OracleCommand cmd = new OracleCommand(query, con))
                using (OracleDataReader reader = cmd.ExecuteReader())
                {
                    ddlProjectId.Items.Clear();
                    while (reader.Read())
                    {
                        ddlProjectId.Items.Add(new ListItem(reader["PROJECTID"].ToString(), reader["PROJECTID"].ToString()));
                    }
                }
            }
        }

        protected void ddlUserId_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridData();
        }

        protected void ddlProjectId_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridData();
        }

        private void BindGridData()
        {
            string selectedUserId = ddlUserId.SelectedValue;
            string selectedProjectId = ddlProjectId.SelectedValue;

            string query1 = $@"
        SELECT ""User"".USERNAME, PROJECT.PROJECTNAME, PROJECT.PROJECTSTARTDATE, PROJECT.PROJECTDUEDATE, PROJECT.PROJECTSTATUS
        FROM ""User"", USER_PROJECT, PROJECT 
        WHERE ""User"".USERID = USER_PROJECT.USER_ID 
        AND USER_PROJECT.PROJECT_ID = PROJECT.PROJECTID 
        AND (""User"".USERID = {selectedUserId})";

            string query2 = $@"
        SELECT PROJECT.PROJECTID, PROJECT.PROJECTNAME, PROJECT.PROJECTSTARTDATE, PROJECT.PROJECTDUEDATE, MILESTONE.MILESTONETITLE, MILESTONE.MILESTONEDATE
        FROM PROJECT, TASK, MILESTONE 
        WHERE PROJECT.PROJECTID = TASK.PROJECTID 
        AND TASK.MILESTONEID = MILESTONE.MILESTONEID 
        AND (PROJECT.PROJECTID = {selectedProjectId})";

            using (OracleConnection con = new OracleConnection(connectionString))
            {
                con.Open();

                // Bind GridView1
                using (OracleCommand cmd1 = new OracleCommand(query1, con))
                using (OracleDataAdapter da1 = new OracleDataAdapter(cmd1))
                {
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    GridView1.DataSource = dt1;
                    GridView1.DataBind();
                }

                // Bind GridView2
                using (OracleCommand cmd2 = new OracleCommand(query2, con))
                using (OracleDataAdapter da2 = new OracleDataAdapter(cmd2))
                {
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);
                    GridView2.DataSource = dt2;
                    GridView2.DataBind();
                }
            }
        }

    }
}
