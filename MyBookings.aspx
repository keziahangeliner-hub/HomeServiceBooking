<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="HomeServiceBooking.MyBookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Bookings - HomeService</title>

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

        /* PAGE HEADER */

        .page-header {
            text-align: center;
            padding: 45px 20px 30px;

            background: linear-gradient(
                135deg,
                #CAF0F8,
                white
            );
        }

        .page-header i {
            font-size: 42px;
            color: #00B4D8;
            margin-bottom: 12px;
        }

        .page-header h1 {
            font-size: 38px;
            color: #03045E;
            margin-bottom: 8px;
        }

        .page-header h1 span {
            color: #023EBA;
        }

        .page-header p {
            color: #607090;
        }

        /* BOOKINGS */

        .bookings-section {
            min-height: 500px;
            padding: 25px 5% 60px;
        }

        .booking-container {
            max-width: 1200px;
            margin: auto;

            background: white;

            border-radius: 15px;

            padding: 25px;

            box-shadow:
                0 10px 30px rgba(3, 4, 94, 0.12);
        }

        .booking-title {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 20px;
        }

        .booking-title h2 {
            color: #03045E;
        }

        .new-booking {
            background: #FBB02D;
            color: #03045E;

            text-decoration: none;

            padding: 11px 18px;

            border-radius: 7px;

            font-weight: bold;
        }

        .new-booking:hover {
            background: #00B4D8;
            color: white;
        }

        /* TABLE */

        .booking-table {
            width: 100%;
            border-collapse: collapse;
        }

        .booking-table th {
            background: #03045E;
            color: white;

            padding: 15px;

            text-align: left;
        }

        .booking-table td {
            padding: 14px;

            border-bottom: 1px solid #CAF0F8;

            color: #405080;
        }

        .booking-table tr:hover td {
            background: #F2FCFE;
        }

        .status {
            display: inline-block;

            padding: 7px 14px;

            border-radius: 20px;

            background: #CAF0F8;

            color: #023EBA;

            font-weight: bold;

            font-size: 13px;
        }

        .empty-message {
            display: block;

            text-align: center;

            padding: 40px;

            color: #607090;

            font-size: 16px;
        }

        .message {
            display: block;

            text-align: center;

            color: #023EBA;

            font-weight: bold;

            padding: 25px;
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

        @media(max-width: 800px) {

            .nav-links {
                display: none;
            }

            .booking-container {
                overflow-x: auto;
            }

            .booking-table {
                min-width: 700px;
            }

            .booking-title {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
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


    <!-- HEADER -->

    <div class="page-header">

        <i class="fa-solid fa-calendar-check"></i>

        <h1>
            My <span>Bookings</span>
        </h1>

        <p>
            View and manage your home service bookings
        </p>

    </div>


    <!-- BOOKINGS -->

    <section class="bookings-section">

        <div class="booking-container">

            <div class="booking-title">

                <h2>
                    <i class="fa-solid fa-list-check"></i>
                    Booking History
                </h2>

                <a href="BookService.aspx"
                   class="new-booking">

                    <i class="fa-solid fa-plus"></i>
                    New Booking

                </a>

            </div>


            <asp:GridView
                ID="gvBookings"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="booking-table"
                GridLines="None"
                EmptyDataText="You don't have any bookings yet."
                EmptyDataRowStyle-CssClass="empty-message">

                <Columns>

                    <asp:BoundField
                        DataField="BookingID"
                        HeaderText="Booking ID" />

                    <asp:BoundField
                        DataField="ServiceName"
                        HeaderText="Service" />

                    <asp:BoundField
                        DataField="BookingDate"
                        HeaderText="Date"
                        DataFormatString="{0:dd-MM-yyyy}" />

                    <asp:BoundField
                        DataField="Address"
                        HeaderText="Address" />

                    <asp:TemplateField
                        HeaderText="Status">

                        <ItemTemplate>

                            <span class="status">

                                <%# Eval("Status") %>

                            </span>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>


            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

        </div>

    </section>


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