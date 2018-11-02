using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            String Email = Request.Form["Email"];
            String newPass = Request.Form["New_password"];
            String confPass = Request.Form["Confirm_new_pass"];
            String query = "Update Account Set Password=\'" + newPass + "\'   where Email_ID=\'" + Email + "\'";
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            command = new SqlCommand(query, sqlConnection);
            adapter.InsertCommand = new SqlCommand(query, sqlConnection);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
            sqlConnection.Close();
            Response.Redirect("Login.aspx");
            Response.Write(query);
        }
    }
}