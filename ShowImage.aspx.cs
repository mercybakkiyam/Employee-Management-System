using System;
using System.Linq;

public partial class ShowImage : System.Web.UI.Page
{
    DataClassesDataContext EmployeeDB = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["EmployeeID"] != null)
        {
            int empID;
            if (int.TryParse(Request.QueryString["EmployeeID"], out empID))
            {
                var employee = EmployeeDB.Employees.FirstOrDefault(emp => emp.emp_id == empID);
                if (employee != null && employee.ProfilePicture != null)
                {
                    byte[] imageData = employee.ProfilePicture.ToArray(); // Convert Binary to byte[]
                    Response.ContentType = "image/jpeg";
                    Response.BinaryWrite(imageData);
                    Response.End();
                }
            }
        }
    }
}
