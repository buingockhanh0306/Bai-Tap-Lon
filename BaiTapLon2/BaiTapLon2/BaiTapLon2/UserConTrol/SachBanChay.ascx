<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SachBanChay.ascx.cs" Inherits="BaiTapLon2.UserConTrol.SachBanChay" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="White" ShowHeaderWhenEmpty="True">
    <Columns>
        <asp:TemplateField HeaderText="Danh sách sách bán chạy:">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/muitendo.gif" %>' />
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#1EB884" Height="30px" />
            <ItemStyle ForeColor="Blue" Height="20px" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>

