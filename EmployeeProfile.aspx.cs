using System;
using System.Linq;
using System.Web.UI.WebControls;

public partial class EmployeeProfile : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadEmployeeProfile();
        }
    }

    private void LoadEmployeeProfile()
    {
        if (Session["Username"] != null)
        {
            string username = Session["Username"].ToString();
            var employee = EmployeeDB.Employees.FirstOrDefault(emp => emp.name == username);

            if (employee != null)
            {
                lblEmpID.Text = employee.emp_id.ToString();
                lblName.Text = employee.name;
                lblDesignation.Text = employee.designation;
                lblPhone.Text = employee.phone_number.ToString();
                //lblTotalLeaves.Text = employee.TotalLeaves.ToString();
                //lblRemainingLeaves.Text = employee.RemainingLeaves.ToString();

                if (employee.ProfilePicture != null)
                {
                    imgProfile.ImageUrl = "ShowImage.aspx?EmployeeID=" + employee.emp_id;
                }
                else
                {
                    imgProfile.ImageUrl = "default-profile.png";
                }
            }
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null && fuProfilePicture.HasFile)
        {
            string username = Session["Username"].ToString();
            var employee = EmployeeDB.Employees.FirstOrDefault(emp => emp.name == username);

            if (employee != null)
            {
                employee.ProfilePicture = fuProfilePicture.FileBytes;
                EmployeeDB.SubmitChanges();
                LoadEmployeeProfile();
            }
        }
    }

    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            string username = Session["Username"].ToString();
            var employee = EmployeeDB.Employees.FirstOrDefault(emp => emp.name == username);

            if (employee != null && txtOldPassword.Text == employee.password)
            {
                if (txtNewPassword.Text == txtConfirmPassword.Text)
                {
                    employee.password = txtNewPassword.Text;
                    EmployeeDB.SubmitChanges();
                    lblMessage.Text = "Password updated successfully!";
                    lblMessage.CssClass = "success-message";
                }
                else
                {
                    lblMessage.Text = "New passwords do not match!";
                }
            }
            else
            {
                lblMessage.Text = "Current password is incorrect!";
            }
        }
    }
}
