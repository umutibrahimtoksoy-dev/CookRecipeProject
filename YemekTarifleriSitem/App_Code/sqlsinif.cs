using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for sqlsinif
/// </summary>
public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8U8104Q; Initial Catalog=YemekTarifi; Integrated Security=True; Persist Security Info=False");
        con.Open();
        return con;
    }
}

