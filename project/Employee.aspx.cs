using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage_test
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.DetailsView3.PageIndex = this.GridView1.SelectedRow.DataItemIndex;
            DetailsView3.Visible = true;
        }
       

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void bntBack_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource5";
            新增.Visible = true;
        }

        protected void 上傳資料_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = null;
            新增.Visible = false;
            DetailsView3.Visible = false;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gvw = (GridView)sender;
            if (e.NewPageIndex < 0)
            {
                TextBox pageNum = (TextBox)gvw.BottomPagerRow.FindControl("txtNewPageIndex");
                int Pa = int.Parse(pageNum.Text);
                if (Pa <= 0)
                {
                    gvw.PageIndex = 0;
                }
                else
                {
                    gvw.PageIndex = Pa - 1;
                }
            }
            else
            {
                gvw.PageIndex = e.NewPageIndex;
            }
            //Bind();
        }
    }
}