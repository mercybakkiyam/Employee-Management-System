using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteEmployeeaspx : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvEmployee.DataSource = null;
            gvEmployee.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string username = System.Text.RegularExpressions.Regex.Replace(txtUsername.Text.Trim(), @"\s+", " ").ToLower();

        var employee = EmployeeDB.Employees
            .Where(emp => emp.name.Trim().ToLower() == username)
            .Select(emp => new
            {
                emp.emp_id,    // Ensure emp_id exists in your database
                emp.name,
                emp.email,
                emp.designation,
                emp.date_of_joining
            })
            .ToList();

        if (employee.Any())
        {
            gvEmployee.DataSource = employee;
            gvEmployee.DataBind();
            lblMessage.Visible = false;


        }
        else
        {
            gvEmployee.DataSource = null;
            gvEmployee.DataBind();
            lblMessage.Text = "User does not exist";
            lblMessage.Visible = true;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int empID = Convert.ToInt32(btn.CommandArgument);  // Ensure CommandArgument holds emp_id

        var employeeToDelete = EmployeeDB.Employees.SingleOrDefault(emp => emp.emp_id == empID);
        if (employeeToDelete != null)
        {
            EmployeeDB.Employees.DeleteOnSubmit(employeeToDelete);
            EmployeeDB.SubmitChanges();
            
            lblMessage.Text = " Employee deleted Successfully";
        }

        // Refresh grid after deletion
        btnSearch_Click(null, null);
    }
}
