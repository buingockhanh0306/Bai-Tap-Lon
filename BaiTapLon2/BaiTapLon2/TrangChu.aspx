<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BaiTapLon2.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 58px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" BorderColor="White" DataSourceID="SqlDataSource1" PageSize="3">
        <Columns>
            <asp:TemplateField HeaderText="Danh mục sách:" SortExpression="Hinh_minh_hoa">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_minh_hoa") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style7" rowspan="2">
                                <asp:Image ID="Image1" runat="server" Height="122px" ImageUrl='<%# "~/image/Upload/"+Eval("Hinh_minh_hoa") + ".jpg" %>' Width="93px" />
                            </td>
                            <td>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" ForeColor="#0000CC" Text='<%# Bind("Ten_sach") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp; Đơn giá:
                                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text='<%# Bind("Don_gia") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/image/nut_chonmua.gif" Width="84px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <HeaderStyle Font-Bold="True" Font-Overline="False" Font-Size="20px" Height="60px" HorizontalAlign="Left" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString4 %>" SelectCommand="select  Hinh_minh_hoa, Ten_sach, Don_gia from SACH"></asp:SqlDataSource>
</asp:Content>
