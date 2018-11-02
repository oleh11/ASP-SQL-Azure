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
    public partial class Reserved_Seats : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        static List<string> selected_list = new List<string>();
        static List<string> deselected_list = new List<string>();
        public String Event_Name;
        public String Event_Date;
        public String Event_Time;
        protected void Page_Load(object sender, EventArgs e)
        {
            seattable.Visible = true;
            Event_Name = Session["Event_Name"].ToString();
            Event_Date = Session["Event_Date"].ToString();
            Event_Time = Session["Event_Time"].ToString();
            String Event_Number = Session["Event_Number"].ToString();
            String Email = Session["Email"].ToString();
            Response.Write("Event Selected: " + Event_Name + "<br>");
            Response.Write("Date Selected: " + Event_Date + "<br>");
            Response.Write("Time Selected: " + Event_Time + "<br>");
            Response.Write("<br>");

            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            String query = "select CONCAT(\'s\',RIGHT('0'+ CONVERT(VARCHAR, srow), 2),RIGHT('0'+ CONVERT(VARCHAR, snumber), 2)) from Reservation where enumber=" + "\'" + Event_Number + "\'" + "and Email_ID !=" + "\'" + Email + "\'";
            String query1 = "select CONCAT(\'s\',RIGHT('0'+ CONVERT(VARCHAR, srow), 2),RIGHT('0'+ CONVERT(VARCHAR, snumber), 2)) from Reservation where enumber=" + "\'" + Event_Number + "\'" + "and Email_ID=" + "\'" + Email + "\'";
            SqlCommand com = new SqlCommand(query, sqlConnection); // table name
            sqlConnection.Open();
            SqlDataReader mdr = com.ExecuteReader();
            List<string> list = new List<string>();
            while (mdr.Read())
            {
                list.Add(mdr[0].ToString());
            }
            mdr.Close();
            sqlConnection.Close();
            if (list.Count() != 0)
            {
                for (int i = 0; i < list.Count(); i++)
                {
                    ImageButton img = (ImageButton)form1.FindControl(list[i]);
                    img.ImageUrl = "~/Images/booked_seat_img.gif";
                    img.Enabled = false;
                }
            }
            /*******/
            SqlCommand com1 = new SqlCommand(query1, sqlConnection); // table name
            sqlConnection.Open();
            SqlDataReader mdr1 = com1.ExecuteReader();
            List<string> list1 = new List<string>();
            while (mdr1.Read())
            {
                list1.Add(mdr1[0].ToString());

            }
            mdr1.Close();
            sqlConnection.Close();
            if (list1.Count() != 0)
            {
                for (int i = 0; i < list1.Count(); i++)
                {
                    ImageButton img = (ImageButton)form1.FindControl(list1[i]);
                    img.ImageUrl = "~/Images/selected_seat_img.gif";
                    img.Enabled = false;
                }
            }

        }

        protected void s0101click(object sender, ImageClickEventArgs e) { }
        protected void s0102click(object sender, ImageClickEventArgs e) { }
        protected void s0103click(object sender, ImageClickEventArgs e) { }
        protected void s0104click(object sender, ImageClickEventArgs e) { }
        protected void s0105click(object sender, ImageClickEventArgs e) { }
        protected void s0106click(object sender, ImageClickEventArgs e) { }
        protected void s0107click(object sender, ImageClickEventArgs e) { }
        protected void s0108click(object sender, ImageClickEventArgs e) { }
        protected void s0109click(object sender, ImageClickEventArgs e) { }
        protected void s0110click(object sender, ImageClickEventArgs e) { }
        protected void s0111click(object sender, ImageClickEventArgs e) { }
        protected void s0112click(object sender, ImageClickEventArgs e) { }
        protected void s0113click(object sender, ImageClickEventArgs e) { }
        protected void s0114click(object sender, ImageClickEventArgs e) { }
        protected void s0115click(object sender, ImageClickEventArgs e) { }
        protected void s0201click(object sender, ImageClickEventArgs e) { }
        protected void s0202click(object sender, ImageClickEventArgs e) { }
        protected void s0203click(object sender, ImageClickEventArgs e) { }
        protected void s0204click(object sender, ImageClickEventArgs e) { }
        protected void s0205click(object sender, ImageClickEventArgs e) { }
        protected void s0206click(object sender, ImageClickEventArgs e) { }
        protected void s0207click(object sender, ImageClickEventArgs e) { }
        protected void s0208click(object sender, ImageClickEventArgs e) { }
        protected void s0209click(object sender, ImageClickEventArgs e) { }
        protected void s0210click(object sender, ImageClickEventArgs e) { }
        protected void s0211click(object sender, ImageClickEventArgs e) { }
        protected void s0212click(object sender, ImageClickEventArgs e) { }
        protected void s0213click(object sender, ImageClickEventArgs e) { }
        protected void s0214click(object sender, ImageClickEventArgs e) { }
        protected void s0215click(object sender, ImageClickEventArgs e) { }
        protected void s0301click(object sender, ImageClickEventArgs e) { }
        protected void s0302click(object sender, ImageClickEventArgs e) { }
        protected void s0303click(object sender, ImageClickEventArgs e) { }
        protected void s0304click(object sender, ImageClickEventArgs e) { }
        protected void s0305click(object sender, ImageClickEventArgs e) { }
        protected void s0306click(object sender, ImageClickEventArgs e) { }
        protected void s0307click(object sender, ImageClickEventArgs e) { }
        protected void s0308click(object sender, ImageClickEventArgs e) { }
        protected void s0309click(object sender, ImageClickEventArgs e) { }
        protected void s0310click(object sender, ImageClickEventArgs e) { }
        protected void s0311click(object sender, ImageClickEventArgs e) { }
        protected void s0312click(object sender, ImageClickEventArgs e) { }
        protected void s0313click(object sender, ImageClickEventArgs e) { }
        protected void s0314click(object sender, ImageClickEventArgs e) { }
        protected void s0315click(object sender, ImageClickEventArgs e) { }
        protected void s0401click(object sender, ImageClickEventArgs e) { }
        protected void s0402click(object sender, ImageClickEventArgs e) { }
        protected void s0403click(object sender, ImageClickEventArgs e) { }
        protected void s0404click(object sender, ImageClickEventArgs e) { }
        protected void s0405click(object sender, ImageClickEventArgs e) { }
        protected void s0406click(object sender, ImageClickEventArgs e) { }
        protected void s0407click(object sender, ImageClickEventArgs e) { }
        protected void s0408click(object sender, ImageClickEventArgs e) { }
        protected void s0409click(object sender, ImageClickEventArgs e) { }
        protected void s0410click(object sender, ImageClickEventArgs e) { }
        protected void s0411click(object sender, ImageClickEventArgs e) { }
        protected void s0412click(object sender, ImageClickEventArgs e) { }
        protected void s0413click(object sender, ImageClickEventArgs e) { }
        protected void s0414click(object sender, ImageClickEventArgs e) { }
        protected void s0415click(object sender, ImageClickEventArgs e) { }
        protected void s0501click(object sender, ImageClickEventArgs e) { }
        protected void s0502click(object sender, ImageClickEventArgs e) { }
        protected void s0503click(object sender, ImageClickEventArgs e) { }
        protected void s0504click(object sender, ImageClickEventArgs e) { }
        protected void s0505click(object sender, ImageClickEventArgs e) { }
        protected void s0506click(object sender, ImageClickEventArgs e) { }
        protected void s0507click(object sender, ImageClickEventArgs e) { }
        protected void s0508click(object sender, ImageClickEventArgs e) { }
        protected void s0509click(object sender, ImageClickEventArgs e) { }
        protected void s0510click(object sender, ImageClickEventArgs e) { }
        protected void s0511click(object sender, ImageClickEventArgs e) { }
        protected void s0512click(object sender, ImageClickEventArgs e) { }
        protected void s0513click(object sender, ImageClickEventArgs e) { }
        protected void s0514click(object sender, ImageClickEventArgs e) { }
        protected void s0515click(object sender, ImageClickEventArgs e) { }
        protected void s0601click(object sender, ImageClickEventArgs e) { }
        protected void s0602click(object sender, ImageClickEventArgs e) { }
        protected void s0603click(object sender, ImageClickEventArgs e) { }
        protected void s0604click(object sender, ImageClickEventArgs e) { }
        protected void s0605click(object sender, ImageClickEventArgs e) { }
        protected void s0606click(object sender, ImageClickEventArgs e) { }
        protected void s0607click(object sender, ImageClickEventArgs e) { }
        protected void s0608click(object sender, ImageClickEventArgs e) { }
        protected void s0609click(object sender, ImageClickEventArgs e) { }
        protected void s0610click(object sender, ImageClickEventArgs e) { }
        protected void s0611click(object sender, ImageClickEventArgs e) { }
        protected void s0612click(object sender, ImageClickEventArgs e) { }
        protected void s0613click(object sender, ImageClickEventArgs e) { }
        protected void s0614click(object sender, ImageClickEventArgs e) { }
        protected void s0615click(object sender, ImageClickEventArgs e) { }
        protected void s0701click(object sender, ImageClickEventArgs e) { }
        protected void s0702click(object sender, ImageClickEventArgs e) { }
        protected void s0703click(object sender, ImageClickEventArgs e) { }
        protected void s0704click(object sender, ImageClickEventArgs e) { }
        protected void s0705click(object sender, ImageClickEventArgs e) { }
        protected void s0706click(object sender, ImageClickEventArgs e) { }
        protected void s0707click(object sender, ImageClickEventArgs e) { }
        protected void s0708click(object sender, ImageClickEventArgs e) { }
        protected void s0709click(object sender, ImageClickEventArgs e) { }
        protected void s0710click(object sender, ImageClickEventArgs e) { }
        protected void s0711click(object sender, ImageClickEventArgs e) { }
        protected void s0712click(object sender, ImageClickEventArgs e) { }
        protected void s0713click(object sender, ImageClickEventArgs e) { }
        protected void s0714click(object sender, ImageClickEventArgs e) { }
        protected void s0715click(object sender, ImageClickEventArgs e) { }
        protected void s0801click(object sender, ImageClickEventArgs e) { }
        protected void s0802click(object sender, ImageClickEventArgs e) { }
        protected void s0803click(object sender, ImageClickEventArgs e) { }
        protected void s0804click(object sender, ImageClickEventArgs e) { }
        protected void s0805click(object sender, ImageClickEventArgs e) { }
        protected void s0806click(object sender, ImageClickEventArgs e) { }
        protected void s0807click(object sender, ImageClickEventArgs e) { }
        protected void s0808click(object sender, ImageClickEventArgs e) { }
        protected void s0809click(object sender, ImageClickEventArgs e) { }
        protected void s0810click(object sender, ImageClickEventArgs e) { }
        protected void s0811click(object sender, ImageClickEventArgs e) { }
        protected void s0812click(object sender, ImageClickEventArgs e) { }
        protected void s0813click(object sender, ImageClickEventArgs e) { }
        protected void s0814click(object sender, ImageClickEventArgs e) { }
        protected void s0815click(object sender, ImageClickEventArgs e) { }
        protected void s0901click(object sender, ImageClickEventArgs e) { }
        protected void s0902click(object sender, ImageClickEventArgs e) { }
        protected void s0903click(object sender, ImageClickEventArgs e) { }
        protected void s0904click(object sender, ImageClickEventArgs e) { }
        protected void s0905click(object sender, ImageClickEventArgs e) { }
        protected void s0906click(object sender, ImageClickEventArgs e) { }
        protected void s0907click(object sender, ImageClickEventArgs e) { }
        protected void s0908click(object sender, ImageClickEventArgs e) { }
        protected void s0909click(object sender, ImageClickEventArgs e) { }
        protected void s0910click(object sender, ImageClickEventArgs e) { }
        protected void s0911click(object sender, ImageClickEventArgs e) { }
        protected void s0912click(object sender, ImageClickEventArgs e) { }
        protected void s0913click(object sender, ImageClickEventArgs e) { }
        protected void s0914click(object sender, ImageClickEventArgs e) { }
        protected void s0915click(object sender, ImageClickEventArgs e) { }
        protected void s1001click(object sender, ImageClickEventArgs e) { }
        protected void s1002click(object sender, ImageClickEventArgs e) { }
        protected void s1003click(object sender, ImageClickEventArgs e) { }
        protected void s1004click(object sender, ImageClickEventArgs e) { }
        protected void s1005click(object sender, ImageClickEventArgs e) { }
        protected void s1006click(object sender, ImageClickEventArgs e) { }
        protected void s1007click(object sender, ImageClickEventArgs e) { }
        protected void s1008click(object sender, ImageClickEventArgs e) { }
        protected void s1009click(object sender, ImageClickEventArgs e) { }
        protected void s1010click(object sender, ImageClickEventArgs e) { }
        protected void s1011click(object sender, ImageClickEventArgs e) { }
        protected void s1012click(object sender, ImageClickEventArgs e) { }
        protected void s1013click(object sender, ImageClickEventArgs e) { }
        protected void s1014click(object sender, ImageClickEventArgs e) { }
        protected void s1015click(object sender, ImageClickEventArgs e) { }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Check Reservations.aspx");
        }

        protected void Modify_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movie Reservation.aspx");
        }
    }
}