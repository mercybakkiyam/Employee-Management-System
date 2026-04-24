using System;
using System.Linq;
using System.Web.UI;

public partial class EmployeeMaster : System.Web.UI.MasterPage
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ValidateSession();
           
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
            lblUsername.Text = Session["Username"].ToString();
        }
    }

    
    
}
