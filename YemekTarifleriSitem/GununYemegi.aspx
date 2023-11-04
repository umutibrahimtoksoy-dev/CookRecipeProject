<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle2 {
            font-family: arial, Helvetica, sans-serif;
        }
        .newStyle3 {
            font-family: arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <p class="newStyle1">
                <strong>Günün Yemeği</strong></p>
            <p class="newStyle1">
                <strong>Adı:</strong>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
            </p>
            <p class="newStyle1">
                <strong>Malzemeler:</strong>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
            </p>
            <p class="newStyle1">
                <strong>Tarifi:</strong>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
            </p>
            <p>
                <asp:Image ID="Image1" runat="server" Height="154px" Width="382px" ImageUrl='<%# Eval("YemekResim") %>' />
            </p>
            <span class="newStyle3">
            <br />
            <strong>Puan:</strong></span>
            <asp:Label ID="Label6" runat="server" CssClass="newStyle2" Text='<%# Eval("YemekPuan") %>'></asp:Label>
            <span class="newStyle3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Tarih</strong>: </span>
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

