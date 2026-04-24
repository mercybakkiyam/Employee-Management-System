using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeLogin : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            // Initialize session variable on first page load
            if (Session["LoginAttempts"] == null)
            {
                Session["LoginAttempts"] = 0;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        // Retrieve all users from the database
        var allUsers = EmployeeDB.Employees.ToList();

        bool userFound = false;
        bool passwordCorrect = false;

        foreach (var user in allUsers)
        {
            if (user.name == username) // Check if username exists
            {
                userFound = true; // User exists

                if (user.password == password) // Check if password matches
                {
                    passwordCorrect = true;

                    // Reset login attempts on successful login
                    Session["LoginAttempts"] = 0;

                    // Store session values
                    Session["Username"] = user.name;

                    Response.Redirect("EmployeeHome.aspx"); // Redirect to Employee Home
                    return; // Stop execution after redirection
                }
                break; // Stop loop since we found the user
            }
        }

        // Handling incorrect login
        if (!userFound)
        {
            lblMessage.Text = "User does not exist!";
        }
        else if (!passwordCorrect)
        {
            int attempts = (int)Session["LoginAttempts"];
            attempts++; // Increase failed attempts
            Session["LoginAttempts"] = attempts;

            lblMessage.Text = "Incorrect Password! Attempts: " + attempts + "/3";
            lblMessage.ForeColor = System.Drawing.Color.Red;

            // Disable button if attempts reach 3
            if (attempts >= 3)
            {
                btnLogin.Enabled = false;
                lblMessage.Text = "Too many failed attempts! Login disabled.";
            }
        }
    }
}