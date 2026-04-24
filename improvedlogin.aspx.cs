using System;
using System.Linq;

public partial class Login : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LoginUser(string username, string password)
    {
        var user = db.Users.FirstOrDefault(u => u.Username == username && u.Password == password);
        if (user != null)
        {
            Session["Username"] = user.Username;
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Credentials');</script>");
        }
    }

    protected void ChangePassword(string username, string oldPassword, string newPassword)
    {
        var user = db.Users.FirstOrDefault(u => u.Username == username && u.Password == oldPassword);
        if (user != null)
        {
            user.Password = newPassword;
            db.SubmitChanges();
            Response.Write("<script>alert('Password Changed Successfully');</script>");
        }
        else
        {
            Response.Write("<script>alert('Old Password Incorrect');</script>");
        }
    }
}
