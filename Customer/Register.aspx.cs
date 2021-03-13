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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string num = " select isnull(max(user_id), 0)+1 from users";
            SqlCommand cm = new SqlCommand(num, con);
            con.Open();
            int user_id = Convert.ToInt32(cm.ExecuteScalar());
            con.Close();
            string s = "insert into users values ('" + user_id + "','" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','"+t4.Text+"','"+t5.Text+"','Customer')";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");

        }
    }
}