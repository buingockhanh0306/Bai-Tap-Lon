<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChuDeSach.ascx.cs" Inherits="BaiTapLon2.UserConTrol.ChuDeSach" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66CCFF" BorderColor="#66CCFF" DataSourceID="SqlDataSource1" Width="200px" Height="266px">
    <Columns>
        <asp:TemplateField HeaderText="Chủ đề sách" SortExpression="Ten_chu_de">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ten_chu_de") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/icon_list.jpg" %>' />
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ten_chu_de") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle BackColor="#339933" Height="30px" Width="170px" />
            <ItemStyle ForeColor="Blue" Width="170px" Height="25px" />
        </asp:TemplateField>
    </Columns>
    <HeaderStyle Width="170px" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString %>" SelectCommand="Select CD.Mcd, CD.Ten_chu_de + '  (' + ltrim(str(count(S.Mcd)))+')' Ten_chu_de
from CHU_DE CD
left join SACH S on S.Mcd = CD.Mcd
group by CD.Mcd, CD.Ten_chu_de;" InsertCommand="Select CD.Mcd, CD.Ten_chu_de + '(' + ltrim(str(count(S.Mcd)))+')' Ten_chu_de
from CHU_DE CD
left join SACH S on S.Mcd = CD.Mcd
group by CD.Mcd, CD.Ten_chu_de;"></asp:SqlDataSource>

