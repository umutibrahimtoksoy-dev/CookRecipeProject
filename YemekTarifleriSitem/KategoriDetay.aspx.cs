using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriDetay : System.Web.UI.Page
{
    string gelenVeri = "";
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        gelenVeri = Request.QueryString["Kategoriid"];
        SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler where Kategoriid=@p1",bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", gelenVeri);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
        bgl.baglanti().Close();
    }
}