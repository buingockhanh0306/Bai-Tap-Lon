<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="main.ascx.cs" Inherits="BaiTapLon2.UserConTrol.main" %>
<style type="text/css">
    .auto-style1 {
        width: 58px;
    }
</style>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowHeader="False">
    <Columns>
        <asp:TemplateField HeaderText="Hinh_minh_hoa" SortExpression="Hinh_minh_hoa">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_minh_hoa") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1" rowspan="3">
                            <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl='<%# "~/image/Upload/" +Eval("Hinh_Minh_Hoa") + ".jpg" %>' Width="124px" />
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Ten_sach") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Don_gia") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString4 %>" SelectCommand="SELECT [Hinh_minh_hoa], [Don_gia], [Ten_sach] FROM [SACH]"></asp:SqlDataSource>

