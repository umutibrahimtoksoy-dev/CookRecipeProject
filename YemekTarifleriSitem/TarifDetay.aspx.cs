using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string gelenVeri = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        gelenVeri = Request.QueryString["Yemekid"];
        SqlCommand cmd = new SqlCommand("select YemekAd from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", gelenVeri);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();

        // yorum listeleme
        SqlCommand cmd2 = new SqlCommand("select * from Tbl_Yorumlar where Yemekid=@p2", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p2", gelenVeri);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
        bgl.baglanti().Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd3 = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        cmd3.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd3.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd3.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd3.Parameters.AddWithValue("@p4", gelenVeri);
        cmd3.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}