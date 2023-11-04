using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmOnaylanmayanYorumlar : System.Web.UI.Page
{
    sqlsinif con = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false)
        {        
            SqlCommand cmd = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", con.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr["YorumAdSoyad"].ToString();
                TextBox2.Text = dr["YorumMail"].ToString();
                TextBox3.Text = dr["Yorumicerik"].ToString();
                TextBox4.Text = dr["YemekAd"].ToString();
            }
            con.baglanti().Close();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("update Tbl_Yorumlar set YorumOnay=@p1,Yorumicerik=@p2 where Yorumid=@p3", con.baglanti());
        cmd2.Parameters.AddWithValue("@p1", "True");
        cmd2.Parameters.AddWithValue("@p2", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@p3", id);

        cmd2.ExecuteNonQuery();
        con.baglanti().Close();
    }
}