<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="HomeServiceBooking.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard - Home Service Booking</title>

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
            background: #F0FDFA;
            min-height: 100vh;
            color: #0F172A;
        }

        /* Navbar */

        .navbar {
            height: 75px;
            background: #0F172A;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 50px;
            color: white;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
        }

        .logo i {
            color: #52EADA;
            margin-right: 10px;
        }

        .admin-title {
            color: #BFF0EA;
            font-size: 15px;
        }

        /* Main */

        .container {
            width: 92%;
            max-width: 1200px;
            margin: 40px auto;
        }

        .page-heading {
            margin-bottom: 30px;
        }

        .page-heading h1 {
            font-size: 32px;
            color: #0F172A;
        }

        .page-heading h1 span {
            color: #1488A6;
        }

        .page-heading p {
            color: #64748B;
            margin-top: 8px;
        }

        /* Statistics */

        .stats {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            flex: 1;
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(15, 23, 42, 0.08);
            border-left: 5px solid #1488A6;
        }

        .stat-card i {
            font-size: 28px;
            color: #1488A6;
            margin-bottom: 12px;
        }

        .stat-card h2 {
            color: #0F172A;
            font-size: 28px;
        }

        .stat-card p {
            color: #64748B;
            margin-top: 5px;
        }

        /* Booking table */

        .table-card {
            background: white;
            border-radius: 18px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(15, 23, 42, 0.08);
            overflow-x: auto;
        }

        .table-title {
            font-size: 22px;
            font-weight: bold;
            color: #0F172A;
            margin-bottom: 20px;
        }

        .table-title i {
            color: #1488A6;
            margin-right: 8px;
        }

        .booking-table {
            width: 100%;
            border-collapse: collapse;
        }

        .booking-table th {
            background: #1488A6;
            color: white;
            padding: 14px;
            text-align: left;
        }

        .booking-table td {
            padding: 14px;
            border-bottom: 1px solid #BFF0EA;
            color: #334155;
        }

        .booking-table tr:hover {
            background: #F0FDFA;
        }

        /* Logout */

        .logout-button {
            margin-top: 25px;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            background: #0F172A;
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        .logout-button:hover {
            background: #1488A6;
        }

        /* Responsive */

        @media (max-width: 700px) {

            .navbar {
                padding: 0 20px;
            }

            .container {
                width: 95%;
            }

            .stats {
                flex-direction: column;
            }

            .page-heading h1 {
                font-size: 26px;
            }
            .action-button {
    border: none;
    padding: 8px 12px;
    border-radius: 6px;
    color: white;
    cursor: pointer;
    margin: 2px;
    font-size: 13px;
}

.confirm-button {
    background: #1488A6;
}

.confirm-button:hover {
    background: #0F172A;
}

.complete-button {
    background: #0E9DB5;
}

.complete-button:hover {
    background: #1488A6;
}
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- Navbar -->

    <div class="navbar">

        <div class="logo">
            <i class="fa-solid fa-house"></i>
            Home Service Booking
        </div>

        <div class="admin-title">
            <i class="fa-solid fa-user-shield"></i>
            Admin Dashboard
        </div>

    </div>


    <!-- Main Container -->

    <div class="container">

        <div class="page-heading">

            <h1>
                Admin <span>Dashboard</span>
            </h1>

            <p>
                Manage and monitor customer service bookings.
            </p>

        </div>


        <!-- Statistics -->

        <div class="stats">

            <div class="stat-card">

                <i class="fa-solid fa-calendar-check"></i>

                <h2>
                    <asp:Label ID="lblTotalBookings"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Total Bookings</p>

            </div>


            <div class="stat-card">

                <i class="fa-solid fa-clock"></i>

                <h2>
                    <asp:Label ID="lblPending"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Pending Bookings</p>

            </div>


            <div class="stat-card">

                <i class="fa-solid fa-circle-check"></i>

                <h2>
                    <asp:Label ID="lblCompleted"
                        runat="server"
                        Text="0">
                    </asp:Label>
                </h2>

                <p>Completed Bookings</p>

            </div>

        </div>


        <!-- Bookings -->

        <div class="table-card">

            <div class="table-title">

                <i class="fa-solid fa-list"></i>
                All Customer Bookings

            </div>

            <asp:GridView
    ID="gvBookings"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="booking-table"
    EmptyDataText="No bookings found."
    OnRowCommand="gvBookings_RowCommand">

    <Columns>

        <asp:BoundField
            DataField="BookingID"
            HeaderText="Booking ID" />

        <asp:BoundField
            DataField="UserID"
            HeaderText="User ID" />

        <asp:BoundField
            DataField="ServiceName"
            HeaderText="Service" />

        <asp:BoundField
            DataField="BookingDate"
            HeaderText="Booking Date" />

        <asp:BoundField
            DataField="Address"
            HeaderText="Address" />

        <asp:BoundField
            DataField="Status"
            HeaderText="Status" />

        <asp:TemplateField HeaderText="Action">

            <ItemTemplate>

                <asp:Button
                    ID="btnConfirm"
                    runat="server"
                    Text="Confirm"
                    CommandName="ConfirmBooking"
                    CommandArgument='<%# Eval("BookingID") %>'
                    CssClass="action-button confirm-button" />

                <asp:Button
                    ID="btnComplete"
                    runat="server"
                    Text="Complete"
                    CommandName="CompleteBooking"
                    CommandArgument='<%# Eval("BookingID") %>'
                    CssClass="action-button complete-button" />

            </ItemTemplate>

        </asp:TemplateField>

    </Columns>

</asp:GridView>

            
                    

            <!-- Logout -->

            <asp:Button
                ID="btnLogout"
                runat="server"
                Text="Logout"
                CssClass="logout-button"
                OnClick="btnLogout_Click" />

        </div>

    </div>

</form>

</body>
</html>