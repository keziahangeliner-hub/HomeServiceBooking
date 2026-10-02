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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["HomeServiceDB"].ConnectionString;

            string query = "INSERT INTO Users (Username, Email, Password) " +
               "VALUES (@Username, @Email, @Password)";
            using (SqlConnection con =
                   new SqlConnection(connectionString))
            {
                SqlCommand cmd =
                    new SqlCommand(query, con);

                cmd.Parameters.AddWithValue(
                    "@UserName", txtName.Text);

                cmd.Parameters.AddWithValue(
                    "@Email", txtEmail.Text);

                cmd.Parameters.AddWithValue(
                    "@Password", txtPassword.Text);

                con.Open();

                cmd.ExecuteNonQuery();
            }

            lblMessage.Text = "Account created successfully!";
        }
    }
}