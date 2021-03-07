using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["Name"].ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logistic.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Login"] = null;
            Session["Name"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}