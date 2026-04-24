<%@ Page Language="C#" AutoEventWireup="true" CodeFile="improvedlogin.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            background: url('bg.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 350px;
            margin: 100px auto;
            padding: 20px;
            background: rgba(0, 0, 0, 0.6);
            color: white;
            border-radius: 10px;
            text-align: center;
        }
        .toggle {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .toggle button {
            padding: 10px;
            width: 50%;
            border: none;
            cursor: pointer;
        }
        .btn-active {
            background-color: orange;
            color: white;
        }
        .hidden {
            display: none;
        }
        input, button {
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            border: none;
            border-radius: 5px;
        }
        button {
            background-color: orange;
            color: white;
            cursor: pointer;
        }
        a {
            color: lightblue;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="toggle">
            <button id="btnEmployee" class="btn-active" onclick="toggleLogin('employee')">Employee</button>
            <button id="btnAdmin" onclick="toggleLogin('admin')">Admin</button>
        </div>
        
        <div id="loginForm">
            <input type="text" id="txtUsername" placeholder="Username" />
            <input type="password" id="txtPassword" placeholder="Password" />
            <button onclick="login()">Login</button>
            <a onclick="showChangePassword()">Change Password?</a>
        </div>
        
        <div id="changePasswordForm" class="hidden">
            <input type="password" id="txtOldPassword" placeholder="Old Password" />
            <input type="password" id="txtNewPassword" placeholder="New Password" />
            <button onclick="changePassword()">Change Password</button>
        </div>
    </div>
    
    <script>
        function toggleLogin(role) {
            document.getElementById('btnEmployee').classList.remove('btn-active');
            document.getElementById('btnAdmin').classList.remove('btn-active');
            document.getElementById(role === 'employee' ? 'btnEmployee' : 'btnAdmin').classList.add('btn-active');
        }
        function showChangePassword() {
            document.getElementById('loginForm').classList.add('hidden');
            document.getElementById('changePasswordForm').classList.remove('hidden');
        }
    </script>
</body>
</html>