using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage_test
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                Label2.Text = Session["Name"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
            {
            Response.Redirect("Employee.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Store.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogisticBox.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }
    }
        
}
