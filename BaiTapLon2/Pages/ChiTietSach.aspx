<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="BaiTapLon2.Pages.ChiTietSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        color: #0000FF;
    }
        .auto-style5 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString1 %>" SelectCommand="select S.Ms, S.Ten_sach, S.Mo_ta, S.Don_gia, S.Hinh_minh_hoa, TG.tac_gia, NXB.Ten_nha_xuat_ban 
from Sach S inner join
	(Select TG.Ms, STRING_AGG(TG.tacGia, ', ') tac_gia 
	from	(Select THG.Ms, TG.Ten_tac_gia + ' (' + THG.Vai_tro + ')' tacGia 
			from THAM_GIA THG inner join TAC_GIA TG on TG.Mtg=THG.Mtg) TG
	GROUP BY TG.Ms) TG on S.Ms=TG.Ms
	inner join NHA_XUAT_BAN NXB on S.Mnxb=NXB.Mnxb
where S.Ms=@Ms">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="2" Name="Ms" QueryStringField="Ms" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="White" DataKeyNames="Ms" DataSourceID="SqlDataSource1" PageSize="3">
        <Columns>
            <asp:TemplateField HeaderText="Chi tiết sách:" SortExpression="Hinh_minh_hoa">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_minh_hoa") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style9" rowspan="5">
                                <asp:Image ID="Image2" runat="server" Height="130px" ImageUrl='<%# "~/image/Upload/" + Eval("Hinh_minh_hoa") +".jpg" %>' />
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text='<%# Eval("Ten_sach") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Tác giả:&nbsp;
                                <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text='<%# Eval("tac_gia") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Nhà xuất bản:&nbsp;
                                <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text='<%# Eval("Ten_nha_xuat_ban") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Đơn giá:&nbsp;
                                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text='<%# Eval("Don_gia") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/image/nut_chonmua.gif" Width="86px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13" style="vertical-align: top">
                                <span class="auto-style4"><strong>Chi tiết sách:</strong></span><br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style5" style="vertical-align: top">
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Mo_ta") %>' Width="660px"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <HeaderStyle Font-Size="20px" Height="50px" HorizontalAlign="Left" VerticalAlign="Top" />
                <ItemStyle Height="100px" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

