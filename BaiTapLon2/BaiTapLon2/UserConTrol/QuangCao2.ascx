<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCao2.ascx.cs" Inherits="BaiTapLon2.UserConTrol.QuangCao2" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataSourceID="SqlDataSource1" ShowHeader="False">
    <Columns>
        <asp:TemplateField HeaderText="Hinh_Minh_Hoa" SortExpression="Hinh_Minh_Hoa">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_Minh_Hoa") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/Upload/"+Eval("Hinh_minh_hoa") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString4 %>" SelectCommand="SELECT [Hinh_Minh_Hoa] FROM [QUANG_CAO]"></asp:SqlDataSource>

