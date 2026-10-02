<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookService.aspx.cs" Inherits="HomeServiceBooking.BookService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Book a Service - HomeService</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #CAF0F8;
            color: #03045E;
        }

        /* NAVBAR */

        .navbar {
            height: 85px;
            background: #03045E;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 6%;
        }

        .logo {
            color: white;
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
            align-items: center;
            gap: 28px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 15px;
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

        /* PAGE */

        .booking-section {
            min-height: calc(100vh - 85px);

            display: flex;
            justify-content: center;
            align-items: center;

            padding: 50px 20px;

            background: linear-gradient(
                135deg,
                #CAF0F8,
                white
            );
        }

        .booking-container {
            width: 900px;

            background: white;

            border-radius: 20px;

            overflow: hidden;

            display: flex;

            box-shadow:
                0 15px 40px rgba(3, 4, 94, 0.18);
        }

        /* LEFT */

        .booking-left {
            width: 40%;

            background: linear-gradient(
                135deg,
                #03045E,
                #023EBA
            );

            color: white;

            padding: 45px 35px;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }

        .booking-left-icon {
            width: 75px;
            height: 75px;

            background: #00B4D8;

            border-radius: 50%;

            display: flex;

            justify-content: center;
            align-items: center;

            font-size: 32px;

            margin-bottom: 25px;
        }

        .booking-left h1 {
            font-size: 32px;

            margin-bottom: 15px;
        }

        .booking-left h1 span {
            color: #00B4D8;
        }

        .booking-left p {
            color: #CAF0F8;

            line-height: 1.7;

            margin-bottom: 25px;
        }

        .booking-feature {
            margin: 12px 0;

            color: #CAF0F8;
        }

        .booking-feature i {
            color: #FBB02D;

            margin-right: 10px;
        }

        /* RIGHT */

        .booking-right {
            width: 60%;

            padding: 45px 50px;
        }

        .booking-right h2 {
            color: #03045E;

            font-size: 30px;

            margin-bottom: 8px;
        }

        .subtitle {
            color: #666;

            margin-bottom: 25px;
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

            padding: 13px;

            border: 2px solid #CAF0F8;

            border-radius: 8px;

            font-size: 15px;

            margin-bottom: 18px;

            outline: none;
        }

        .input-box:focus {
            border-color: #00B4D8;
        }

        .service-dropdown {
            width: 100%;

            padding: 13px;

            border: 2px solid #CAF0F8;

            border-radius: 8px;

            font-size: 15px;

            margin-bottom: 18px;

            color: #03045E;
        }

        .book-button {
            width: 100%;

            padding: 14px;

            background: #FBB02D;

            color: #03045E;

            border: none;

            border-radius: 8px;

            font-size: 17px;

            font-weight: bold;

            cursor: pointer;
        }

        .book-button:hover {
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

        /* MOBILE */

        @media(max-width: 800px) {

            .nav-links {
                display: none;
            }

            .booking-container {
                width: 100%;

                flex-direction: column;
            }

            .booking-left,
            .booking-right {
                width: 100%;
            }

            .booking-left {
                padding: 35px;
            }

            .booking-right {
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


    <!-- BOOKING SECTION -->

    <div class="booking-section">

        <div class="booking-container">


            <!-- LEFT -->

            <div class="booking-left">

                <div class="booking-left-icon">

                    <i class="fa-solid fa-calendar-check"></i>

                </div>

                <h1>
                    Book a
                    <span>Service</span>
                </h1>

                <p>
                    Choose the service you need,
                    select a convenient date and
                    provide your address.
                </p>

                <div class="booking-feature">

                    <i class="fa-solid fa-circle-check"></i>

                    Trusted Professionals

                </div>

                <div class="booking-feature">

                    <i class="fa-solid fa-clock"></i>

                    On-Time Service

                </div>

                <div class="booking-feature">

                    <i class="fa-solid fa-shield-halved"></i>

                    Reliable Service

                </div>

            </div>


            <!-- RIGHT -->

            <div class="booking-right">

                <h2>
                    Service Booking
                </h2>

                <p class="subtitle">
                    Fill in the details below to book your service.
                </p>


                <!-- SERVICE -->

                <asp:Label
                    ID="lblService"
                    runat="server"
                    Text="Select Service"
                    CssClass="form-label">

                    <i class="fa-solid fa-screwdriver-wrench"></i>

                </asp:Label>

                <asp:DropDownList
                    ID="ddlService"
                    runat="server"
                    CssClass="service-dropdown">

                    <asp:ListItem
                        Text="-- Select a Service --"
                        Value="">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Plumbing - ₹500"
                        Value="1">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Electrical - ₹400"
                        Value="2">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Home Cleaning - ₹600"
                        Value="3">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="AC Repair - ₹800"
                        Value="4">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Painting - ₹1000"
                        Value="5">
                    </asp:ListItem>

                </asp:DropDownList>


                <!-- DATE -->

                <asp:Label
                    ID="lblDate"
                    runat="server"
                    Text="Booking Date"
                    CssClass="form-label">

                    <i class="fa-solid fa-calendar-days"></i>

                </asp:Label>

                <asp:TextBox
                    ID="txtDate"
                    runat="server"
                    CssClass="input-box"
                    TextMode="Date">
                </asp:TextBox>


                <!-- ADDRESS -->

                <asp:Label
                    ID="lblAddress"
                    runat="server"
                    Text="Service Address"
                    CssClass="form-label">

                    <i class="fa-solid fa-location-dot"></i>

                </asp:Label>

                <asp:TextBox
                    ID="txtAddress"
                    runat="server"
                    CssClass="input-box"
                    TextMode="MultiLine"
                    Rows="3"
                    Placeholder="Enter your complete address">
                </asp:TextBox>


                <!-- BUTTON -->

                <asp:Button
                    ID="btnBook"
                    runat="server"
                    Text="Confirm Booking"
                    CssClass="book-button"
                    OnClick="btnBook_Click" />


                <!-- MESSAGE -->

                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="message">
                </asp:Label>

            </div>

        </div>

    </div>

</form>

</body>
</html>
