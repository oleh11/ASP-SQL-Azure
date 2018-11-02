using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            String userName = Request.Form["Email_ID"];
            String password = Request.Form["Password"];
            try
            {
                SqlCommand cmd = new SqlCommand("select count (*) as cnt from Account where Email_ID=@usr and Password=@pwd", sqlConnection);
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@usr", userName);
                cmd.Parameters.AddWithValue("@pwd", password);
                sqlConnection.Open();
                if (cmd.ExecuteScalar().ToString() == "1")
                {
                    Session["Email"] = userName;
                    Response.Redirect("Events.aspx");
                    sqlConnection.Close();
                }
                else
                {
                    errorLabel.Text = "User Not Found! Please Register.";
                    errorLabel.Visible = true;
                    sqlConnection.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("User Does not Exist! Please Register");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign Up.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgot Password.aspx");
        }
    }
}