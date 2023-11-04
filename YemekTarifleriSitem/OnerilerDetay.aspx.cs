using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class OnerilerDetay : System.Web.UI.Page
{
    sqlsinif baglan = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        if (Page.IsPostBack == false)
        {
            // Tarif Listeleme
            SqlCommand cmd = new SqlCommand("select * from Tbl_Tarifler where Tarifid = @p1", baglan.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr["TarifSahip"].ToString();
                TextBox2.Text = dr["TarifSahipMail"].ToString();
                TextBox3.Text = dr["TarifAd"].ToString();
                TextBox4.Text = dr["TarifMalzeme"].ToString();
                TextBox5.Text = dr["TarifYapilis"].ToString();
            }

            // Kategori Listeleme
            SqlCommand cmd2 = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DropDownList1.DataTextField = "Kategoriad";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
               
            baglan.baglanti().Close();
        }
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", baglan.baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", baglan.baglanti());
        cmd2.Parameters.AddWithValue("@p1", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@p2", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@p3", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();

        // Kateogri Sayısı Arttırma
        SqlCommand cmd3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet + 1 where Kategoriid=@p1", baglan.baglanti());
        cmd3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        cmd3.ExecuteNonQuery();

    }
}