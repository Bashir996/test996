using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Delivery.Customer
{
    public partial class CancelMyCart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                string s = "delete from orders where order_id='" + Request.QueryString["id"] + "' ";
                SqlCommand cmd = new SqlCommand(s, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("cart.aspx");

            }
            else
            {
                string s = "delete from orders where order_id='" + Request.QueryString["aid"] + "' ";
                SqlCommand cmd = new SqlCommand(s, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Admin/ViewSales.aspx");

            }

        }
    }
}