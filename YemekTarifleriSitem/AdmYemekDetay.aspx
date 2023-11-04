<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmYemekDetay.aspx.cs" Inherits="AdmYemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        <strong>Yemek Düzenleme</strong><table class="auto-style3">
            <tr>
                <td class="auto-style7"></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style7">Yemek Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Kategorisi:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
                    <div style="float:left;" class="auto-style5"> <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Century Gothic" Font-Size="16px" Height="50px" OnClick="Button1_Click" Text="Güncelle" Width="100px" /></div>
                   
                        <div style="float: right; padding-right: 30px;" class="auto-style6">
                            <asp:Button ID="Button7" runat="server" Text="Geri" Font-Bold="True" Font-Names="Century Gothic" Font-Size="16px" Height="50px" Width="100px" PostBackUrl="~/AdmYemekler.aspx"   />
                        </div>                    
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

