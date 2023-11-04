using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdmLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void girisYap_Click(object sender, EventArgs e)
    {
        string kad = "umut";
        string sifre = "123";

        if (username.Text == kad && password.Text == sifre)
        {
            Session.Add("kad", kad);
            Session.Add("sifre", sifre);
            Response.Redirect("AdmAnasayfa.aspx");
            
        }
        else
            Label1.Text = "Hatalı Giriş !";

    }
}