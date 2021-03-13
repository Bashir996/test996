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
    public partial class AddToCart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);
        DataTable dt = new DataTable();
        static string price;
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["customer"] != null)
            {
                string s = "select * from category,products where products.cat_id=category.cat_id and pro_id='" + Request.QueryString["id"] + "' ";
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptrImages.DataSource = dt;
                rptrImages.DataBind();
                rptrProductDetails.DataSource = dt;
                rptrProductDetails.DataBind();
                price = dt.Rows[0]["price"].ToString();

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

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string num = " select isnull(max(order_id), 0)+1 from orders";
            SqlCommand cm = new SqlCommand(num, con);
            con.Open();
            int order_id = Convert.ToInt32(cm.ExecuteScalar());
            con.Close();
            int total = Convert.ToInt16(price) * Convert.ToInt32(t1.Text);
            string s = "insert into orders values ('" + order_id + "','" + Convert.ToInt16(Session["customer"]) + "','" + Convert.ToInt16( Request.QueryString["id"]) + "','"+Convert.ToInt32(t1.Text)+ "','" + Convert.ToInt16(price) + "','" + total+"','Started')";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            l1.ForeColor = System.Drawing.Color.Green;
            l1.Text = "Added To Order !";

        }
    }
}