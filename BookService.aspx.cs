using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeServiceBooking
{
    public partial class BookService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            // Check service
            if (ddlService.SelectedValue == "")
            {
                lblMessage.Text = "Please select a service.";
                return;
            }

            // Check date
            if (txtDate.Text == "")
            {
                lblMessage.Text = "Please select a booking date.";
                return;
            }

            // Check address
            if (txtAddress.Text.Trim() == "")
            {
                lblMessage.Text = "Please enter your address.";
                return;
            }

            string connectionString =
                ConfigurationManager
                .ConnectionStrings["HomeServiceDB"]
                .ConnectionString;

            string query = @"INSERT INTO Bookings
                             (UserID, ServiceID, BookingDate, Address, Status)
                             VALUES
                             (@UserID, @ServiceID, @BookingDate, @Address, @Status)";

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                cmd.Parameters.AddWithValue(
                    "@UserID",
                    Session["UserID"]);

                cmd.Parameters.AddWithValue(
                    "@ServiceID",
                    ddlService.SelectedValue);

                cmd.Parameters.AddWithValue(
                    "@BookingDate",
                    txtDate.Text);

                cmd.Parameters.AddWithValue(
                    "@Address",
                    txtAddress.Text);

                cmd.Parameters.AddWithValue(
                    "@Status",
                    "Pending");

                con.Open();

                cmd.ExecuteNonQuery();
            }

            lblMessage.Text =
                "Booking submitted successfully!";
        }
    }
}
        