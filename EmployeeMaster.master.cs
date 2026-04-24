using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeManagementMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadUsername();
        }
    }
    private void LoadUsername()
    {
        // Check if session has a username and display it
        if (Session["Username"] != null)
        {
            lblUsername.Text = Session["Username"].ToString();
        }
        else
        {
            lblUsername.Text = "Guest"; // Default text if session is empty
        }
    }

    }
