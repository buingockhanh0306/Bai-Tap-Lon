<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Defaut.aspx.cs" Inherits="BaiTapLon2.Pages.Defaut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString1 %>" SelectCommand="select S.Ms, S.Ten_sach, S.Mo_ta, S.Don_gia, S.Hinh_minh_hoa, TG.tac_gia, NXB.Ten_nha_xuat_ban 
from Sach S inner join
	(Select TG.Ms, STRING_AGG(TG.tacGia, ', ') tac_gia 
	from	(Select THG.Ms, TG.Ten_tac_gia + ' (' + THG.Vai_tro + ')' tacGia 
			from THAM_GIA THG inner join TAC_GIA TG on TG.Mtg=THG.Mtg) TG
	GROUP BY TG.Ms) TG on S.Ms=TG.Ms
	inner join NHA_XUAT_BAN NXB on S.Mnxb=NXB.Mnxb
where S.Mcd=@Mcd">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="Mcd" QueryStringField="Mcd" />
        </SelectParameters>
    </asp:SqlDataSource>
    <span class="auto-style15"><strong style="vertical-align: top">Tên chủ đề:</strong></span>
    <asp:Label ID="lbPage" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Blue"></asp:Label>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:Label>
            <asp:Button ID="Button1" runat="server" CommandName="chonmua" OnClick="Button1_Click" Text="Button" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
