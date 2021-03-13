using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Delivery.Admin
{
    public partial class updateState : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
                s = Request.QueryString["aid"].ToString();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string s1 = "update orders set order_state='"+t1.Text+ "' where order_id='"+Convert.ToInt16(s)+"'";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewSales.aspx");
        }
    }
}