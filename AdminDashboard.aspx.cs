using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeServiceBooking
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadBookings();
                LoadStatistics();
            }
        }
        private void LoadBookings()
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["HomeServiceDB"]
                .ConnectionString;

            string query = @"
                SELECT
                    B.BookingID,
                    B.UserID,
                    S.ServiceName,
                    B.BookingDate,
                    B.Address,
                    B.Status
                FROM Bookings B
                INNER JOIN Services S
                    ON B.ServiceID = S.ServiceID
                ORDER BY B.BookingID DESC";

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                SqlDataAdapter adapter =
                    new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                adapter.Fill(dt);

                gvBookings.DataSource = dt;
                gvBookings.DataBind();
            }
        }

        private void LoadStatistics()
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["HomeServiceDB"]
                .ConnectionString;

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                con.Open();

                // Total bookings
                SqlCommand totalCommand =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Bookings",
                        con);

                lblTotalBookings.Text =
                    totalCommand.ExecuteScalar().ToString();


                // Pending bookings
                SqlCommand pendingCommand =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Bookings WHERE Status = 'Pending'",
                        con);

                lblPending.Text =
                    pendingCommand.ExecuteScalar().ToString();


                // Completed bookings
                SqlCommand completedCommand =
                    new SqlCommand(
                        "SELECT COUNT(*) FROM Bookings WHERE Status = 'Completed'",
                        con);

                lblCompleted.Text =
                    completedCommand.ExecuteScalar().ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("Admin");

            Response.Redirect("AdminLogin.aspx");
        }
   
    protected void gvBookings_RowCommand(object sender,
    System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ConfirmBooking")
            {
                UpdateBookingStatus(e.CommandArgument.ToString(), "Confirmed");
            }
            else if (e.CommandName == "CompleteBooking")
            {
                UpdateBookingStatus(e.CommandArgument.ToString(), "Completed");
            }

            LoadBookings();
            LoadStatistics();
        }
        private void UpdateBookingStatus(string bookingID, string status)
        {
            string connectionString =
                ConfigurationManager
                .ConnectionStrings["HomeServiceDB"]
                .ConnectionString;

            string query =
                "UPDATE Bookings SET Status = @Status " +
                "WHERE BookingID = @BookingID";

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@BookingID", bookingID);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
