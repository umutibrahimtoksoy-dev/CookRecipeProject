using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmAnasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kad"] == null && Session["sifre"] == null)
        {
            Response.Redirect("AdmLogin.aspx");
        }
    }
}