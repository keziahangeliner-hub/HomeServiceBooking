<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HomeServiceBooking.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register-Home Service</title>
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

        .logo span {
            color: #00B4D8;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .nav-links a:hover {
            color: #00B4D8;
        }

        .contact-btn {
            background: #FBB02D;
            color: #03045E !important;
            padding: 12px 22px;
            border-radius: 25px;
            font-weight: bold;
        }

        /* REGISTER AREA */

        .register-section {
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

        .register-container {
            width: 900px;
            min-height: 520px;
            background: white;
            border-radius: 20px;
            overflow: hidden;
            display: flex;
            box-shadow: 0 15px 40px rgba(3, 4, 94, 0.20);
        }

        /* LEFT SIDE */

        .register-left {
            width: 45%;
            background: linear-gradient(
                135deg,
                #03045E,
                #023EBA
            );
            color: white;
            padding: 55px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .register-left h1 {
            font-size: 38px;
            margin-bottom: 20px;
        }

        .register-left h1 span {
            color: #00B4D8;
        }

        .register-left p {
            font-size: 17px;
            line-height: 1.7;
            color: #CAF0F8;
            margin-bottom: 25px;
        }

        .service-box {
            background: rgba(255,255,255,0.12);
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 12px;
        }

        .service-box span {
            color: #FBB02D;
            font-weight: bold;
        }

        /* RIGHT SIDE */

        .register-right {
            width: 55%;
            padding: 50px 55px;
        }

        .register-right h2 {
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

        .input-box {
            width: 100%;
            padding: 14px;
            border: 2px solid #CAF0F8;
            border-radius: 8px;
            font-size: 15px;
            margin-bottom: 18px;
            outline: none;
        }

        .input-box:focus {
            border-color: #00B4D8;
        }

        .register-button {
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

        .register-button:hover {
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

        .login-text {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }

        .login-text a {
            color: #023EBA;
            font-weight: bold;
            text-decoration: none;
        }

        .login-text a:hover {
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

            .register-container {
                width: 100%;
                flex-direction: column;
            }

            .register-left,
            .register-right {
                width: 100%;
            }

            .register-left {
                padding: 35px;
            }

            .register-right {
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
            Home<span>Service</span>
        </div>

        <div class="nav-links">

            <a href="Default.aspx">Home</a>

            <a href="Services.aspx">Services</a>

            <a href="MyBookings.aspx">My Bookings</a>

            <a href="Login.aspx">Login</a>

            <a href="Register.aspx">Register</a>

            <a href="#" class="contact-btn">
                Contact Us
            </a>

        </div>

    </div>


    <!-- REGISTER SECTION -->

    <div class="register-section">

        <div class="register-container">

            <!-- LEFT -->

            <div class="register-left">

                <h1>
                    Join <span>HomeService</span>
                </h1>

                <p>
                    Create your account and book trusted
                    professionals for all your home service needs.
                </p>

                <div class="service-box">
                    🔧 <span>Plumbing</span>
                    <br />
                    Reliable plumbing services
                </div>

                <div class="service-box">
                    ⚡ <span>Electrical</span>
                    <br />
                    Professional electrical services
                </div>

                <div class="service-box">
                    🧹 <span>Cleaning</span>
                    <br />
                    Quality home cleaning services
                </div>

                <div class="service-box">
                    ❄ <span>AC Repair</span>
                    <br />
                    Fast and reliable AC service
                </div>

            </div>


            <!-- RIGHT -->

            <div class="register-right">

                <h2>Create Account</h2>

                <p class="subtitle">
                    Register to book home services
                </p>


                <asp:Label
                    ID="lblName"
                    runat="server"
                    Text="Full Name"
                    CssClass="form-label">
                </asp:Label>

                <asp:TextBox
                    ID="txtName"
                    runat="server"
                    CssClass="input-box"
                    Placeholder="Enter your full name">
                </asp:TextBox>


                <asp:Label
                    ID="lblEmail"
                    runat="server"
                    Text="Email Address"
                    CssClass="form-label">
                </asp:Label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Email"
                    Placeholder="Enter your email">
                </asp:TextBox>


                <asp:Label
                    ID="lblPassword"
                    runat="server"
                    Text="Password"
                    CssClass="form-label">
                </asp:Label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Password"
                    Placeholder="Create a password">
                </asp:TextBox>


                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Create Account"
                    CssClass="register-button"
                    OnClick="btnRegister_Click" />


                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>


                <div class="login-text">

                    Already have an account?

                    <a href="Login.aspx">
                        Login here
                    </a>

                </div>

            </div>

        </div>

    </div>

</form>

</body>
</html> 