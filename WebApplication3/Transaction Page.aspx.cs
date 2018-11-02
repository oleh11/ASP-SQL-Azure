using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Transaction_Page : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String count1 = Session["TicketCount"].ToString();
            if (count1=="1")
            {
                count.Text = "Your Ticket has been confirmed!";
            }
            else if (count1 == "0")
            {
                count.Text = "";
            }
            else
            {
                count.Text = "Your Tickets has been confirmed!";
            }
        }

        protected void Events_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}