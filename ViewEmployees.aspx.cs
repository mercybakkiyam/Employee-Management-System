using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewEmployees : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadEmployees();
        }
    }

    private void LoadEmployees()
    {
        var employees = from emp in EmployeeDB.Employees select emp;
        gvEmployees.DataSource = employees;
        gvEmployees.DataBind();
    }

    protected void gvEmployees_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvEmployees.PageIndex = e.NewPageIndex;
        LoadEmployees();
    }

    protected void gvEmployees_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditEmployee")
        {
            int empId = Convert.ToInt32(e.CommandArgument); // Get Employee ID directly
            Response.Redirect("EditEmployee.aspx?id=" + empId);
        }
    }
}
