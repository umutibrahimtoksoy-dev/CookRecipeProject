using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmMesajlar : System.Web.UI.Page
{
    sqlsinif con = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        SqlCommand cmd = new SqlCommand("select * from Mesajlar", con.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }
}