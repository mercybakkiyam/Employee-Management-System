<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainLogin.aspx.cs" Inherits="MainLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Employee Management System</title>
    <link rel="stylesheet" href="LoginStyle.css" />

</head>
<body class="login-body">
    <form id="form1" runat="server">
        <div class="login-container">
            <br />
            LOGIN AS A
            <br />
            <br />
            <div>
                <asp:Button ID="btnLogin0" runat="server" Text="Admin" CssClass="btn" Width="196px" OnClick="btnLogin0_Click" />
                <br />
                or<br />
            </div>
            <div>
                <asp:Button ID="btnLogin1" runat="server" Text="Employee" CssClass="btn" Width="196px" OnClick="btnLogin1_Click" />
            </div>
            <div>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
