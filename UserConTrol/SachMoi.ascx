<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SachMoi.ascx.cs" Inherits="BaiTapLon2.UserConTrol.SachMoi" %>
<asp:Image ID="Image1" runat="server" ImageUrl="~/image/tittle_sachmoi.gif" />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderColor="White" BorderStyle="None" DataKeyNames="Ms" DataSourceID="SqlDataSource1" ShowHeader="False">
        <Columns>
            <asp:TemplateField HeaderText="Ten_sach" SortExpression="Ten_sach">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ten_sach") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/image/muitendo.gif" %>' />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Pages/ChiTietSach.aspx?Ms=" + Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanSachConnectionString1 %>" SelectCommand="select top (5) Ten_sach, Ms
from dbo.SACH
order by [Ngay_cap_nhat] desc"></asp:SqlDataSource>



