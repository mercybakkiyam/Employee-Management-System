using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEmployee : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Employee emp = new Employee();
        string name = txtName.Text.Trim();
        string email = txtEmail.Text.Trim();
        long phone = long.Parse(txtPhone.Text.Trim());
        string designation = ddlPosition.SelectedValue;
        DateTime dateOfJoining = Convert.ToDateTime(txtDateOfJoining.Text);
        decimal salary = Convert.ToDecimal(txtSalary.Text);

        emp.name = name;
        emp.email = email;
        emp.phone_number = phone;
        emp.designation = designation;
        emp.date_of_joining = dateOfJoining;
        emp.salary = salary;
        emp.password = "newemployee@123";

        // Insert employee and save changes
        EmployeeDB.Employees.InsertOnSubmit(emp);
        EmployeeDB.SubmitChanges(); // Ensure emp_id is generated

        lblMessage.Text = "Employee added successfully";

        // Clear all textboxes
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        ddlPosition.SelectedIndex = 0;
        txtDateOfJoining.Text = "";
        txtSalary.Text = "";
    }

}