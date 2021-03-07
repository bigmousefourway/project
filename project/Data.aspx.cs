using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Employee_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }

        protected void Product_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }

        protected void Store_Click(object sender, EventArgs e)
        {
            Response.Redirect("Store.aspx");
        }

        protected void Car_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car.aspx");
        }

        protected void LogisticBox_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogisticBox.aspx");
        }
    }
}