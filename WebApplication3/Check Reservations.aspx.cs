using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class Check_Reservations : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            String Email = Session["Email"].ToString();
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlDataAdapter da = new SqlDataAdapter("select e.Performance as Event,CONVERT(VARCHAR(10), e.Date , 111) as Date,CONVERT(VARCHAR(10), e.Time, 108) as Time, count(*) as Number_of_Reservations from Reservation r,Event e where r.enumber=e.Number and Email_ID=" + "\'" + Email + "\'" + "group by e.Performance,e.Date,e.Time,r.enumber", sqlConnection);
            DataTable dbtbl = new DataTable();
            da.Fill(dbtbl);
            if (dbtbl.Rows.Count != 0)
            { 
            reservTable.DataSource = dbtbl;
            reservTable.DataBind();
            }
            else
            {
                errorLabel.Text = "No Reservations Found!";
                errorLabel.Visible = true;
            }
        }

            protected void reservTable_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkSelect_Click(object sender, EventArgs e)
        {
            String a = Convert.ToString((sender as LinkButton).CommandArgument);
            string[] EventDateTime = a.Split(';');
            String Movie_Name = EventDateTime[0];
            String Movie_Date = EventDateTime[1];
            String Movie_Time = EventDateTime[2];
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            String query = "select Number from Event where Performance=" + "\'" + Movie_Name + "\'" + "and Date=" + "\'" + Movie_Date + "\'" + "and Time=" + "\'" + Movie_Time + "\'";
            SqlCommand com = new SqlCommand(query, sqlConnection); // table name 
            sqlConnection.Open();
            Session["Event_Number"] = com.ExecuteScalar().ToString();
            sqlConnection.Close();
            Session["Event_Name"] = Movie_Name;
            Session["Event_Date"] = Movie_Date;
            Session["Event_Time"] = Movie_Time;
            Response.Redirect("Reserved Seats.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}