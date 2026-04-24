using System;
using System.Linq;
using System.Web.UI.WebControls;

public partial class LeaveRequest : System.Web.UI.Page
{
    // Use DataClassesDataContext for database access
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadLeaveRequests();
        }
    }

    private void LoadLeaveRequests()
    {
        var leaveRequests = EmployeeDB.LeaveRequests
            .Select(lr => new
            {
                lr.leave_id,
                lr.emp_id,
                lr.leave_type,
                lr.start_date,
                lr.end_date,
                lr.reason,  
                lr.status,
                lr.request_date
            }).ToList();

        gridview1.DataSource = leaveRequests;
        gridview1.DataBind();
    }

    protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetails")
        {
            int leaveID = Convert.ToInt32(e.CommandArgument);

            var leaveDetails = EmployeeDB.LeaveRequests
                .Where(lr => lr.leave_id == leaveID)
                .Select(lr => new
                {
                    lr.leave_id,
                    lr.emp_id,
                    lr.leave_type,
                    lr.start_date,
                    lr.end_date,
                    lr.reason,  
                    lr.status,
                    lr.admin_remarks,
                    lr.request_date
                }).FirstOrDefault();

            if (leaveDetails != null)
            {
                detailview1.DataSource = new[] { leaveDetails };
                detailview1.DataBind();
                detailview1.Visible = true;
            }
        }
    }

    protected void detailview1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        int leaveID = Convert.ToInt32(detailview1.DataKey.Value);

        var leaveRequest = EmployeeDB.LeaveRequests.SingleOrDefault(lr => lr.leave_id == leaveID);
        if (leaveRequest != null)
        {
            if (e.CommandName == "Approve")
            {
                leaveRequest.status = "Approved";
            }
            else if (e.CommandName == "Deny")
            {
                leaveRequest.status = "Denied";
            }

            EmployeeDB.SubmitChanges();
            LoadLeaveRequests(); // Refresh GridView
            detailview1.Visible = false; // Hide DetailsView after action
        }
    }
}
