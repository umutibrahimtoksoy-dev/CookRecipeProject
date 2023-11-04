using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmYemekDetay : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {
            // Kategori Listeleme
            SqlCommand cmd2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DropDownList1.DataTextField = "Kategoriad";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();


            //Yemek Listeleme
            SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@Yemekid", bgl.baglanti());
            cmd.Parameters.AddWithValue("@Yemekid", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr["YemekAd"].ToString();
                TextBox2.Text = dr["YemekMalzeme"].ToString();
                TextBox3.Text = dr["YemekTarif"].ToString();
                DropDownList1.SelectedValue = dr["Kategoriid"].ToString();
            }


            bgl.baglanti().Close();
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));

        SqlCommand cmd = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@p6", "~/img/" + FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@p5", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }



    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}