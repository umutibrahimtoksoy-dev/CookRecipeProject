using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    sqlsinif bgl = new sqlsinif();
    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
        cmd.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
        cmd.Parameters.AddWithValue("@p3", TxtYapilis.Text);
        cmd.Parameters.AddWithValue("@p4", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@p5", TxtTarifOneren.Text);
        cmd.Parameters.AddWithValue("@p6", TxtMailAdresi.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
        TxtTarifAd.Text = "işlem tamam :)";

    }
}