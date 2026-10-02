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
    public partial class MyBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadBookings();
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
                    S.ServiceName,
                    B.BookingDate,
                    B.Address,
                    B.Status
                FROM Bookings B
                INNER JOIN Services S
                    ON B.ServiceID = S.ServiceID
                WHERE B.UserID = @UserID
                ORDER BY B.BookingID DESC";

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                cmd.Parameters.AddWithValue(
                    "@UserID",
                    Session["UserID"]);

                SqlDataAdapter adapter =
                    new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                adapter.Fill(dt);

                gvBookings.DataSource = dt;

                gvBookings.DataBind();
            }
        }
    }
}
 