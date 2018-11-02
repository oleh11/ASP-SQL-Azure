using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Collections.Generic;

namespace WebApplication3
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String Email = Session["Email"].ToString();
                connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
                sqlConnection = new SqlConnection(connectionString);
                sqlConnection.Open();
                SqlDataAdapter da = new SqlDataAdapter("select e.Performance as Event,CONVERT(VARCHAR(10), e.Date , 111) as Date,CONVERT(VARCHAR(10), e.Time, 108) as Time, count(*) as Number_of_Reservations from temp_Reservation r,Event e where r.enumber=e.Number and Email_ID=" + "\'" + Email + "\'" + "group by e.Performance,e.Date,e.Time,r.enumber", sqlConnection);
                DataTable dbtbl = new DataTable();
                da.Fill(dbtbl);
                if (dbtbl.Rows.Count != 0)
                {
                    reservTable.DataSource = dbtbl;
                    reservTable.DataBind();
                }
            }
        }

        protected void lnkSelect_Click(object sender, EventArgs e)
        {
            String Email = Session["Email"].ToString();
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
            String Event_Number = com.ExecuteScalar().ToString();
            string query1 = "delete from temp_Reservation where Email_ID=" + "\'" + Email + "\'" + "and enumber=" + "\'" + Event_Number + "\'";
            SqlCommand command2 = new SqlCommand(query1, sqlConnection);
            command2.ExecuteNonQuery();
            command2.Dispose();
            reservTable.EditIndex = -1;
            reservTable.DataBind();
            if (reservTable.Rows.Count.ToString() == "0")
            {
                Response.Write("The cart is empty!");
            }

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //transfer to Reservation table and then delete
            Timer timer = new Timer();
            
            String Email = Session["Email"].ToString();
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            String query = "insert into Reservation select Email_ID,enumber,srow,snumber from temp_Reservation where Email_ID=" + "\'" + Email + "\'";
            sqlConnection.Open();
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            command = new SqlCommand(query, sqlConnection);
            adapter.InsertCommand = new SqlCommand(query, sqlConnection);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
            String query1 = "Delete from temp_Reservation where Email_ID=" + "\'" + Email + "\'";
            SqlCommand command2 = new SqlCommand(query1, sqlConnection);
            command2.ExecuteNonQuery();
            command2.Dispose();
            sqlConnection.Close();
            Response.Redirect("Transaction Page.aspx");
        }

        protected void reservTable_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }
    }
}