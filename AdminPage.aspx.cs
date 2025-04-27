using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace clone
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUsers(); // Load users on the first page load
            }
        }

        // Method to load users from the database
        private void LoadUsers()
        {
            string connectionString = "Data Source=KernelOS-PC;Initial Catalog=account;Integrated Security=True;"; // Replace with your actual connection string
            string query = "SELECT Username, Password FROM Users"; // Replace with your actual query

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open(); // Open the connection

                    // Create a command to fetch data
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader reader = cmd.ExecuteReader(); // Execute the query and get the data

                    // Check if data exists and bind it to the Repeater
                    if (reader.HasRows)
                    {
                        UserRepeater.DataSource = reader; // Set the data source for the Repeater
                        UserRepeater.DataBind(); // Bind the data to the Repeater
                    }
                    else
                    {
                        // Handle case where no users are found (optional)
                        Response.Write("<script>alert('No users found.');</script>");
                    }

                    reader.Close(); // Close the reader
                }
                catch (Exception ex)
                {
                    // Handle exception (e.g., log it, show a message to the user, etc.)
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}
