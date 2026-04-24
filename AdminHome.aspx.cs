using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                lblUsername.Text = Session["username"].ToString();
            }
            else
            {
                lblUsername.Text = "Guest";
            }

            LoadStatistics();
        }
    }
    private void LoadStatistics()
    {
        lblTotalEmployees.Text = db.Employees.Count().ToString();
        lblTotalDepartments.Text = db.departments.Count().ToString();
        lblPendingLeaves.Text = db.LeaveRequests.Count(l => l.status == "Pending").ToString();
    }
}
