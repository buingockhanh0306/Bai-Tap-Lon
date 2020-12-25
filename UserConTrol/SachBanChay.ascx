<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SachBanChay.ascx.cs" Inherits="BaiTapLon2.UserConTrol.SachBanChay" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="White" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField HeaderText="Danh sách sách bán chạy:" SortExpression="Ten_sach">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/muitendo.gif" %>' />
                <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" NavigateUrl='<%# "~/Pages/ChiTietSach.aspx?Ms="+Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
            </ItemTemplate>
            <HeaderStyle VerticalAlign="Top" />
            <ItemStyle VerticalAlign="Top" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString1 %>" SelectCommand="select top(5) s.Ten_sach, dh.Sdh, s.Ms
from SACH as s inner join CT_DAT_HANG as dh
on s.Ms=dh.Ms
order by [Sdh] desc"></asp:SqlDataSource>


