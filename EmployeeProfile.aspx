<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster2.master" AutoEventWireup="true" CodeFile="EmployeeProfile.aspx.cs" Inherits="EmployeeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="profile-container-emp">
        <h2 class="profile-header-emp">Employee Profile</h2>

        <asp:Image ID="imgProfile" runat="server" CssClass="profile-img-emp" Width="120px" Height="120px" />

        <asp:FileUpload ID="fuProfilePicture" runat="server" CssClass="upload-input-emp" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload Image" CssClass="upload-btn-emp" OnClick="btnUpload_Click" />

        <div class="profile-details-emp">
            <div class="profile-row-emp"><strong>Employee ID:</strong> <asp:Label ID="lblEmpID" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Name:</strong> <asp:Label ID="lblName" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Designation:</strong> <asp:Label ID="lblDesignation" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Date of Joining:</strong> <asp:Label ID="lblDOJ" runat="server"></asp:Label></div>
            <div class="profile-row-emp"><strong>Salary:</strong> <asp:Label ID="lblSalary" runat="server"></asp:Label></div>
        </div>
    </div>
    <h3>Change Password</h3>
        <div class="change-password">
            <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Current Password"></asp:TextBox>
            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="New Password"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm New Password"></asp:TextBox>
            <asp:Button ID="btnChangePassword" runat="server" Text="Update Password" CssClass="btn" OnClick="btnChangePassword_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
        </div>

</asp:Content>

