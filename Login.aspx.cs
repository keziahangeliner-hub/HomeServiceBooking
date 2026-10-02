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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["HomeServiceDB"].ConnectionString;

            string query = "SELECT UserID, UserName FROM Users " +
                           "WHERE Email = @Email AND Password = @Password";

            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                cmd.Parameters.AddWithValue(
                    "@Email", txtEmail.Text);

                cmd.Parameters.AddWithValue(
                    "@Password", txtPassword.Text);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Session["UserID"] = reader["UserID"].ToString();
                    Session["Username"] = reader["Username"].ToString();

                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMessage.Text =
                        "Invalid email or password.";
                }
            }
        }
    }
}