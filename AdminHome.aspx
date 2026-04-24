<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="dashboard-container">
        <div class="welcome-section">
            <h2>Welcome, <asp:Label ID="lblUsername" runat="server"></asp:Label></h2>
            <h3>BakMerc Management System</h3>
        </div>

        <div class="stats-container">
            <div class="card">
                <img src="emp.png" alt="Employees">
                <h3>Total Employees</h3>
                <asp:Label ID="lblTotalEmployees" runat="server" CssClass="stat-number"></asp:Label>
            </div>

            <div class="card">
                <img src="dept.png" alt="Departments">
                <h3>Total Departments</h3>
                <asp:Label ID="lblTotalDepartments" runat="server" CssClass="stat-number"></asp:Label>
            </div>

            <div class="card">
                <img src="penleave.png" alt="Attendance">
                <h3>Pending Leave Requests</h3>
                <asp:Label ID="lblPendingLeaves" runat="server" CssClass="stat-number"></asp:Label>
            </div>
        </div>

        <div class="actions-container">
            <a href="AddEmployee.aspx" class="action-card">
                <img src="addemp.png" alt="Add">
                Add Employee
            </a>
            <a href="ViewEmployees.aspx" class="action-card">
                <img src="viewemp.png" alt="View">
                View Employees
            </a>
            <a href="DeleteEmploye.aspx" class="action-card">
                <img src="deletemp.png" alt="Delete">
                Delete Employee
            </a>
            <a href="LeaveRequest.aspx" class="action-card">
                <img src="leaveemp.png" alt="Leave Requests">
                Leave Requests
            </a>
        </div>
    </div>
</asp:Content>

