<%@ Page Title="Employee Home" Language="C#" MasterPageFile="~/EmployeeMaster2.master" AutoEventWireup="true" CodeFile="EmployeeHome.aspx.cs" Inherits="EmployeeHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="EmployeeHomeStyles.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="employee-dashboard-container">
        <h2>Welcome, <asp:Label ID="lblEmployeeName" runat="server" CssClass="employee-name"></asp:Label>!</h2>
        <div class="stats-container">
            <div class="stat-box">
                <h3>Total Employees</h3>
                <asp:Label ID="lblTotalEmployees" runat="server" CssClass="stat-value"></asp:Label>
            </div>
            <div class="stat-box">
                <h3>Pending Leave Requests</h3>
                <asp:Label ID="lblPendingLeaves" runat="server" CssClass="stat-value"></asp:Label>
            </div>
            <div class="stat-box">
                <h3>Approved Leaves</h3>
                <asp:Label ID="lblApprovedLeaves" runat="server" CssClass="stat-value"></asp:Label>
            </div>
        </div>
        <div class="action-buttons">
            <asp:Button ID="btnApplyLeave" runat="server" CssClass="btn" Text="Apply for Leave" OnClick="btnApplyLeave_Click" />
            <asp:Button ID="btnViewHistory" runat="server" CssClass="btn" Text="Leave History" OnClick="btnViewHistory_Click" />
            <asp:Button ID="btnManageProfile" runat="server" CssClass="btn" Text="Manage Profile" OnClick="btnManageProfile_Click" />
        </div>
    </div>
</asp:Content>
