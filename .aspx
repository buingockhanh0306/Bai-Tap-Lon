<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind=".aspx.cs" Inherits="BaiTapLon2.SachMoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" BorderColor="White" DataSourceID="SqlDataSource1" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="Sách mới:" SortExpression="Hinh_minh_hoa">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_minh_hoa") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <table style="vertical-align: top;">
                        <tr>
                            <td class="auto-style10" rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl='<%# "~/image/Upload/"+Eval("Hinh_minh_hoa")+".jpg" %>' Width="101px" />
                            </td>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text='<%# Eval("Ten_sach") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Nhà xuất bản:
                                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text='<%# Eval("Ten_nha_xuat_ban") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Đơn giá:<asp:Label ID="Label4" runat="server" ForeColor="#FF3300" Text='<%# Eval("Don_gia") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/image/nut_chonmua.gif" Width="82px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <FooterStyle VerticalAlign="Top" />
                <HeaderStyle Font-Bold="True" Font-Overline="False" Font-Size="20px" Height="60px" HorizontalAlign="Left" VerticalAlign="Top" />
                <ItemStyle VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="select S.Ms, S.Ten_sach, S.Mo_ta, S.Don_gia, S.Hinh_minh_hoa, TG.tac_gia, NXB.Ten_nha_xuat_ban 
from Sach S inner join
	(Select TG.Ms, STRING_AGG(TG.tacGia, ', ') tac_gia 
	from	(Select THG.Ms, TG.Ten_tac_gia + ' (' + THG.Vai_tro + ')' tacGia 
			from THAM_GIA THG inner join TAC_GIA TG on TG.Mtg=THG.Mtg) TG
	GROUP BY TG.Ms) TG on S.Ms=TG.Ms
	inner join NHA_XUAT_BAN NXB on S.Mnxb=NXB.Mnxb
where S.Ms=@Ms
">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="2" Name="Ms" QueryStringField="Ms" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
