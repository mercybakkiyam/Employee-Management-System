using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditEmployee : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null) // Ensure the parameter exists
            {
                int empId = Convert.ToInt32(Request.QueryString["id"]);
                LoadEmployeeDetails(empId);
            }
        }
    }

    private void LoadEmployeeDetails(int empId)
    {
        // Fetch the existing employee from the database
        Employee emp = EmployeeDB.Employees.FirstOrDefault(e => e.emp_id == empId);

        if (emp != null)
        {
            txtName.Text = emp.name;
            txtEmail.Text = emp.email;
            txtPhone.Text = emp.phone_number.ToString();
            txtPosition.Text = emp.designation;
            txtDateOfJoining.Text = emp.date_of_joining.ToString("yyyy-MM-dd");
            txtSalary.Text = emp.salary.ToString();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int empId = Convert.ToInt32(Request.QueryString["id"]);
            Employee emp = EmployeeDB.Employees.FirstOrDefault(empRecord => empRecord.emp_id == empId);

            if (emp != null)
            {
                emp.name = txtName.Text.Trim();
                emp.email = txtEmail.Text.Trim();
                emp.phone_number = Convert.ToInt64(txtPhone.Text.Trim());
                emp.designation = txtPosition.Text.Trim();
                emp.date_of_joining = Convert.ToDateTime(txtDateOfJoining.Text);
                emp.salary = Convert.ToDecimal(txtSalary.Text);

                EmployeeDB.SubmitChanges(); // Save the changes
                Label1.Text = "Employee updated successfully!";
                Response.Redirect("ViewEmployees.aspx");
            }
            else
            {
                Label1.Text = "Error: Employee not found!";
            }
        }
    }

}
