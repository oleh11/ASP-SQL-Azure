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
    public partial class Events : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand com = new SqlCommand("select distinct(Performance) from Event where date>dateadd(hour,-5,getdate())", sqlConnection); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            DropDownList1.DataTextField = ds.Tables[0].Columns["Performance"].ToString(); // text field name of table dispalyed in dropdown
            DropDownList1.DataValueField = ds.Tables[0].Columns["Performance"].ToString();             // to retrive specific  textfield name 
            DropDownList1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            DropDownList1.DataBind();  //binding dropdownlist
            sqlConnection.Close();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // DropDownList2.Items.Clear();
            //DropDownList2.Items.Add("Select Date");
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            String Movie_Name = DropDownList1.SelectedItem.Value;
            String query = "select distinct(CONVERT(VARCHAR(10), Date , 111)) as Date from Event where Performance=" + "\'" + Movie_Name + "\'";
            SqlCommand com = new SqlCommand(query, sqlConnection); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            DropDownList2.DataTextField = ds.Tables[0].Columns["Date"].ToString(); // text field name of table dispalyed in dropdown
            DropDownList2.DataValueField = ds.Tables[0].Columns["Date"].ToString();             // to retrive specific  textfield name 
            DropDownList2.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            DropDownList2.DataBind();  //binding dropdownlist
            sqlConnection.Close();
            Console.Write("I AM HERE");
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           // DropDownList3.Items.Clear();
            //DropDownList3.Items.Add("Select Time");
            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            String Movie_Name = DropDownList1.SelectedItem.Value;
            String Movie_Date = DropDownList2.SelectedItem.Value;
            String query = "select distinct(Time) from Event where Performance=" + "\'" + Movie_Name + "\'" + "and Date=" + "\'" + Movie_Date + "\'";
            SqlCommand com = new SqlCommand(query, sqlConnection); // table name
            sqlConnection.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            DropDownList3.DataTextField = ds.Tables[0].Columns["Time"].ToString(); // text field name of table dispalyed in dropdown
            DropDownList3.DataValueField = ds.Tables[0].Columns["Time"].ToString();             // to retrive specific  textfield name 
            DropDownList3.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            DropDownList3.DataBind();  //binding dropdownlist
            sqlConnection.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["Event_Name"] = DropDownList1.SelectedItem.Value;
                Session["Event_Date"] = DropDownList2.SelectedItem.Value;
                Session["Event_Time"] = DropDownList3.SelectedItem.Value;
                connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
                sqlConnection = new SqlConnection(connectionString);
                String Movie_Name = DropDownList1.SelectedItem.Value;
                String Movie_Date = DropDownList2.SelectedItem.Value;
                String Movie_Time = DropDownList3.SelectedItem.Value;
                String query = "select Number from Event where Performance=" + "\'" + Movie_Name + "\'" + "and Date=" + "\'" + Movie_Date + "\'" + "and Time=" + "\'" + Movie_Time + "\'";
                SqlCommand com = new SqlCommand(query, sqlConnection); // table name 
                sqlConnection.Open();
                Session["Event_Number"] = com.ExecuteScalar().ToString();
                sqlConnection.Close();
                Response.Redirect("Movie Reservation.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Please select all the values");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Home.aspx");
        }

        protected void CheckReserv_Click(object sender, EventArgs e)
        {
            Response.Redirect("Check Reservations.aspx");
        }
    }


}