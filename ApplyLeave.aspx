<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster2.master" AutoEventWireup="true" CodeFile="ApplyLeave.aspx.cs" Inherits="ApplyLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>

<div class="container">
    <h2 class="form-heading">Apply for Leave</h2>

    <div class="form-group">
        <label for="ddlLeaveType">Leave Type:</label>
        <asp:DropDownList ID="ddlLeaveType" runat="server" CssClass="form-control">
            <asp:ListItem Text="Sick Leave" Value="Sick Leave"></asp:ListItem>
            <asp:ListItem Text="Casual Leave" Value="Casual Leave"></asp:ListItem>
            <asp:ListItem Text="Vacation" Value="Vacation"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <label for="txtStartDate">Start Date:</label>
        <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtEndDate">End Date:</label>
        <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtReason">Reason:</label>
        <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
    </div>

    <asp:Button ID="btnSubmit" runat="server" Text="Submit Leave Request" CssClass="submit-btn" OnClick="btnSubmit_Click" />
</div>


</asp:Content>
