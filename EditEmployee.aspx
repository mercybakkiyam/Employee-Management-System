<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="EditEmployee.aspx.cs" Inherits="EditEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
        .edit-container {
            width: 34%;
            margin: auto;
            background: #34495E; /* Slightly lighter than #2C3E50 */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            color: white;
        }

        /* Styling form elements */
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        /* Styling the labels */
        .form-group label {
            flex: 1;
            font-weight: bold;
            text-align: right;
            margin-right: 15px;
            font-size: 16px;
        }

        /* Styling the textboxes with reduced width */
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="tel"],
        .form-group input[type="date"],
        .form-group input[type="number"] {
            flex: 2;
            /* Reduced width */
            padding: 8px;  /* Reduced padding */
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;  /* Slightly smaller font */
        }

        /* Update Button Styling */
        #btnUpdate {
            background: #E67E22; /* Warm contrasting color */
            color: white;
            padding: 8px 18px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
            display: block;
            margin: auto;
        }

        #btnUpdate:hover {
            background: #D35400; /* Darker hover effect */
            transform: scale(1.05);
        }

        /* Label for success message */
        #Label1 {
            margin-top: 15px;
            font-weight: bold;
            color: #F4D03F;
            text-align: center;
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="edit-container">
        <h2 style="text-align: center;">Edit Employee</h2>
        <p style="text-align: center;">&nbsp;</p>

        <div class="form-group">
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server" Width="158px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtPhone">Phone:</label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtPosition">Position:</label>
            <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtDateOfJoining">Date of Joining:</label>
            <asp:TextBox ID="txtDateOfJoining" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtSalary">Salary:</label>
            <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
        </div>

        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />

        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>
