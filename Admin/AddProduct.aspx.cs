using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Delivery.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            {
                fill();
            }
        }

        public void fill()
        {
            string s = "select * from category";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataTextField = "cat_name";
            d1.DataValueField = "cat_id";
            d1.DataBind();

        }
        protected void b1_Click(object sender, EventArgs e)
        {
                string num = "select isnull(max(pro_id), 0)+1 from products";
                SqlCommand cm = new SqlCommand(num, con);
                con.Open();
                int id = Convert.ToInt32(cm.ExecuteScalar());
                con.Close();
            if (fi.HasFiles)
            {
                string ext1 = System.IO.Path.GetExtension(fi.FileName);
                if (ext1 != ".jpg" && ext1 != ".png" && ext1 != "jpeg")
                {
                    l1.Visible = true;
                    l1.Text = "please select the image ";
                    return;

                }

                string file_name = fi.FileName;
                fi.SaveAs(Server.MapPath("~\\Admin\\images") + "\\" + file_name);
                string path1 = file_name;

                string s1 = "insert into products values( '" + id + "','" + t1.Text+ "','" + t2.Text + "','" + Convert.ToInt16( d1.SelectedValue.ToString()) + "','" + path1 + "','" + t8.Text + "')";
                SqlCommand cmd1 = new SqlCommand(s1, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                l1.ForeColor = System.Drawing.Color.Green;
                l1.Text = "Successfully added";
            }
            else
            {
                l1.ForeColor = System.Drawing.Color.Red;
                l1.Text = "please select the image";

            }


        }
    }
}