<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Hakkımızda<asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <div style="text-align: left">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    <div style="text-align: left">
                        <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl="~/img/comlek.jpg" Width="375px" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

