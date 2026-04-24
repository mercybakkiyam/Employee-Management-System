<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeLogin.aspx.cs" Inherits="EmployeeLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Employee Management System</title>
    <link rel="stylesheet" href="LoginStyle.css" />

</head>
<body class="login-body">
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Employee Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <div>
                <label>Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" AutoCompleteType="Disabled" autocomplete="off" CssClass="input-field"></asp:TextBox>
            </div>
            <div>
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" AutoCompleteType="Disabled" autocomplete="new-password" CssClass="input-field" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" Width="196px" />
            </div>
        </div>
    </form>
</body>
</html>

