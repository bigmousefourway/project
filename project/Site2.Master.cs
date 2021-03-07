using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                Label2.Text = Convert.ToString(Session["Name"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Import.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintain.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarDistribute.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logistic.aspx");
        }
    }
}