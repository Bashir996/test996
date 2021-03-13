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
    public partial class ViewProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(Properties.Settings.Default.ACER_LAPTOP);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["customer"] != null)
                {
                    if (Request.QueryString["id"] == null)
                    {
                        string s = "select * from category,products where products.cat_id=category.cat_id";
                        SqlCommand cmd = new SqlCommand(s, con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        rbr.DataSource = dt;
                        rbr.DataBind();
                    }
                    else
                    {
                        string s = "select * from category,products where products.cat_id=category.cat_id and category.cat_id='" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand(s, con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        rbr.DataSource = dt;
                        rbr.DataBind();

                    }

                    string s1 = "select * from category";
                    SqlCommand cmd1 = new SqlCommand(s1, con);
                    SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    Repeater1.DataSource = dt1;
                    Repeater1.DataBind();

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }

        }

        protected void h1_Click(object sender, EventArgs e)
        {
            Session["customer"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}