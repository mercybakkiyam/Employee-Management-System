using System;
using System.Linq;

public partial class EmployeeHome : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ValidateSession();
            LoadEmployeeStats();
        }
    }

    private void ValidateSession()
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("EmployeeLogin.aspx");
        }
        else
        {
            lblEmployeeName.Text = Session["Username"].ToString();
        }
    }

    private void LoadEmployeeStats()
    {
        // Total employees count
        lblTotalEmployees.Text = db.Employees.Count().ToString();

        // Pending leave requests for the logged-in employee
        var pendingLeaves = (from l in db.LeaveRequests
                             join e in db.Employees on l.emp_id equals e.emp_id
                             where e.name == Session["Username"].ToString() && l.status == "Pending"
                             select l).Count();

        lblPendingLeaves.Text = pendingLeaves.ToString();
        lblPendingLeaves.Text = pendingLeaves.ToString();

        // Approved leave count
        var ApprovedLeaves = (from l in db.LeaveRequests
                             join e in db.Employees on l.emp_id equals e.emp_id
                             where e.name == Session["Username"].ToString() && l.status == "Approved"
                             select l).Count();
    }

    protected void btnApplyLeave_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplyLeave.aspx");
    }

    protected void btnViewHistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("LeaveHistory.aspx");
    }

    protected void btnManageProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeProfile.aspx");
    }
}
