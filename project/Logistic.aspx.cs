using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Logistic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Import_Click(object sender, EventArgs e)
        {
            Response.Redirect("Import.aspx");
        }

        protected void Maintain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintain.aspx");
        }

        protected void Distribute_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarDistribute.aspx");
        }

        protected void Report_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }
    }
}