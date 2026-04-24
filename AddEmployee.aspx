<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h2 style="margin-left: 48px; width: 360px; height: 34px;">&nbsp;&nbsp;Add New Employee</h2>
        <p style="margin-left: 48px; width: 360px; height: 34px;">
        
        <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Green"></asp:Label>

        </p>
        <table>
            <tr>
                <td><asp:Label ID="lblName" runat="server" Text="Employee Name:" CssClass="form-label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-input" Width="178px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                        ErrorMessage="Name is Mandatory!" CssClass="error-message" ForeColor="Red">Name is Mandatory</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="form-label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required!" CssClass="error-message" ForeColor="Red">Email ID is Mandatory</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Require proper format for gmail" CssClass="error-message" ForeColor="Red"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">Invalid Email Format</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="lblPhone" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" 
                        ErrorMessage="Phone number is required!" CssClass="error-message" ForeColor="Red">Employee Phone Number is Mandatory</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                        ErrorMessage="Invalid phone number!" CssClass="error-message" ForeColor="Red"
                        ValidationExpression="^\d{10}$">phone number should contain 10 digits</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="lblPosition" runat="server" Text="Designation:" CssClass="form-label"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-input">
    <asp:ListItem Text="Select Designation" Value="" />
    <asp:ListItem Text="Manager" Value="Manager" />
    <asp:ListItem Text="Developer" Value="Developer" />
    <asp:ListItem Text="HR" Value="HR" />
    <asp:ListItem Text="Tester" Value="Tester" />
</asp:DropDownList>
<asp:RequiredFieldValidator ID="rfvDesignation" runat="server" ControlToValidate="ddlPosition"
    InitialValue="" ErrorMessage="Please select a designation!" CssClass="error-message" ForeColor="Red">
</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Date Of Joining: " CssClass="form-label"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtDateOfJoining" runat="server" CssClass="form-input" TextMode="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Salary: " CssClass="form-label"></asp:Label></td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="txtSalary" runat="server" CssClass="form-input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Salary is required!" CssClass="error-message" ForeColor="Red">This Field is Mandatory</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Salary should be between 2000 and 100000" ControlToValidate="txtSalary" MaximumValue="100000" MinimumValue="5000" Type="Integer"></asp:RangeValidator>

                    <asp:RegularExpressionValidator ID="revSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="Please Enter the salary amount" CssClass="error-message" ForeColor="Red" ValidationExpression="^\d+(\.\d{1,2})?$" Display="Dynamic">Invalid Salary Format</asp:RegularExpressionValidator>


                </td>
            </tr>
                
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Add Employee" CssClass="btn" OnClick="btnSubmit_Click" ForeColor="White" Height="36px" Width="228px"/>
                    <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        CssClass="error-summary" ForeColor="Red"
        HeaderText="Please check for the below errors:" DisplayMode="BulletList" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
                
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>
</asp:Content>

