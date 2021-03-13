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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer"] != null)
            {
                string s = "select order_id,pro_name,cat_name,orders.price,qty,total,order_state,image from products,category,users,orders where orders.pro_id=products.pro_id and category.cat_id=products.cat_id and users.user_id=orders.user_id and orders.user_id='" + Convert.ToInt16(Session["customer"])+"'";
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rbr.DataSource = dt;
                rbr.DataBind();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void h1_Click(object sender, EventArgs e)
        {
            Session["customer"] = null;
            Response.Redirect("Login.aspx");

        }
    }
}