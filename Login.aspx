<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HomeServiceBooking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - HomeService</title>

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #CAF0F8;
            min-height: 100vh;
        }

        /* NAVBAR */

        .navbar {
            height: 85px;
            background: #03045E;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 6%;
            color: white;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;
        }

        .logo i {
            color: #00B4D8;
            margin-right: 8px;
        }

        .logo span {
            color: #00B4D8;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        .nav-links a:hover {
            color: #00B4D8;
        }

        .nav-links i {
            margin-right: 6px;
        }

        .contact-btn {
            background: #FBB02D;
            color: #03045E !important;
            padding: 12px 22px;
            border-radius: 25px;
            font-weight: bold;
        }

        /* LOGIN SECTION */

        .login-section {
            min-height: calc(100vh - 85px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;

            background: linear-gradient(
                135deg,
                #CAF0F8,
                #ffffff
            );
        }

        .login-container {
            width: 850px;
            min-height: 500px;
            background: white;
            border-radius: 20px;
            overflow: hidden;

            display: flex;

            box-shadow:
                0 15px 40px rgba(3, 4, 94, 0.20);
        }

        /* LEFT SIDE */

        .login-left {
            width: 45%;

            background: linear-gradient(
                135deg,
                #03045E,
                #023EBA
            );

            color: white;

            padding: 50px 40px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-icon {
            width: 80px;
            height: 80px;

            background: #00B4D8;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 35px;

            margin-bottom: 25px;
        }

        .login-left h1 {
            font-size: 36px;
            margin-bottom: 18px;
        }

        .login-left h1 span {
            color: #00B4D8;
        }

        .login-left p {
            color: #CAF0F8;
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 25px;
        }

        .feature {
            margin: 12px 0;
            font-size: 15px;
        }

        .feature i {
            color: #FBB02D;
            margin-right: 10px;
        }

        /* RIGHT SIDE */

        .login-right {
            width: 55%;
            padding: 55px;
        }

        .login-right h2 {
            color: #03045E;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #666;
            margin-bottom: 30px;
        }

        .form-label {
            display: block;
            color: #03045E;
            font-weight: bold;
            margin-bottom: 7px;
        }

        .form-label i {
            color: #023EBA;
            margin-right: 7px;
        }

        .input-box {
            width: 100%;
            padding: 14px;

            border: 2px solid #CAF0F8;

            border-radius: 8px;

            font-size: 15px;

            margin-bottom: 20px;

            outline: none;
        }

        .input-box:focus {
            border-color: #00B4D8;
        }

        .login-button {
            width: 100%;

            padding: 14px;

            border: none;

            border-radius: 8px;

            background: #FBB02D;

            color: #03045E;

            font-size: 17px;

            font-weight: bold;

            cursor: pointer;
        }

        .login-button:hover {
            background: #00B4D8;
            color: white;
        }

        .message {
            display: block;

            text-align: center;

            margin-top: 18px;

            color: #023EBA;

            font-weight: bold;
        }

        .register-text {
            text-align: center;

            margin-top: 22px;

            color: #666;
        }

        .register-text a {
            color: #023EBA;

            font-weight: bold;

            text-decoration: none;
        }

        .register-text a:hover {
            color: #00B4D8;
        }

        /* MOBILE */

        @media (max-width: 800px) {

            .navbar {
                padding: 0 20px;
            }

            .nav-links {
                display: none;
            }

            .login-container {
                width: 100%;
                flex-direction: column;
            }

            .login-left,
            .login-right {
                width: 100%;
            }

            .login-left {
                padding: 35px;
            }

            .login-right {
                padding: 35px;
            }
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- NAVBAR -->

    <div class="navbar">

        <div class="logo">

            <i class="fa-solid fa-house-chimney"></i>

            Home<span>Service</span>

        </div>

        <div class="nav-links">

            <a href="Default.aspx">
                <i class="fa-solid fa-house"></i>
                Home
            </a>

            <a href="Services.aspx">
                <i class="fa-solid fa-list"></i>
                Services
            </a>

            <a href="MyBookings.aspx">
                <i class="fa-solid fa-calendar-check"></i>
                My Bookings
            </a>

            <a href="Login.aspx">
                <i class="fa-solid fa-right-to-bracket"></i>
                Login
            </a>

            <a href="Register.aspx">
                <i class="fa-solid fa-user-plus"></i>
                Register
            </a>

            <a href="#" class="contact-btn">
                <i class="fa-solid fa-phone"></i>
                Contact Us
            </a>

        </div>

    </div>


    <!-- LOGIN -->

    <div class="login-section">

        <div class="login-container">

            <!-- LEFT -->

            <div class="login-left">

                <div class="login-icon">

                    <i class="fa-solid fa-house-chimney"></i>

                </div>

                <h1>
                    Welcome to
                    <span>HomeService</span>
                </h1>

                <p>
                    Login to your account and book
                    trusted professionals for your
                    home service needs.
                </p>

                <div class="feature">

                    <i class="fa-solid fa-circle-check"></i>

                    Trusted Professionals

                </div>

                <div class="feature">

                    <i class="fa-solid fa-clock"></i>

                    On-Time Service

                </div>

                <div class="feature">

                    <i class="fa-solid fa-tag"></i>

                    Affordable Prices

                </div>

                <div class="feature">

                    <i class="fa-solid fa-headset"></i>

                    24/7 Support

                </div>

            </div>


            <!-- RIGHT -->

            <div class="login-right">

                <h2>
                    Login
                </h2>

                <p class="subtitle">
                    Login to book your home service
                </p>


                <!-- EMAIL -->

                <asp:Label
                    ID="lblEmail"
                    runat="server"
                    CssClass="form-label">

                    <i class="fa-solid fa-envelope"></i>

                    Email Address

                </asp:Label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Email"
                    Placeholder="Enter your email">
                </asp:TextBox>


                <!-- PASSWORD -->

                <asp:Label
                    ID="lblPassword"
                    runat="server"
                    CssClass="form-label">

                    <i class="fa-solid fa-lock"></i>

                    Password

                </asp:Label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Password"
                    Placeholder="Enter your password">
                </asp:TextBox>


                <!-- LOGIN BUTTON -->

                <asp:Button
                    ID="btnLogin"
                    runat="server"
                    Text="Login"
                    CssClass="login-button"
                    OnClick="btnLogin_Click" />


                <!-- MESSAGE -->

                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>


                <!-- REGISTER -->

                <div class="register-text">

                    Don't have an account?

                    <a href="Register.aspx">
                        Create Account
                    </a>

                </div>

            </div>

        </div>

    </div>

</form>

</body>
</html>