using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace WebApplication3
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            
            String LastName= Request.Form["lastName"];
            String FirstName = Request.Form["firstName"];
            String email = Request.Form["Email"];
            String Password = Request.Form["Password"];
            String ConfPassword = Request.Form["ConfPassword"];
            try
            {
                String query = "Insert into dbo.Account (LastName,FirstName,Email_ID,Password) values (\'" + LastName + "\' , \'" + FirstName + "\' , \'" + email + "\' , \'" + Password + "\')";
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                command = new SqlCommand(query, sqlConnection);
                adapter.InsertCommand = new SqlCommand(query, sqlConnection);
                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();
                sqlConnection.Close();
                
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                errorLabel.Text = "User Already Exists. Please Login.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}