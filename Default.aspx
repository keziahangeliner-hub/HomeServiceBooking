<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="HomeServiceBooking._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HomeService - Home Service Booking</title>

    <!-- Font Awesome Icons -->
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
            color: #03045E;
            background: white;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            height: 85px;
            background: #03045E;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 5%;
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

        .nav-links i {
            margin-right: 5px;
        }

        .contact-btn {
            background: #FBB02D;
            color: #03045E !important;

            padding: 12px 22px;

            border-radius: 25px;

            font-weight: bold;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 430px;

            background: linear-gradient(
                135deg,
                #CAF0F8,
                #ffffff
            );

            display: flex;
            align-items: center;

            padding: 50px 7%;

            position: relative;
            overflow: hidden;
        }

        .hero-content {
            width: 50%;
        }

        .small-title {
            color: #00B4D8;
            font-size: 17px;
            font-weight: bold;

            margin-bottom: 10px;
        }

        .hero h1 {
            font-size: 52px;
            line-height: 1.1;

            color: #03045E;

            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #023EBA;
        }

        .hero p {
            color: #405080;
            font-size: 17px;

            line-height: 1.7;

            max-width: 550px;

            margin-bottom: 25px;
        }

        .book-btn {
            display: inline-block;

            background: #FBB02D;
            color: #03045E;

            padding: 15px 25px;

            border-radius: 30px;

            text-decoration: none;

            font-weight: bold;
            font-size: 16px;
        }

        .book-btn:hover {
            background: #00B4D8;
            color: white;
        }

        /* HERO ICONS */

        .hero-image {
            width: 50%;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .home-circle {
            width: 300px;
            height: 300px;

            background: white;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            position: relative;

            box-shadow: 0 15px 40px rgba(3,4,94,0.15);
        }

        .home-circle i {
            font-size: 120px;
            color: #023EBA;
        }

        .floating-icon {
            position: absolute;

            width: 65px;
            height: 65px;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            color: white;

            font-size: 25px;
        }

        .icon-plumbing {
            background: #023EBA;
            top: 5px;
            left: 35px;
        }

        .icon-electric {
            background: #023EBA;
            top: -25px;
            right: 75px;
        }

        .icon-cleaning {
            background: #00B4D8;
            right: 0;
            top: 95px;
        }

        .icon-ac {
            background: #48CAE4;
            bottom: 25px;
            left: 15px;
        }

        .icon-paint {
            background: #FBB02D;
            bottom: 20px;
            right: 35px;
        }

        /* ================= SERVICES ================= */

        .services {
            padding: 45px 4% 30px;

            background: white;
        }

        .section-title {
            text-align: center;

            margin-bottom: 35px;
        }

        .section-title h2 {
            font-size: 34px;
            color: #03045E;

            margin-bottom: 8px;
        }

        .section-title p {
            color: #607090;
            font-size: 16px;
        }

        .service-container {
            display: grid;

            grid-template-columns:
                repeat(5, 1fr);

            gap: 20px;

            max-width: 1400px;

            margin: auto;
        }

        .service-card {
            background: #CAF0F8;

            border-radius: 12px;

            padding: 25px 20px;

            text-align: center;

            transition: 0.3s;

            border: 1px solid transparent;
        }

        .service-card:hover {
            transform: translateY(-8px);

            border-color: #00B4D8;

            box-shadow:
                0 12px 25px rgba(3,4,94,0.12);
        }

        .service-icon {
            width: 70px;
            height: 70px;

            margin: 0 auto 15px;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            color: white;

            font-size: 28px;
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
        }

        .service-card h3 {
            font-size: 20px;

            margin-bottom: 10px;

            color: #03045E;
        }

        .service-card p {
            color: #536486;

            font-size: 14px;

            line-height: 1.5;

            min-height: 45px;
        }

        .price {
            display: block;

            color: #023EBA;

            font-weight: bold;

            margin: 12px 0;
        }

        .service-btn {
            display: inline-block;

            background: #023EBA;

            color: white;

            padding: 10px 20px;

            border-radius: 7px;

            text-decoration: none;

            font-size: 14px;

            font-weight: bold;
        }

        .service-btn:hover {
            background: #03045E;
        }

        /* ================= FEATURES ================= */

        .features {
            background: linear-gradient(
                90deg,
                #023EBA,
                #00B4D8
            );

            padding: 28px 5%;

            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            color: white;

            margin-top: 25px;
        }

        .feature {
            display: flex;

            align-items: center;

            justify-content: center;

            gap: 15px;

            border-right: 1px solid
                rgba(255,255,255,0.4);
        }

        .feature:last-child {
            border-right: none;
        }

        .feature-icon {
            width: 55px;
            height: 55px;

            background: #CAF0F8;

            color: #023EBA;

            border-radius: 50%;

            display: flex;

            justify-content: center;
            align-items: center;

            font-size: 22px;
        }

        .feature h4 {
            font-size: 15px;

            margin-bottom: 5px;
        }

        .feature p {
            font-size: 12px;

            color: #CAF0F8;
        }

        /* ================= FOOTER ================= */

        .footer {
            background: #03045E;

            color: white;

            padding: 22px 6%;

            display: flex;

            align-items: center;

            justify-content: space-between;
        }

        .footer-logo {
            font-size: 22px;

            font-weight: bold;
        }

        .footer-logo span {
            color: #00B4D8;
        }

        .footer p {
            font-size: 13px;
            color: #CAF0F8;
        }

        .social-icons {
            display: flex;
            gap: 18px;
        }

        .social-icons a {
            color: white;

            font-size: 18px;
        }

        .social-icons a:hover {
            color: #FBB02D;
        }

        /* ================= MOBILE ================= */

        @media(max-width: 1000px) {

            .service-container {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .hero h1 {
                font-size: 42px;
            }
        }

        @media(max-width: 700px) {

            .nav-links {
                display: none;
            }

            .hero {
                flex-direction: column;

                text-align: center;
            }

            .hero-content {
                width: 100%;
            }

            .hero-image {
                width: 100%;

                margin-top: 40px;
            }

            .service-container {
                grid-template-columns:
                    1fr;
            }

            .features {
                grid-template-columns:
                    1fr 1fr;

                gap: 20px;
            }

            .feature {
                border: none;
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

    <!-- ================= NAVBAR ================= -->

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


    <!-- ================= HERO ================= -->

    <section class="hero">

        <div class="hero-content">

            <div class="small-title">
                YOUR TRUSTED HOME SERVICE
            </div>

            <h1>
                Home Service
                <span>Booking Platform</span>
            </h1>

            <p>
                Get reliable and professional home services
                at your convenience. Book trusted experts
                for all your home needs.
            </p>

            <a href="BookService.aspx"
               class="book-btn">

                <i class="fa-solid fa-calendar-check"></i>

                Book a Service

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <div class="hero-image">

            <div class="home-circle">

                <i class="fa-solid fa-house"></i>

                <div class="floating-icon icon-plumbing">
                    <i class="fa-solid fa-faucet-drip"></i>
                </div>

                <div class="floating-icon icon-electric">
                    <i class="fa-solid fa-bolt"></i>
                </div>

                <div class="floating-icon icon-cleaning">
                    <i class="fa-solid fa-broom"></i>
                </div>

                <div class="floating-icon icon-ac">
                    <i class="fa-solid fa-snowflake"></i>
                </div>

                <div class="floating-icon icon-paint">
                    <i class="fa-solid fa-paint-roller"></i>
                </div>

            </div>

        </div>

    </section>


    <!-- ================= SERVICES ================= -->

    <section class="services">

        <div class="section-title">

            <h2>Our Services</h2>

            <p>
                Choose from a wide range of home services
            </p>

        </div>


        <div class="service-container">


            <!-- PLUMBING -->

            <div class="service-card">

                <div class="service-icon plumbing">

                    <i class="fa-solid fa-faucet-drip"></i>

                </div>

                <h3>Plumbing</h3>

                <p>
                    Fix leaks, pipe issues and more.
                </p>

                <span class="price">
                    From ₹500
                </span>

                <a href="BookService.aspx"
                   class="service-btn">

                    Book Now
                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>


            <!-- ELECTRICAL -->

            <div class="service-card">

                <div class="service-icon electrical">

                    <i class="fa-solid fa-bolt"></i>

                </div>

                <h3>Electrical</h3>

                <p>
                    Wiring, switches, lighting and more.
                </p>

                <span class="price">
                    From ₹400
                </span>

                <a href="BookService.aspx"
                   class="service-btn">

                    Book Now
                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>


            <!-- CLEANING -->

            <div class="service-card">

                <div class="service-icon cleaning">

                    <i class="fa-solid fa-broom"></i>

                </div>

                <h3>Home Cleaning</h3>

                <p>
                    Keep your home fresh and clean.
                </p>

                <span class="price">
                    From ₹600
                </span>

                <a href="BookService.aspx"
                   class="service-btn">

                    Book Now
                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>


            <!-- AC -->

            <div class="service-card">

                <div class="service-icon ac">

                    <i class="fa-solid fa-snowflake"></i>

                </div>

                <h3>AC Repair</h3>

                <p>
                    Cooler homes, better comfort.
                </p>

                <span class="price">
                    From ₹800
                </span>

                <a href="BookService.aspx"
                   class="service-btn">

                    Book Now
                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>


            <!-- PAINTING -->

            <div class="service-card">

                <div class="service-icon painting">

                    <i class="fa-solid fa-paint-roller"></i>

                </div>

                <h3>Painting</h3>

                <p>
                    Give your home a fresh look.
                </p>

                <span class="price">
                    From ₹1000
                </span>

                <a href="BookService.aspx"
                   class="service-btn">

                    Book Now
                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>

        </div>

    </section>


    <!-- ================= FEATURES ================= -->

    <section class="features">


        <div class="feature">

            <div class="feature-icon">

                <i class="fa-solid fa-shield-halved"></i>

            </div>

            <div>

                <h4>Trusted Professionals</h4>

                <p>
                    Verified experts
                </p>

            </div>

        </div>


        <div class="feature">

            <div class="feature-icon">

                <i class="fa-solid fa-clock"></i>

            </div>

            <div>

                <h4>On-Time Service</h4>

                <p>
                    We value your time
                </p>

            </div>

        </div>


        <div class="feature">

            <div class="feature-icon">

                <i class="fa-solid fa-star"></i>

            </div>

            <div>

                <h4>Quality Service</h4>

                <p>
                    Professional work
                </p>

            </div>

        </div>


        <div class="feature">

            <div class="feature-icon">

                <i class="fa-solid fa-headset"></i>

            </div>

            <div>

                <h4>24/7 Support</h4>

                <p>
                    We are here to help
                </p>

            </div>

        </div>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer class="footer">

        <div class="footer-logo">

            <i class="fa-solid fa-house-chimney"></i>

            Home<span>Service</span>

        </div>

        <p>
            © 2026 HomeService. All rights reserved.
        </p>

        <div class="social-icons">

            <a href="#">
                <i class="fa-brands fa-facebook"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-instagram"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-linkedin"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-youtube"></i>
            </a>

        </div>

    </footer>

</form>

</body>
</html>