<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmYorumlar.aspx.cs" Inherits="AdmYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 133px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 176px;
        }
        .auto-style10 {
            width: 76px;
        }
        .auto-style13 {
            font-size: 18px;
            width: 225px;
        }
        .auto-style14 {
            font-size: 18px;
            width: 226px;
        }
        .newStyle1 {
            font-family: "century gothic";
        }
        .newStyle2 {
            font-family: "century gothic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style13">
                    <strong class="newStyle2">Onaylı Yorumlar</strong></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Font-Bold="True" Height="38px" Text="+" Width="48px" OnClick="Button1_Click" Font-Size="16px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="-" Width="48px" OnClick="Button2_Click" Font-Size="16px" />
                </td>
            </tr>
        </table>
    </div>
     <asp:Panel ID="Panel1" runat="server">
         <div class="auto-style7">
             <asp:DataList ID="DataList1" runat="server" Width="359px">
                 <ItemTemplate>
                     <table class="auto-style3">
                         <tr>
                             <td class="auto-style9">
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                             </td>
                             <td class="auto-style8"><a href='AdmYemekler.aspx?Yemekid=<%# Eval("Yemekid")  %>&amp;islem=sil'>
                                 <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" />
                                 </a></td>
                             <td class="auto-style8"><a href='AdmYemekDetay.aspx?Yemekid=<%# Eval("Yemekid")  %>'>
                                 <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" />
                                 </a></td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </div>
</asp:Panel>
    <br />
     <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style14">
                    <strong class="newStyle1">Onaylanmayan Yorumlar</strong></td>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Font-Bold="True" Height="38px" Text="+" Width="48px" 
                        Font-Size="16px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="-" Width="48px"  Font-Size="16px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </div>
     <asp:Panel ID="Panel2" runat="server">
         <div class="auto-style7">
             <asp:DataList ID="DataList2" runat="server" Width="363px">
                 <ItemTemplate>
                     <table class="auto-style3">
                         <tr>
                             <td class="auto-style9">
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                             </td>
                             <td class="auto-style8"><a href='AdmYemekler.aspx?Yemekid=<%# Eval("Yemekid")  %>&amp;islem=sil'>
                                 <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" />
                                 </a></td>
                             <td class="auto-style8"><a href='AdmOnaylanmayanYorumlar.aspx?Yorumid=<%# Eval("Yorumid")  %>'>
                                 <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" />
                                 </a></td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </div>
</asp:Panel>
</asp:Content>

