using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RiskManagementDashboard
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["SOEID"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["SOEID"] = txtSOEID.Value.Trim().ToUpper();
            //Response.Redirect("~/Default.aspx");
            Response.Redirect("~/pgLanding.aspx");
        }

    }
}
