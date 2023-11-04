using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmYorumlar : System.Web.UI.Page
{
    sqlsinif con = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;


        SqlCommand cmd = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay = 1", con.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        SqlCommand cmd2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay = 0", con.baglanti());
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }
}