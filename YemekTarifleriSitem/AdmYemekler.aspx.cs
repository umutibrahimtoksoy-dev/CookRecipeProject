using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmYemekler : System.Web.UI.Page
{

    sqlsinif con = new sqlsinif();
    string id,islem;  
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", con.baglanti());

        if (Page.IsPostBack == false)
        {
            //silme işlemi için ve günün yemeği yapmak için
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];  
            

            // kategori listesi
            SqlDataReader dr2 = komut.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        Panel2.Visible = false;
        Panel1.Visible = false;
        // Yemek listesi
        SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler", con.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
       
        if (islem == "sil")
        {
            string kid = "";
            SqlCommand cmd6 = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p", con.baglanti());
            cmd6.Parameters.AddWithValue("@p", id);
            SqlDataReader drx = cmd6.ExecuteReader();
            while (drx.Read())
            {
                kid = drx["Kategoriid"].ToString();
                SqlCommand cmd4 = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@Yemekid", con.baglanti());
                cmd4.Parameters.AddWithValue("@Yemekid", id);
                cmd4.ExecuteNonQuery();
                SqlCommand cmd5 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet - 1 where Kategoriid=@Kategoriid", con.baglanti());
                cmd5.Parameters.AddWithValue("@Kategoriid", kid);
                cmd5.ExecuteNonQuery();
            }           
        }
        else if(islem =="asdf")
        {
            SqlCommand cmd7 = new SqlCommand("update Tbl_Yemekler set Durumid=0",con.baglanti());
            cmd7.ExecuteNonQuery();
            SqlCommand cmd8 = new SqlCommand("update Tbl_Yemekler set Durumid=1 where Yemekid=@p1", con.baglanti());
            cmd8.Parameters.AddWithValue("@p1", id);
            cmd8.ExecuteNonQuery();         
        }


        con.baglanti().Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", con.baglanti());
        cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet + 1 where Kategoriid=@p1", con.baglanti());
        cmd3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        cmd3.ExecuteNonQuery();
        con.baglanti().Close();

    }


    
}