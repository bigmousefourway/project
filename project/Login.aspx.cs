using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace page
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Iscorrect_Click(object sender, EventArgs e)
        {

            SqlConnection Conn = new SqlConnection("Data Source=DESKTOP-31ROI1J\\SQLEXPRESS;Initial Catalog=test;uid=sa2;password=a34295151");
            Conn.Open();
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("Select * From dbo.Employee Where [account]=@acc  and [password]=@pwd ",Conn);
            cmd.Parameters.AddWithValue("@acc", account.Text);
            cmd.Parameters.AddWithValue("@pwd", password.Text);
            dr = cmd.ExecuteReader();
            if (!dr.Read()){
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('帳號或密碼錯誤!');</script>");
                account.Text = "";
            }
            else{
                Session["Login"] = "OK";
                Session["Name"] = dr["name"].ToString();
                cmd.Cancel();
                dr.Close();
                Conn.Close();
                Conn.Dispose();
                
                Response.Redirect("Logistic.aspx");
               
            }
        }
    }
}