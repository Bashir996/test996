﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Delivery.Customer
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void h1_Click(object sender, EventArgs e)
        {
            Session["customer"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}