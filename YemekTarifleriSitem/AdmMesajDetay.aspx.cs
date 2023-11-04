using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdmMesajDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"];
        SqlCommand cmd = new SqlCommand("select * from Mesajlar where Mesajid=@p1", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr["MesajGonderen"].ToString();
            TextBox2.Text = dr["MesajMail"].ToString();
            TextBox3.Text = dr["MesajBaslik"].ToString();
            TextBox4.Text = dr["Mesajicerik"].ToString();
            Label1.Text = dr["MesajTarihi"].ToString();
        }
        bgl.baglanti().Close();
    }
}