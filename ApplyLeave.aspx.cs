using System;
using System.Linq;
using System.Web.UI;

public partial class ApplyLeave : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("EmployeeLogin.aspx"); // Redirect to login if session expired
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Retrieve logged-in employee's ID using their username
        string username = Session["Username"].ToString();
        var employee = EmployeeDB.Employees.FirstOrDefault(emp => emp.name == username);

        if (employee == null)
        {
            lblMessage.Text = "Error: Employee not found!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        int empId = employee.emp_id; // Get Employee ID

        // Get form values
        DateTime startDate, endDate;
        bool isStartDateValid = DateTime.TryParse(txtStartDate.Text, out startDate);
        bool isEndDateValid = DateTime.TryParse(txtEndDate.Text, out endDate);

        if (!isStartDateValid || !isEndDateValid)
        {
            lblMessage.Text = "Invalid date format!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        // **Validation: Ensure end date is not before start date**
        if (endDate < startDate)
        {
            lblMessage.Text = "Error: End date cannot be earlier than start date!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        // Create a new leave request entry
        LeaveRequest newLeave = new LeaveRequest
        {
            emp_id = empId,
            leave_type = ddlLeaveType.SelectedValue,
            start_date = startDate,
            end_date = endDate,
            reason = txtReason.Text.Trim(),
            status = "Pending",  // Default status
            admin_remarks = "",  // Empty initially
            request_date = DateTime.Now // Store current timestamp
        };

        // Insert into database
        EmployeeDB.LeaveRequests.InsertOnSubmit(newLeave);
        EmployeeDB.SubmitChanges();

        lblMessage.Text = "Leave request submitted successfully!";
        lblMessage.ForeColor = System.Drawing.Color.Green;

        // Clear form fields after successful submission
        txtStartDate.Text = "";
        txtEndDate.Text = "";
        txtReason.Text = "";
        ddlLeaveType.SelectedIndex = 0;
    }
}
