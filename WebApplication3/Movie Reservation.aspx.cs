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
    public partial class Movie_Reservation : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;
        static List<string> selected_list = new List<string>();
        static List<string> deselected_list = new List<string>();
        public String Event_Name;
        public String Event_Date;
        public String Event_Time;
        public String Email;
        public String Email1;
        protected void Page_Load(object sender, EventArgs e)
        {

            seattable.Visible = true;
            Event_Name = Session["Event_Name"].ToString();
            Event_Date = Session["Event_Date"].ToString();
            Event_Time = Session["Event_Time"].ToString();
            String Event_Number = Session["Event_Number"].ToString();
            Email = Session["Email"].ToString();
            Email1 = "Welcome, " + Session["Email"].ToString() + "!";
            Response.Write("Event Selected: " + Event_Name + "<br>");
            Response.Write("Date Selected: " + Event_Date + "<br>");
            Response.Write("Time Selected: " + Event_Time + "<br>");
            Response.Write("<br>");

            connectionString = @"Data Source=ids520.database.windows.net;Initial Catalog=web_app_ids520_2 ;User ID=ids520k;Password=UICIDS123!";
            sqlConnection = new SqlConnection(connectionString);
            String query = "select CONCAT(\'s\',RIGHT('0'+ CONVERT(VARCHAR, srow), 2),RIGHT('0'+ CONVERT(VARCHAR, snumber), 2)) from Reservation where enumber=" + "\'" + Event_Number + "\'" + "and Email_ID !=" + "\'" + Email + "\'" + " UNION " + "select CONCAT(\'s\',RIGHT('0'+ CONVERT(VARCHAR, srow), 2),RIGHT('0'+ CONVERT(VARCHAR, snumber), 2)) from temp_Reservation where enumber=" + "\'" + Event_Number + "\'" + "and Email_ID !=" + "\'" + Email + "\'";
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
                    img.Enabled = true;
                }
            }

        }

        protected void seatClick(ImageButton btn)
        {
            if (btn.ImageUrl == "~/Images/selected_seat_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/available_seat_img.gif";
                selected_list.Remove(btn.ID.ToString());
                deselected_list.Add(btn.ID.ToString());
                String Email = Session["Email"].ToString();
                String Event_Number = Session["Event_Number"].ToString();
                for (int i = 0; i < deselected_list.Count(); i++)
                {
                    String rowdel = deselected_list[i].Substring(1, 2);
                    String nodel = deselected_list[i].Substring(3, 2);
                    String querydel = "DELETE FROM Reservation where Email_ID=" + "\'" + Email + "\'" + "and enumber=" + "\'" + Event_Number + "\'" + "and srow=" + "\'" + rowdel + "\'" + "and snumber=" + "\'" + nodel + "\'";
                    SqlCommand command = new SqlCommand(querydel, sqlConnection);
                    sqlConnection.Open();
                    command.ExecuteNonQuery();
                    sqlConnection.Close();
                }
                deselected_list.Clear();
                //Response.Write("Seat removed to the array");
            }
            else if (btn.ImageUrl == "~/Images/available_seat_img.gif")
            {
                seattable.Visible = true;
                if (selected_list.Count() < 4)
                {
                    btn.ImageUrl = "~/Images/selected_seat_img.gif";
                    selected_list.Add(btn.ID.ToString());
                }
                else
                {
                    Response.Write("Maximum limit of booking reached");
                    btn.ImageUrl = "~/Images/available_seat_img.gif";
                }
            }
            else
            {
                Response.Write("Seat already booked");
            }
        }

        protected void s0101click(object sender, ImageClickEventArgs e) { seatClick(s0101); }
        protected void s0102click(object sender, ImageClickEventArgs e) { seatClick(s0102); }
        protected void s0103click(object sender, ImageClickEventArgs e) { seatClick(s0103); }
        protected void s0104click(object sender, ImageClickEventArgs e) { seatClick(s0104); }
        protected void s0105click(object sender, ImageClickEventArgs e) { seatClick(s0105); }
        protected void s0106click(object sender, ImageClickEventArgs e) { seatClick(s0106); }
        protected void s0107click(object sender, ImageClickEventArgs e) { seatClick(s0107); }
        protected void s0108click(object sender, ImageClickEventArgs e) { seatClick(s0108); }
        protected void s0109click(object sender, ImageClickEventArgs e) { seatClick(s0109); }
        protected void s0110click(object sender, ImageClickEventArgs e) { seatClick(s0110); }
        protected void s0111click(object sender, ImageClickEventArgs e) { seatClick(s0111); }
        protected void s0112click(object sender, ImageClickEventArgs e) { seatClick(s0112); }
        protected void s0113click(object sender, ImageClickEventArgs e) { seatClick(s0113); }
        protected void s0114click(object sender, ImageClickEventArgs e) { seatClick(s0114); }
        protected void s0115click(object sender, ImageClickEventArgs e) { seatClick(s0115); }
        protected void s0201click(object sender, ImageClickEventArgs e) { seatClick(s0201); }
        protected void s0202click(object sender, ImageClickEventArgs e) { seatClick(s0202); }
        protected void s0203click(object sender, ImageClickEventArgs e) { seatClick(s0203); }
        protected void s0204click(object sender, ImageClickEventArgs e) { seatClick(s0204); }
        protected void s0205click(object sender, ImageClickEventArgs e) { seatClick(s0205); }
        protected void s0206click(object sender, ImageClickEventArgs e) { seatClick(s0206); }
        protected void s0207click(object sender, ImageClickEventArgs e) { seatClick(s0207); }
        protected void s0208click(object sender, ImageClickEventArgs e) { seatClick(s0208); }
        protected void s0209click(object sender, ImageClickEventArgs e) { seatClick(s0209); }
        protected void s0210click(object sender, ImageClickEventArgs e) { seatClick(s0210); }
        protected void s0211click(object sender, ImageClickEventArgs e) { seatClick(s0211); }
        protected void s0212click(object sender, ImageClickEventArgs e) { seatClick(s0212); }
        protected void s0213click(object sender, ImageClickEventArgs e) { seatClick(s0213); }
        protected void s0214click(object sender, ImageClickEventArgs e) { seatClick(s0214); }
        protected void s0215click(object sender, ImageClickEventArgs e) { seatClick(s0215); }
        protected void s0301click(object sender, ImageClickEventArgs e) { seatClick(s0301); }
        protected void s0302click(object sender, ImageClickEventArgs e) { seatClick(s0302); }
        protected void s0303click(object sender, ImageClickEventArgs e) { seatClick(s0303); }
        protected void s0304click(object sender, ImageClickEventArgs e) { seatClick(s0304); }
        protected void s0305click(object sender, ImageClickEventArgs e) { seatClick(s0305); }
        protected void s0306click(object sender, ImageClickEventArgs e) { seatClick(s0306); }
        protected void s0307click(object sender, ImageClickEventArgs e) { seatClick(s0307); }
        protected void s0308click(object sender, ImageClickEventArgs e) { seatClick(s0308); }
        protected void s0309click(object sender, ImageClickEventArgs e) { seatClick(s0309); }
        protected void s0310click(object sender, ImageClickEventArgs e) { seatClick(s0310); }
        protected void s0311click(object sender, ImageClickEventArgs e) { seatClick(s0311); }
        protected void s0312click(object sender, ImageClickEventArgs e) { seatClick(s0312); }
        protected void s0313click(object sender, ImageClickEventArgs e) { seatClick(s0313); }
        protected void s0314click(object sender, ImageClickEventArgs e) { seatClick(s0314); }
        protected void s0315click(object sender, ImageClickEventArgs e) { seatClick(s0315); }
        protected void s0401click(object sender, ImageClickEventArgs e) { seatClick(s0401); }
        protected void s0402click(object sender, ImageClickEventArgs e) { seatClick(s0402); }
        protected void s0403click(object sender, ImageClickEventArgs e) { seatClick(s0403); }
        protected void s0404click(object sender, ImageClickEventArgs e) { seatClick(s0404); }
        protected void s0405click(object sender, ImageClickEventArgs e) { seatClick(s0405); }
        protected void s0406click(object sender, ImageClickEventArgs e) { seatClick(s0406); }
        protected void s0407click(object sender, ImageClickEventArgs e) { seatClick(s0407); }
        protected void s0408click(object sender, ImageClickEventArgs e) { seatClick(s0408); }
        protected void s0409click(object sender, ImageClickEventArgs e) { seatClick(s0409); }
        protected void s0410click(object sender, ImageClickEventArgs e) { seatClick(s0410); }
        protected void s0411click(object sender, ImageClickEventArgs e) { seatClick(s0411); }
        protected void s0412click(object sender, ImageClickEventArgs e) { seatClick(s0412); }
        protected void s0413click(object sender, ImageClickEventArgs e) { seatClick(s0413); }
        protected void s0414click(object sender, ImageClickEventArgs e) { seatClick(s0414); }
        protected void s0415click(object sender, ImageClickEventArgs e) { seatClick(s0415); }
        protected void s0501click(object sender, ImageClickEventArgs e) { seatClick(s0501); }
        protected void s0502click(object sender, ImageClickEventArgs e) { seatClick(s0502); }
        protected void s0503click(object sender, ImageClickEventArgs e) { seatClick(s0503); }
        protected void s0504click(object sender, ImageClickEventArgs e) { seatClick(s0504); }
        protected void s0505click(object sender, ImageClickEventArgs e) { seatClick(s0505); }
        protected void s0506click(object sender, ImageClickEventArgs e) { seatClick(s0506); }
        protected void s0507click(object sender, ImageClickEventArgs e) { seatClick(s0507); }
        protected void s0508click(object sender, ImageClickEventArgs e) { seatClick(s0508); }
        protected void s0509click(object sender, ImageClickEventArgs e) { seatClick(s0509); }
        protected void s0510click(object sender, ImageClickEventArgs e) { seatClick(s0510); }
        protected void s0511click(object sender, ImageClickEventArgs e) { seatClick(s0511); }
        protected void s0512click(object sender, ImageClickEventArgs e) { seatClick(s0512); }
        protected void s0513click(object sender, ImageClickEventArgs e) { seatClick(s0513); }
        protected void s0514click(object sender, ImageClickEventArgs e) { seatClick(s0514); }
        protected void s0515click(object sender, ImageClickEventArgs e) { seatClick(s0515); }
        protected void s0601click(object sender, ImageClickEventArgs e) { seatClick(s0601); }
        protected void s0602click(object sender, ImageClickEventArgs e) { seatClick(s0602); }
        protected void s0603click(object sender, ImageClickEventArgs e) { seatClick(s0603); }
        protected void s0604click(object sender, ImageClickEventArgs e) { seatClick(s0604); }
        protected void s0605click(object sender, ImageClickEventArgs e) { seatClick(s0605); }
        protected void s0606click(object sender, ImageClickEventArgs e) { seatClick(s0606); }
        protected void s0607click(object sender, ImageClickEventArgs e) { seatClick(s0607); }
        protected void s0608click(object sender, ImageClickEventArgs e) { seatClick(s0608); }
        protected void s0609click(object sender, ImageClickEventArgs e) { seatClick(s0609); }
        protected void s0610click(object sender, ImageClickEventArgs e) { seatClick(s0610); }
        protected void s0611click(object sender, ImageClickEventArgs e) { seatClick(s0611); }
        protected void s0612click(object sender, ImageClickEventArgs e) { seatClick(s0612); }
        protected void s0613click(object sender, ImageClickEventArgs e) { seatClick(s0613); }
        protected void s0614click(object sender, ImageClickEventArgs e) { seatClick(s0614); }
        protected void s0615click(object sender, ImageClickEventArgs e) { seatClick(s0615); }
        protected void s0701click(object sender, ImageClickEventArgs e) { seatClick(s0701); }
        protected void s0702click(object sender, ImageClickEventArgs e) { seatClick(s0702); }
        protected void s0703click(object sender, ImageClickEventArgs e) { seatClick(s0703); }
        protected void s0704click(object sender, ImageClickEventArgs e) { seatClick(s0704); }
        protected void s0705click(object sender, ImageClickEventArgs e) { seatClick(s0705); }
        protected void s0706click(object sender, ImageClickEventArgs e) { seatClick(s0706); }
        protected void s0707click(object sender, ImageClickEventArgs e) { seatClick(s0707); }
        protected void s0708click(object sender, ImageClickEventArgs e) { seatClick(s0708); }
        protected void s0709click(object sender, ImageClickEventArgs e) { seatClick(s0709); }
        protected void s0710click(object sender, ImageClickEventArgs e) { seatClick(s0710); }
        protected void s0711click(object sender, ImageClickEventArgs e) { seatClick(s0711); }
        protected void s0712click(object sender, ImageClickEventArgs e) { seatClick(s0712); }
        protected void s0713click(object sender, ImageClickEventArgs e) { seatClick(s0713); }
        protected void s0714click(object sender, ImageClickEventArgs e) { seatClick(s0714); }
        protected void s0715click(object sender, ImageClickEventArgs e) { seatClick(s0715); }
        protected void s0801click(object sender, ImageClickEventArgs e) { seatClick(s0801); }
        protected void s0802click(object sender, ImageClickEventArgs e) { seatClick(s0802); }
        protected void s0803click(object sender, ImageClickEventArgs e) { seatClick(s0803); }
        protected void s0804click(object sender, ImageClickEventArgs e) { seatClick(s0804); }
        protected void s0805click(object sender, ImageClickEventArgs e) { seatClick(s0805); }
        protected void s0806click(object sender, ImageClickEventArgs e) { seatClick(s0806); }
        protected void s0807click(object sender, ImageClickEventArgs e) { seatClick(s0807); }
        protected void s0808click(object sender, ImageClickEventArgs e) { seatClick(s0808); }
        protected void s0809click(object sender, ImageClickEventArgs e) { seatClick(s0809); }
        protected void s0810click(object sender, ImageClickEventArgs e) { seatClick(s0810); }
        protected void s0811click(object sender, ImageClickEventArgs e) { seatClick(s0811); }
        protected void s0812click(object sender, ImageClickEventArgs e) { seatClick(s0812); }
        protected void s0813click(object sender, ImageClickEventArgs e) { seatClick(s0813); }
        protected void s0814click(object sender, ImageClickEventArgs e) { seatClick(s0814); }
        protected void s0815click(object sender, ImageClickEventArgs e) { seatClick(s0815); }
        protected void s0901click(object sender, ImageClickEventArgs e) { seatClick(s0901); }
        protected void s0902click(object sender, ImageClickEventArgs e) { seatClick(s0902); }
        protected void s0903click(object sender, ImageClickEventArgs e) { seatClick(s0903); }
        protected void s0904click(object sender, ImageClickEventArgs e) { seatClick(s0904); }
        protected void s0905click(object sender, ImageClickEventArgs e) { seatClick(s0905); }
        protected void s0906click(object sender, ImageClickEventArgs e) { seatClick(s0906); }
        protected void s0907click(object sender, ImageClickEventArgs e) { seatClick(s0907); }
        protected void s0908click(object sender, ImageClickEventArgs e) { seatClick(s0908); }
        protected void s0909click(object sender, ImageClickEventArgs e) { seatClick(s0909); }
        protected void s0910click(object sender, ImageClickEventArgs e) { seatClick(s0910); }
        protected void s0911click(object sender, ImageClickEventArgs e) { seatClick(s0911); }
        protected void s0912click(object sender, ImageClickEventArgs e) { seatClick(s0912); }
        protected void s0913click(object sender, ImageClickEventArgs e) { seatClick(s0913); }
        protected void s0914click(object sender, ImageClickEventArgs e) { seatClick(s0914); }
        protected void s0915click(object sender, ImageClickEventArgs e) { seatClick(s0915); }
        protected void s1001click(object sender, ImageClickEventArgs e) { seatClick(s1001); }
        protected void s1002click(object sender, ImageClickEventArgs e) { seatClick(s1002); }
        protected void s1003click(object sender, ImageClickEventArgs e) { seatClick(s1003); }
        protected void s1004click(object sender, ImageClickEventArgs e) { seatClick(s1004); }
        protected void s1005click(object sender, ImageClickEventArgs e) { seatClick(s1005); }
        protected void s1006click(object sender, ImageClickEventArgs e) { seatClick(s1006); }
        protected void s1007click(object sender, ImageClickEventArgs e) { seatClick(s1007); }
        protected void s1008click(object sender, ImageClickEventArgs e) { seatClick(s1008); }
        protected void s1009click(object sender, ImageClickEventArgs e) { seatClick(s1009); }
        protected void s1010click(object sender, ImageClickEventArgs e) { seatClick(s1010); }
        protected void s1011click(object sender, ImageClickEventArgs e) { seatClick(s1011); }
        protected void s1012click(object sender, ImageClickEventArgs e) { seatClick(s1012); }
        protected void s1013click(object sender, ImageClickEventArgs e) { seatClick(s1013); }
        protected void s1014click(object sender, ImageClickEventArgs e) { seatClick(s1014); }
        protected void s1015click(object sender, ImageClickEventArgs e) { seatClick(s1015); }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Email = Session["Email"].ToString();
            String Event_Number = Session["Event_Number"].ToString();
            for (int i = 0; i < selected_list.Count(); i++)
            {
                String row = selected_list[i].Substring(1, 2);
                String no = selected_list[i].Substring(3, 2);
                String query = "INSERT temp_Reservation(Email_ID,enumber,srow,snumber) values (" + "\'" + Email + "\'," + "\'" + Event_Number + "\'," + "\'" + row + "\'," + "\'" + no + "\')";
                SqlCommand command = new SqlCommand(query, sqlConnection);
                sqlConnection.Open();
                command.ExecuteNonQuery();
                sqlConnection.Close();
            }
            Session["ticketNumber"] = selected_list;
            Session["TicketCount"] = selected_list.Count.ToString();
            deselected_list.Clear();
            selected_list.Clear();
            Response.Redirect("ShoppingCart.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }
    }
}