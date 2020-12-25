<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCao2.ascx.cs" Inherits="BaiTapLon2.UserConTrol.QuangCao2" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataSourceID="SqlDataSource1" ShowHeader="False" DataKeyNames="STT" Width="150px">
    <Columns>
        <asp:TemplateField HeaderText="Hinh_Minh_Hoa" SortExpression="Hinh_Minh_Hoa">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh_Minh_Hoa") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# "~/image/Upload/"+Eval("Hinh_Minh_Hoa") %>' NavigateUrl='<%# Eval("HREF") %>'>HyperLink</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString1 %>" SelectCommand="SELECT * FROM [QUANG_CAO]"></asp:SqlDataSource>

