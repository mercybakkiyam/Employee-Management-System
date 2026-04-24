# Employee Management System

A web-based Employee Management System developed using ASP.NET Web Forms and C#. The application supports both Admin and Employee modules with functionalities for managing employee records and leave requests.

---

## 🔹 Features

### Admin Module
- Admin login authentication
- Dashboard with system statistics
- Add new employees
- View employee details
- Edit employee information
- Delete employee records
- Manage and respond to leave requests

### Employee Module
- Employee login authentication
- Dashboard with personal and system information
- Apply for leave
- View leave status
- Manage profile and update password

---

## 🔹 Application Flow

### Entry Point
- `MainLogin.aspx` (Select Admin or Employee)

### Admin Flow
MainLogin → AdminLogin → AdminHome → Manage Employees / Leave Requests

### Employee Flow
MainLogin → EmployeeLogin → EmployeeHome → Apply Leave / Profile Management

---

## 🔹 Technologies Used

- ASP.NET Web Forms
- C#
- SQL Server
- HTML, CSS
- Visual Studio

---

## 🔹 Key Pages

- MainLogin.aspx (Entry page)
- AdminLogin.aspx
- EmployeeLogin.aspx
- AdminHome.aspx
- EmployeeHome.aspx
- AddEmployee.aspx
- ViewEmployees.aspx
- EditEmployee.aspx
- DeleteEmploye.aspx
- ApplyLeave.aspx
- LeaveRequest.aspx
- EmployeeProfile.aspx

---

## 🔹 How to Run the Project

1. Open the project in Visual Studio
2. Configure the SQL Server database connection in `Web.config`
3. Set `MainLogin.aspx` as the Start Page
4. Run the application using IIS Express

---

## 🔹 Validation & Security

- Input validation using ASP.NET validators
- Login authentication for Admin and Employee
- Form validations for employee data and leave requests

---

## 🔹 Notes

- Some additional files like `improvedlogin.aspx` are experimental and not part of the main workflow
- The application follows a role-based structure (Admin / Employee)

---

## 🔹 Author

Developed by Mercy Bakkiyam M
