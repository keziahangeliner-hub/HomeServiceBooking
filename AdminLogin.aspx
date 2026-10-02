<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HomeServiceBooking.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin Login - Home Service Booking</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #F0FDFA;
            overflow: hidden;
            position: relative;
        }

        /* Background circles */

        body::before {
            content: "";
            position: fixed;
            width: 280px;
            height: 280px;
            background: #1488A6;
            border-radius: 50%;
            top: -120px;
            left: -80px;
            z-index: -1;
        }

        body::after {
            content: "";
            position: fixed;
            width: 300px;
            height: 300px;
            background: #52EADA;
            border-radius: 50%;
            bottom: -150px;
            right: -80px;
            z-index: -1;
        }

        /* Main card */

        .login-card {
            width: 500px;
            background: white;
            border-radius: 25px;
            box-shadow: 0 15px 40px rgba(15, 23, 42, 0.15);
            padding: 45px 55px 0;
            text-align: center;
            overflow: hidden;
        }

        /* Admin icon */

        .admin-icon {
            width: 90px;
            height: 90px;
            margin: 0 auto 20px;
            border-radius: 22px;
            background: linear-gradient(135deg, #52EADA, #1488A6);
            display: flex;
            justify-content: center;
            align-items: center;
            color: #0F172A;
            font-size: 42px;
        }

        /* Heading */

        h1 {
            font-size: 42px;
            color: #0F172A;
            margin-bottom: 8px;
        }

        h1 span {
            color: #1488A6;
        }

        .subtitle {
            color: #64748B;
            font-size: 18px;
            margin-bottom: 25px;
        }

        .heading-line {
            width: 80px;
            height: 5px;
            background: #1488A6;
            border-radius: 10px;
            margin: 0 auto 30px;
        }

        /* Input fields */

        .input-group {
            position: relative;
            margin-bottom: 18px;
        }

        .input-icon {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #1488A6;
            font-size: 20px;
            z-index: 2;
        }

        .input-box {
            width: 100%;
            height: 58px;
            padding: 0 20px 0 55px;
            border: 2px solid #BFF0EA;
            border-radius: 15px;
            background: #F0FDFA;
            font-size: 16px;
            color: #0F172A;
            outline: none;
        }

        .input-box:focus {
            border-color: #1488A6;
            background: white;
        }

        .input-box::placeholder {
            color: #64748B;
        }

        /* Login button */

        .login-button {
            width: 100%;
            height: 58px;
            margin-top: 8px;
            border: none;
            border-radius: 15px;
            background: linear-gradient(135deg, #1488A6, #0E9DB5);
            color: white;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-button:hover {
            background: #0F172A;
            transform: translateY(-2px);
        }

        /* Message */

        .message {
            display: block;
            margin: 20px 0;
            color: #1488A6;
            font-size: 15px;
        }

        /* Footer */

        .footer {
            margin: 25px -55px 0;
            padding: 25px;
            background: linear-gradient(135deg, #1488A6, #52EADA);
            color: white;
            text-align: left;
            position: relative;
        }

        .footer-content {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .footer-icon {
            font-size: 35px;
        }

        .footer-title {
            font-size: 18px;
            font-weight: bold;
        }

        .footer-text {
            font-size: 14px;
            margin-top: 5px;
        }

        /* Responsive */

        @media (max-width: 600px) {

            .login-card {
                width: 90%;
                padding: 35px 25px 0;
            }

            h1 {
                font-size: 32px;
            }

            .footer {
                margin-left: -25px;
                margin-right: -25px;
            }
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="login-card">

            <!-- Admin Icon -->

            <div class="admin-icon">
                <i class="fa-solid fa-user-shield"></i>
            </div>

            <!-- Heading -->

            <h1>Admin <span>Login</span></h1>

            <p class="subtitle">
                Access your dashboard
            </p>

            <div class="heading-line"></div>

            <!-- Username -->

            <div class="input-group">

                <i class="fa-solid fa-user input-icon"></i>

                <asp:TextBox
                    ID="txtUsername"
                    runat="server"
                    CssClass="input-box"
                    placeholder="Username">
                </asp:TextBox>

            </div>

            <!-- Password -->

            <div class="input-group">

                <i class="fa-solid fa-lock input-icon"></i>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Password"
                    placeholder="Password">
                </asp:TextBox>

            </div>

            <!-- Login Button -->

            <asp:Button
                ID="btnLogin"
                runat="server"
                Text="Login  →"
                CssClass="login-button"
                OnClick="btnLogin_Click" />

            <!-- Error / Success Message -->

            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

            <!-- Footer -->

            <div class="footer">

                <div class="footer-content">

                    <div class="footer-icon">
                        <i class="fa-solid fa-house"></i>
                    </div>

                    <div>
                        <div class="footer-title">
                            Home Service Booking
                        </div>

                        <div class="footer-text">
                            Admin Panel
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </form>

</body>
</html>