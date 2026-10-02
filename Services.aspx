<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="HomeServiceBooking.Service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Services - HomeService</title>

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

        /* HEADER */

        .page-header {
            text-align: center;
            padding: 55px 20px 40px;
            background: linear-gradient(
                135deg,
                #CAF0F8,
                white
            );
        }

        .page-header i {
            font-size: 45px;
            color: #00B4D8;
            margin-bottom: 15px;
        }

        .page-header h1 {
            font-size: 40px;
            color: #03045E;
            margin-bottom: 10px;
        }

        .page-header h1 span {
            color: #023EBA;
        }

        .page-header p {
            color: #52658a;
            font-size: 17px;
        }

        /* SERVICES */

        .services-container {
            max-width: 1200px;
            margin: auto;
            padding: 20px 25px 60px;

            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .service-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            text-align: center;

            box-shadow: 0 8px 25px rgba(3, 4, 94, 0.12);

            transition: 0.3s;
        }

        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 30px rgba(3, 4, 94, 0.18);
        }

        .service-icon {
            width: 85px;
            height: 85px;
            border-radius: 50%;

            margin: 0 auto 20px;

            display: flex;
            justify-content: center;
            align-items: center;

            color: white;
            font-size: 34px;
        }

        .plumbing {
            background: #03045E;
        }

        .electrical {
            background: #023EBA;
        }

        .cleaning {
            background: #00B4D8;
        }

        .ac {
            background: #48CAE4;
        }

        .painting {
            background: #FBB02D;
            color: #03045E;
        }

        .service-card h2 {
            color: #03045E;
            margin-bottom: 12px;
        }

        .service-card p {
            color: #61708d;
            line-height: 1.6;
            min-height: 55px;
        }

        .price {
            display: block;
            color: #023EBA;
            font-size: 18px;
            font-weight: bold;
            margin: 15px 0;
        }

        .book-button {
            display: inline-block;

            background: #023EBA;
            color: white;

            text-decoration: none;

            padding: 12px 25px;

            border-radius: 7px;

            font-weight: bold;
        }

        .book-button:hover {
            background: #00B4D8;
        }

        /* FOOTER */

        .footer {
            background: #03045E;
            color: white;

            padding: 25px 6%;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-logo {
            font-size: 22px;
            font-weight: bold;
        }

        .footer-logo span {
            color: #00B4D8;
        }

        .footer p {
            color: #CAF0F8;
            font-size: 13px;
        }

        /* MOBILE */

        @media(max-width: 900px) {

            .services-container {
                grid-template-columns: repeat(2, 1fr);
            }

            .nav-links {
                display: none;
            }
        }

        @media(max-width: 600px) {

            .services-container {
                grid-template-columns: 1fr;
            }

            .footer {
                flex-direction: column;
                gap: 15px;
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


    <!-- PAGE HEADER -->

    <div class="page-header">

        <i class="fa-solid fa-screwdriver-wrench"></i>

        <h1>
            Our <span>Services</span>
        </h1>

        <p>
            Professional home services at your convenience
        </p>

    </div>


    <!-- SERVICES -->

    <div class="services-container">

        <!-- PLUMBING -->

        <div class="service-card">

            <div class="service-icon plumbing">

                <i class="fa-solid fa-faucet-drip"></i>

            </div>

            <h2>Plumbing</h2>

            <p>
                Fix leaking pipes, taps, drainage
                problems and other plumbing issues.
            </p>

            <span class="price">
                From ₹500
            </span>

            <a href="BookService.aspx"
               class="book-button">

                Book Now
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <!-- ELECTRICAL -->

        <div class="service-card">

            <div class="service-icon electrical">

                <i class="fa-solid fa-bolt"></i>

            </div>

            <h2>Electrical</h2>

            <p>
                Wiring, switches, lights, fans
                and other electrical services.
            </p>

            <span class="price">
                From ₹400
            </span>

            <a href="BookService.aspx"
               class="book-button">

                Book Now
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <!-- CLEANING -->

        <div class="service-card">

            <div class="service-icon cleaning">

                <i class="fa-solid fa-broom"></i>

            </div>

            <h2>Home Cleaning</h2>

            <p>
                Professional cleaning to keep
                your home fresh and clean.
            </p>

            <span class="price">
                From ₹600
            </span>

            <a href="BookService.aspx"
               class="book-button">

                Book Now
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <!-- AC REPAIR -->

        <div class="service-card">

            <div class="service-icon ac">

                <i class="fa-solid fa-snowflake"></i>

            </div>

            <h2>AC Repair</h2>

            <p>
                AC installation, maintenance
                and repair services.
            </p>

            <span class="price">
                From ₹800
            </span>

            <a href="BookService.aspx"
               class="book-button">

                Book Now
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <!-- PAINTING -->

        <div class="service-card">

            <div class="service-icon painting">

                <i class="fa-solid fa-paint-roller"></i>

            </div>

            <h2>Painting</h2>

            <p>
                Give your home a fresh look with
                professional painting services.
            </p>

            <span class="price">
                From ₹1000
            </span>

            <a href="BookService.aspx"
               class="book-button">

                Book Now
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

    </div>


    <!-- FOOTER -->

    <footer class="footer">

        <div class="footer-logo">

            <i class="fa-solid fa-house-chimney"></i>

            Home<span>Service</span>

        </div>

        <p>
            © 2026 HomeService. All rights reserved.
        </p>

    </footer>

</form>

</body>
</html>