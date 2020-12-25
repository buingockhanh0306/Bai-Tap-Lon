<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Defaut.aspx.cs" Inherits="BaiTapLon2.Pages.Defaut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 139%;
            height: 78px;
        }
        .auto-style9 {
            width: 113px;
        }
        .auto-style11 {
            width: 91%;
        }
        .auto-style13 {
            text-align: justify;
        }
    .auto-style14 {
        text-decoration: underline;
        color: #0000FF;
    }
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="White" DataKeyNames="Ms" DataSourceID="SqlDataSource1" PageSize="3">
        <Columns>
            <asp:TemplateField HeaderText="Danh mục sách: " SortExpression="Hinh_minh_hoa">
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
                            <td class="auto-style13" style="vertical-align: top" colspan="2">
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" NavigateUrl='<%# "~/Pages/ChiTietSach.aspx?Ms="+Eval("Ms") %>'>Nhấn để xem chi tiết sách</asp:HyperLink>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
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
