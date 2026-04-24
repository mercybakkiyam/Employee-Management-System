using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin0_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }

    protected void btnLogin1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmployeeLogin.aspx");
    }
}